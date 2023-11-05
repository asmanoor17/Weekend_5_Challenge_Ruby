# Read text from a file
def read_text_from_file(filename)
    File.read(filename)
end
# logic for text_analyzer requirments go here:
#2.function for word count
def count_words(text)
    words = text.split
    word_count = words.size
    return word_count
end
#3.function that counts the number of characters 
def count_characters(text)
    character_count = text.length
    return character_count
  end
#4.Implement a function that counts the number of paragraphs in the document (paragraphs are separated by empty lines). 
def count_paragraphs(document)
    paragraphs = document.split("\n\n")
    paragraph_count = paragraphs.size
    return paragraph_count
  end
  
  #5. Identify the most common word in the document and display it along with its frequency.
  def most_common_word(document)
    words = document.split
    word_counts = Hash.new(0)

    words.each do |word|
    word_counts += 1 
    end

    return most_common_word

#6.Provide word frequency statistics, listing the top 10 most common words and their frequencies.
def word_frequency_stats(document)
    words = document.split
    word_counts = Hash.new(0)  # Create a hash to store word frequencies with a default value of 0

    words.each do |word|
         # Remove punctuation and convert to lowercase for case-insensitive comparison
    cleaned_word = word.gsub(/[^a-zA-Z]/, '').downcase
    word_counts[cleaned_word] += 1
     # Sort word frequencies in descending order and take the top 10
  sorted_word_counts = word_counts.sort_by { |word, count| -count }.first(10)

  return sorted_word_counts
end


# Analyze the sample text
filename = 'sample.txt' # Replace with your text file
text = read_text_from_file(filename)

# use `text` ^ to pass as a parameters to your methods

# puts statements to console go here:
puts file = read_text_from_file("sample.txt") 

puts "Word count: #{word_count}"


puts "Character count: #{character_count}"


puts "Paragraph count: #{paragraph_count}"

puts "Most common word: '#{most_common}' (#{frequency} times)"