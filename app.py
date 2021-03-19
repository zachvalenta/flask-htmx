import os

from flask import Flask, render_template

app = Flask(__name__, template_folder=os.path.abspath(os.path.dirname(__file__)))


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/page2")
def page2():
    return render_template("page2.html")


@app.route("/new-content")
def new_content():
    return render_template("new-content.html")


@app.route("/hc")
def hc():
    return "hello from healthcheck"
