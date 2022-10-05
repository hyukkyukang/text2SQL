import re
import nltk
import string

try:
    STOPWORDS = set(nltk.corpus.stopwords.words('english'))
except:
    nltk.download("stopwords")
    nltk.download('punkt')
    STOPWORDS = set(nltk.corpus.stopwords.words('english'))
PUNKS = set(a for a in string.punctuation)

BOOLEAN_STRINGS = ["true", "false", "yes", "no", "1", "0"]

def multi_space_to_single_space(string):
    return re.sub(' +', ' ', string)

def is_int(string):
    try:
        int(string)
        return True
    except ValueError:
        return False
    
def is_number(string):
    try:
        float(string)
        return True
    except ValueError:
        return False