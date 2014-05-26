def select_elements_starting_with_a(array)
	array.select { |e| e.start_with?("a") }
end

def select_elements_starting_with_vowel(array)
	array.select { |e| e.start_with?("a","e","i","o","u") }
end

def remove_nils_from_array(array)
	array.compact!
end

def remove_nils_and_false_from_array(array)
	new_array = array.compact!
	arr = new_array.delete_if{|e| e == false}
	arr
end

def reverse_every_element_in_array(array)
	array.each do |e| e.reverse!
		array
	end
end

# given an array of student names, like ['Bob', 'Dave', 'Clive']
# give every possible pairing - in this case:
# [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
# make sure you don't have the same pairing twice, 
def every_possible_pairing_of_students(array)
end

def all_elements_except_first_3(array)
	array.shift(3)
	array
end

def add_element_to_beginning_of_array(array, element)
	array.unshift element
end

# sort an array of words by their last letter, e.g.
# ['sky', 'puma', 'maker'] becomes ['puma', 'maker', 'sky']
def array_sort_by_last_letter_of_word(array)
	#reverse and then sort?  or by -1?
end

def get_first_half_of_string(string)
	if string.length%2=0
		#do a thing
	else
		#add one
		#then do the thing
	end
end

def make_numbers_negative(number)
	#if number already negative
		#return number
	#elsif number is positive
		# * -1
	#end
end

def separate_array_into_even_and_odd_numbers(array)
	odd_filter = Proc.new {|value| value.odd? }
	odd_values = array.select(&odd_filter)
	even_values = array.reject(&odd_filter)
	[even_values, odd_values]
end

# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2
def number_of_elements_that_are_palindromes(array)
	#if word == word.reverse, []
	#else delete
	#[].count
end

def shortest_word_in_array(array)
	word = array.inject(){|shortest,word|
		if word.length < shortest.length
			shortest = word
		else
			shortest = shortest
		end
	}
	word
end

def longest_word_in_array(array)
	word = array.inject(''){|biggest,word|
		if word.length > biggest.length
			biggest = word
		else
			biggest = biggest
		end
	}
	word
end

def total_of_array(array)
	array.inject(0, &:+)
end

def double_array(array)
	new_array = (array).concat(array)
end

def turn_symbol_into_string(symbol)
	symbol.to_s
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
	array.inject(0, &:+)/array.length
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
	#needs to have 'break' in here somewhere I think
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
	#split?  then sort
end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
	#does inject work for this?
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
	#
end

# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
	#if float, get integer+1
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
	#if float, get integer (not -1, just integer)
end

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
end

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
	#find the bit between @ and .
end

# capitalize the first letter in each word of a string, 
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
	# except "the", "and" "of" "to" "in"
	# unless first word
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
end

# should return true for a 3 dot range like 1...20, false for a 
# normal 2 dot range
def is_a_3_dot_range?(range)
	range.to_s.include?('...')
end

def square_root_of(number)
	#number/n = n, number%n = 0
end

def word_count_a_file(file_path)
	file = File.open(file_path)
	contents = file.read
	contents.split.size
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
def your_birthday_is_on_a_friday_in_the_year(birthday)
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo
	#fuck
end

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of 
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
def ninety_nine_bottles_of_beer
	# #{n} bottles of beer on the wall omg
end
