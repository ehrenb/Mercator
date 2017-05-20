from flask import render_template

from Mercator import app

@app.route('/')
def index():
    return render_template('index.html')