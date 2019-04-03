#given hash

 person = {name: 'John', height: '2m', weight: '70kgs'}

#Add to the hash: John's occupation (web developer) and hobbies (art).

 person [:occupation] = "Web Developer"
 person [:hobbies] = "Art"
     

#Delete John's weight from the hash

 person.delete(:weight)

#Retrieve John's height from the hash

person[:height]
#Iterate through the hash so we see John's details.

person.each do |key, value|
    puts "key: #{key}, value: #{value}"
end 