# Utility Functions for python 

```
pip install chitti
```

## Pretty print
```
from chitti import pprint, pprint_nl
brands = ['apple', 'samsung', 'pixel', 'one plus']

pprint(brands)
OUT:
apple
samsung
pixel
one plus

pprint_nl(brands)
OUT:
apple

samsung

pixel

one plus
```

## Color Words in text
```
from chitti import color_words_in_text
text = 'camera is awesome and battery is good'
words = ['camera', 'battery']
color_words_in_text(text, words, color='green', text_color='white')
```

## Train and Validation split

Splits dataframe into train and val dataframes  
Split each category into 80% train and  20% val 

``` 
from chitti.train_test_split import train_val_split

path = 'data.csv'
df = pd.read_csv(path)

text_col='Article_clean'
target_col='NewsType'
train_df, val_df = train_val_split(df, text_col=text_col, target_col=target_col, size=0.8)

print(train_df[target_col].value_counts())
print(val_df[target_col].value_counts())

```

## Download pretrained word vectors 

Supported Vectors:
- GloVe.6B.50d 
- GloVe.6B.100d 
- GloVe.6B.200d 
- GloVe.6B.300d 
- GloVe.42B.300d 
- GloVe.840B.300d 
- GloVe.Twitter.25d 
- GloVe.Twitter.50d 
- GloVe.Twitter.100d
- GloVe.Twitter.200d

This will download specified vector and creates two files
- word_index.pkl => word2index dictionary
- embedding_matrix.npy => Numpy matrix of size (vocab_size, embedding_size)

``` 
from chitti.nlp import download_pretrained_vectors, download_pretrained_vectors_
download_pretrained_vectors('GloVe.6B.50d')
download_pretrained_vectors_('glove.6B.50d.txt')
```

## Text cleaning Utils
``` 
from chitti.nlp import stem_words, lemmatize_words
from chitti.nlp import remove_punctuation, remove_stopwords, space_punctuation

text = 'i, love. you    ..... ,,, !!! ?? ?> >> '
print(remove_punctuation(text))
OUT:
'i love you'
```




