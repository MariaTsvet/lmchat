from flask import request, jsonify
from .chatbot import Chatbot
from . import create_app

app = create_app()
chatbot = Chatbot(api_key='your_openai_api_key')

@app.route('/chat', methods=['POST'])
def chat():
    user_input = request.json.get('message')
    response = chatbot.get_response(user_input)
    return jsonify({'response': response})
