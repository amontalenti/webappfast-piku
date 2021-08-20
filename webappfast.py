from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

@app.route("/test")
def hello_test():
    return "<p>Hello, test2!</p>"

# example docs
if __name__ == "__main__":
    app.run(debug=True)
