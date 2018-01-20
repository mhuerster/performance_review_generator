require 'marky_markov'
markov = MarkyMarkov::TemporaryDictionary.new

resources = File.join("resources", "**", "*.txt")
source_files = Dir.glob(resources)

source_files.each { |sf| markov.parse_file(sf) }

puts markov.generate_n_sentences 5
