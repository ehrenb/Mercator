import hashlib
import os
import shutil

from flask import render_template, request, redirect, url_for

from Mercator import app, ALLOWED_EXTENSIONS, secure_filename, analysis_dir

def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

@app.route('/upload', methods=['POST', 'GET'])
def upload():
    if request.method == 'GET':
        return render_template('upload.html')

    # check if the post request has the file part
    if 'file' not in request.files:
        error = 'No file part'
        app.logger.error(error)
        return render_template('error.html',error=error)
    file = request.files['file']
    # if user does not select file, browser also
    # submit a empty part without filename
    if file.filename == '':
        error = 'No selected file'
        app.logger.error(error)
        return render_template('error.html',error=error)

    if not allowed_file(file.filename):
        error = 'Filetype not allowed'
        app.logger.error(error)
        return render_template('error.html',error=error)


        #return render_template('error.html',error=error)

    if file and allowed_file(file.filename):
        orig_fp = os.path.join(app.config['UPLOAD_FOLDER'], file.filename)
        file.save(orig_fp)
        md5 = hashlib.md5(open(orig_fp,'rb').read()).hexdigest()

        md5_analysis_dir = os.path.join(analysis_dir, md5)

        if not os.path.isdir(md5_analysis_dir):
            os.makedirs(md5_analysis_dir)

        shutil.move(orig_fp, os.path.join(md5_analysis_dir,md5)+'.apk')
        return redirect(url_for('begin_analysis',md5=md5))