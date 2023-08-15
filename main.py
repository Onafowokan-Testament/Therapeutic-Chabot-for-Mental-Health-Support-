# Import statements
import tensorflow as tf
import warnings
from nltk.tokenize import word_tokenize
from nltk.stem import PorterStemmer
from spellchecker import SpellChecker
import numpy as np
import streamlit as st
import random
import collections.abc
import json
import random
import time


# Ignore warnings
warnings.filterwarnings("ignore", category=DeprecationWarning)
warnings.filterwarnings("ignore", category=FutureWarning)
warnings.filterwarnings("ignore", message="Model was constructed with shape (None, None, 47, 121) for input KerasTensor.*")

# Functions

def tokenize(question):
    return word_tokenize(question)

def stem_word(word, stemmer=PorterStemmer()):
    return stemmer.stem(word)

def data():
    with open("tags.json", "r") as file:
        tags = json.load(file)
    with open("all_words.json", "r") as file:
        all_words = json.load(file)

    with open("dic_words.json", "r") as file:
        dic_of_words = json.load(file)
    return tags, all_words, dic_of_words

def bag_of_words(vocab, tok_sentence):
    bag = np.zeros(len(vocab), dtype=np.float32)
    for ind, word in enumerate(vocab):
        if word in tok_sentence:
            bag[ind] = 1.0
    return bag

def predict(input, tags):
    try:
        model = tf.keras.models.load_model("model2")
        prediction = tags[np.argmax(model.predict(input))]
        max_prob = max(model.predict(input)[0])
        return prediction, max_prob
    except Exception as e:
        print("I am medibot, I can solve all problem 😁😁")
        return [None, None]



def get_answer(prediction):
    try:
        with open("intents.json", "r") as data:
            intents = json.load(data)
            for tg in intents["intents"]:
                if tg['tag'] == prediction:
                    choice = " "
                    choice = random.choice(tg["responses"])
                    break
            return choice
    except Exception as e:
        print("An error occurred while getting the answer:", e)
        

def auto_correct_sentence(sentence):
    corrected_tokens = [spell.correction(token) for token in sentence]
    cor_ques = auto_correct_sentence(corrected_tokens)
    return corrected_tokens

def process_question(question, vocab):
    try:
        tok_ques = tokenize(question)
        stemmed_words = [stem_word(s) for s in tok_ques if s not in [',', '.', '!', '?', ',']]
        word_bag = np.array([1.0 if word in stemmed_words else 0.0 for word in vocab], dtype=np.float32)
        word_bag = np.expand_dims(word_bag, axis=0)
        return word_bag
    except Exception as e:
        print("An error occurred while processing the question:", e)

# Main program
tags, vocab, dic_of_word = data()

spell = SpellChecker()
spell.word_frequency.load_words(dic_of_word)
def main():


    st.title("I am medibot, I can solve all problem 😁😁")

    if "messages" not in st.session_state:
        st.session_state.messages = []

    for message in st.session_state.messages:
        with st.chat_message(message["role"]):
            st.markdown(message["content"])

    if prompt := st.chat_input("Enter something..."):
        st.chat_message("user").markdown(prompt)
        st.session_state.messages.append({"role": "user", "content": prompt})

        prd, max_prob = predict(process_question(prompt, vocab), tags)
        answer = get_answer(prd)
        response = answer

        with st.chat_message("assistant"):
            full_response = ""
            message_placeholder = st.empty()
            for chunk in response:
                full_response += chunk + ""
                time.sleep(0.05)
                message_placeholder.markdown(full_response + "▌")
            message_placeholder.markdown(full_response)




        st.session_state.messages.append({"role": "assistant", "content": response})

if __name__ == "__main__":
    main()