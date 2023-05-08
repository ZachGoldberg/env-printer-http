from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route('/', methods=['GET'])
def get_environment_variables():
    env_vars = dict(os.environ)
    return jsonify(env_vars)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
