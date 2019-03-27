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
   shorter_words = dictionary
   words = tweet.split(" ")
   
   words.collect do |word|
     dictionary.collect do |key, value|
       if word == key 
         word.replace(value)
       end
     end 
   end 
   words.join(" ")
 end 
 
 def bulk_tweet_shortener(tweet)
  tweet.map do |thing|
    puts word_substituter(thing)
  end
end 
   
def selective_tweet_shortener(tweet)
  if tweet.length >= 140 
    tweet.map do |thing|
    puts word_substituter(thing)
  end
end 
    
  