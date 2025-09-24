from flask import Flask, jsonify, request
import os

app = Flask(__name__)

@app.route("/", methods=["GET"])
def hello():
    return jsonify({"message": "Hello from Montreal-Python!"})

@app.route("/echo", methods=["POST"])
def echo():
    data = request.get_json(silent=True) or {}
    return jsonify({"you_sent": data})

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8080))
    app.run(host="0.0.0.0", port=port)