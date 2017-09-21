require 'treat'

include Treat::Core::DSL

puts 'darkness'.category       # => "noun"
puts 'abyss'.plural            # => "abysses"
puts 'dreaming'.stem           # => "dream"
puts 'think'.present_participle# => "thinking"
puts 'towering'.synonyms       # => ["eminent", "lofty", "soaring", "towering"]
puts 'perfection'.hypernyms    # => ["state", "ideal", "improvement"]