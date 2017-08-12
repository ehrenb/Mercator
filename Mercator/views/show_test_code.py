from flask import render_template

from Mercator import app


@app.route('/show_test_code')
def show_test_code():
    return render_template('test_code_view.html')