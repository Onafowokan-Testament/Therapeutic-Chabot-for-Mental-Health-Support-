

# Therabot 🤖 - Your Mental Health Buddy

Therabot is a conversational AI designed to provide mental health support and companionship. Built using TensorFlow, NLTK, and Streamlit, Therabot can engage in meaningful conversations, provide advice, and offer support for various mental health concerns.



---

## Features

- **Conversational AI**: Engage in natural language conversations with Therabot.
- **Mental Health Support**: Provides responses to common mental health concerns such as stress, anxiety, depression, and loneliness.
- **Customizable Responses**: Responses are generated based on a predefined set of intents and patterns.
- **Streamlit Interface**: A user-friendly web interface for interacting with Therabot.
- **NLTK Preprocessing**: Uses NLTK for tokenization and stemming to process user input.

---

## Installation

To run Therabot locally, follow these steps:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/therabot.git
   cd therabot
   ```

2. **Set up a virtual environment** (optional but recommended):
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

4. **Download NLTK data**:
   ```python
   python -c "import nltk; nltk.download('punkt')"
   ```

5. **Run the Streamlit app**:
   ```bash
   streamlit run app.py
   ```

6. **Access the app**:
   Open your browser and navigate to `http://localhost:8501`.

---

## Usage

1. **Start a conversation**:
   - Type your message in the input box and press Enter.
   - Therabot will respond based on the context of your input.

2. **Example inputs**:
   - "I feel stressed about my exams."
   - "Can you help me with my anxiety?"
   - "I'm feeling lonely."

3. **Responses**:
   - Therabot will provide supportive responses, advice, or redirect you to helpful resources.

---

## File Structure

```
therabot/
├── app.py                # Main Streamlit application
├── model2.pkl            # Pre-trained TensorFlow model
├── intents.json          # JSON file containing intents and responses
├── tags.json             # JSON file containing tags
├── all_words.json        # JSON file containing all words for bag-of-words
├── dic_words.json        # JSON file containing dictionary of words
├── requirements.txt      # List of dependencies
└── README.md             # Project documentation
```

---

## Dependencies

- Python 3.8+
- TensorFlow
- Streamlit
- NLTK
- NumPy

---

## Contributing

Contributions are welcome! If you'd like to contribute to Therabot, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bugfix.
3. Commit your changes.
4. Submit a pull request.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

- [TensorFlow](https://www.tensorflow.org/) for providing the machine learning framework.
- [NLTK](https://www.nltk.org/) for natural language processing tools.
- [Streamlit](https://streamlit.io/) for the web interface.

---

## Contact

For questions or feedback, feel free to reach out:

- Onafowokan Testament
- **Email**: adebolaonafowokan@gmail.com


---

Let Therabot be your mental health companion! 😊🤖

