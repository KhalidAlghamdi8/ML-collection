from urllib import response
from flask import Flask, request, jsonify
import util


app = Flask(__name__)


@app.route('/get_location_names')
def get_location_names():  # put application's code here

    response = jsonify({
        'location': util.get_location_names()
    })
    response.headers.add('Access-Control-Allow-Origin', '*')
    return response


if __name__ == '__main__':
    print('Flask for Home Price Prediction')
    app.run()
