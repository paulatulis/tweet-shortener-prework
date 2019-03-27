def dictionary
  shorter_words = {
 "hello" => "hi",
 "to"=>"2",
 "two"=>"2",
 "too"=>"2",
 "for" => "4",
  "four"=> "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and"=> "&"
  }
end

#tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

 def word_substituter(tweet)
 dictionary.keys = sub_words
 new_tweet = []
 tweet_array = tweet.split(" ")
 tweet_array.collect do |word|
 sub_words.include?(word) ? new_tweet << dictionary[word] : new_tweet << word
 end
 new_tweet.join(" ")
end
 