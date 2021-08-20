from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

@app.route("/test1")
def hello_test1():
    return "<p>Hello, test1!</p>"

@app.route("/test2")
def hello_test2():
    return "<p>Hello, test2!</p>"

# example docs
if __name__ == "__main__":
    app.run(debug=True)
