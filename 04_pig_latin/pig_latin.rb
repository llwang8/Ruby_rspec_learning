
def translateword(word)
	case word.downcase
	when /^([aeiouy])/ #test for leading vowel
		word.concat("ay")
	when /^(qu+)(.*)/ #test for "qu"
		$2 + $1 + "ay"
	when /^([^aeiouy]+)(.*)/ #test for leading consonant
		$2 + $1 + "ay"
	when /^([^aeiouy]qu+)(.*)/ #test for leading consonant + "qu"  (not working?)
		puts $2 + $1 + "ay"
	else
		word
	end
end

def translate(phrase)
	piglist = []
	wordslist = phrase.split(" ")
	wordslist.each do |w|
		piglist << translateword(w)
	end
	puts "phrase: #{phrase}; \npig latin translation: #{piglist.inspect}"
	piglatin = piglist.join(" ")
end

translate("apple banana cherry three school quiet square eat pie")

#"apple".concat("ay") if /^([aeiouy])/.match("apple")
# "square".replace ($2 + $1 + "ay")  if /^([^aeiouy]qu+)(.*)/.match("square")