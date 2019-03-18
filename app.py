# app.py - a minimal flask api using flask_restful
from flask import Flask
app = Flask(__name__)
 
@app.route("/")
def hello():
	return "Hello World!"
 
if __name__ == "__main__":
	app.run()