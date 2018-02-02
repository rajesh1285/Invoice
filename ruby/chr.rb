# File.open("c.text").each { |line| puts line }


# line_count = 0
# File.open("c.text").each { |line| line_count += 1 }
# puts line_count

# ext=''
# line_count = 0
# File.open("c.text").each do |line|
#   line_count += 1
#   ext << line
# end
# puts "#{line_count} lines"



# lines = File.readlines("c.text")
#  line_count = lines.size
#  text = lines.join
#  puts "#{line_count} lines"


# total_characters = text.length
# puts "#{total_characters} characters"


# total_characters_nospaces = text.gsub(/\s+/, '').length
# puts "#{total_characters_nospaces} characters excluding spaces"

# word_count = text.split.length
# puts "#{word_count} words"


# paragraph_count = text.split(/\n\n/).length
# puts "#{paragraph_count} paragraphs"


# sentence_count = text.split(/\.|\?|!/).length
# puts "#{sentence_count} sentences"

# puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
# puts "#{word_count / sentence_count} words per sentence (average)"


lines = File.readlines("c.text")
line_count = lines.size
text = lines.join
word_count = text.split.length
character_count = text.length
character_count_nospaces = text.gsub(/\s+/, '').length
paragraph_count = text.split(/\n\n/).length
sentence_count = text.split(/\.|\?|!/).length
puts "#{line_count} lines"
puts "#{character_count} characters"
puts "#{character_count_nospaces} characters excluding spaces"
puts "#{word_count} words"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count} sentences"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"



 


