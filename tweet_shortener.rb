# Write your code here.

def word_substituter(tweet)
  dictionary = {
  	"hello" => "hi",
  	"to" => "2",
  	"two" => "2",
  	"too" => "2",
  	"be" => "b",
  	"you" => "u",
  	"at" => "@",
  	"and" => "&",
  	"for" => "4",
  	"four" => "4"
  };
  tweet.split(' ').collect do |word|
    if dictionary.has_key?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |words|
    short = word_substituter(words)
    puts "#{short}"
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
  tweet = selective_tweet_shortener(tweet)
  if tweet.length>140
    tweet[0...140]
  else
    tweet
  end
end
