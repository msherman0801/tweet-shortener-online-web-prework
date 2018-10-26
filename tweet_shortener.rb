# Write your code here.
def dictionary
  words = {
    "hello" => "hi",
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    "be" => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  out = tweet.split(' ')
  keys = dictionary.keys
  out.each do |i|
    keys.each do |a|
      if i == a
        out[out.index(i)] = dictionary[a]
      end
    end
  end
  outt = out.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |i|
    puts word_substituter(i)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  elsif word_substituter(tweet).length < 130
    tweet
  end
end

def shortended_tweet_truncator
end
  