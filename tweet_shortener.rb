# Write your code here.


def word_substituter(tweet)
  tweet_words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

  words = tweet.split(" ")

  new_words = words.map { |word| tweet_words[word.downcase].nil? ? word : tweet_words[word.downcase]}

  new_words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end

end

def selective_tweet_shortener(tweets)

  tweets.split("").length > 140 ? word_substituter(tweets) : tweets

end

def shortened_tweet_truncator(tweet)
  revised_tweet = word_substituter(tweet)

  revised_tweet.split("").length > 140 ? revised_tweet.slice(0, 137) + "..." : tweet

end
