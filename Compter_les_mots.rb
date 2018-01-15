#corpus.each { |dictionary| compte[corpus] += 1 }

def jean_michel_data (corpus = "below je go",  dictionary = ["below", "down", "go","go","go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])

  #corpus.each { |dictionary| compte[corpus] += 1 }
  corpus = corpus.split()
  compte = {}

  corpus.each do |mot|
    puts mot
    compte[mot] = 0
    dictionary.each do |terme|
      if mot == terme
        compte[mot] += 1
      end
    end
  end
  puts compte
end

# puts compte

# "hello world".count("lo", "o")

# s="this is a string with is thrice"
# s.scan(/is/).count  # => 3

=begin
names = ["Jason", "Jason", "Teresa", "Judah", "Michelle", "Judah", "Judah", "Allison"]
counts = Hash.new(0)
names.each { |name| counts[name] += 1 }
# => {"Jason" => 2, "Teresa" => 1, ....
=end

jean_michel_data()
