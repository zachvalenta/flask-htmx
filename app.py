import os

from flask import Flask, render_template

app = Flask(__name__, template_folder=os.path.abspath(os.path.dirname(__file__)))


@app.route("/")
def index():
    return render_template('index.html')


@app.route("/hc")
def hc():
    return "hello from healthcheck"
