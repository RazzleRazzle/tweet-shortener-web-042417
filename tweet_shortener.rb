# Write your code here.
require 'pry'
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    'at' => '@',
    'and' => '&'
  }
end

def word_substituter(tweet)
  dictionary_keys = dictionary.keys
  split_tweet = tweet.split
  new_tweet = []

  split_tweet.each do |word|
    if dictionary_keys.include?(word)
      trueword = dictionary[word]
      new_tweet.push(trueword)
    else
      new_tweet.push(word)
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  post_short = selective_tweet_shortener(tweet)
  if post_short.length > 140
    return post_short[0, 140]
  else
    post_short
  end
end
