from flask import Flask, render_template
app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/greet/",methods=["GET"])
def greet():
    return render_template("greet.html")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=9595, debug=True)
