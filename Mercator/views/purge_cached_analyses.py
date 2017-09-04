from flask import jsonify

from Mercator import app, cached_analyses
@app.route('/purge_cached_analyses', methods=['GET'])
def purge_cached_analyses():
    app.logger.info('purging cached_analyses')
    cached_analyses.clear()
    return jsonify({'msg': cached_analyses})
