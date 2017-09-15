require 'graph-rank'
require 'treat'

# Implements the PageRank algorithm for
# unsupervised extractive summarization.
#
# Reference: R. Mihalcea and P. Tarau, “TextRank:
# Bringing Order into Texts,” in Proceedings of
# EMNLP 2004. Association for Computational
# Linguistics, 2004, pp. 404–411.
class TextRank < GraphRank::TextRank

  StopWords = Treat.languages.english.stop_words

  def initialize
    @ranking = GraphRank::PageRank.new(0.85, 0.1, 50)
  end

  def run(text,n=3)
    @n, @text = n, text
    @features = @text.groups
    build_graph
    calculate_ranking
  end

  def build_graph
    @features.each do |grp|
      wc = grp.word_count
      @features.each do |grp2|
        wc2 = grp2.word_count
        add_ranking(grp, grp2, wc, wc2)
      end
    end
  end

  def add_ranking(grp, grp2, wc, wc2)
    score = 0.0
    grp.each_word do |wrd|
      next if StopWords.include?(wrd.to_s)
      grp2.each_word do |wrd2|
        score += 1 if wrd.stem == wrd2.stem
      end
    end
    score /= (Math.log(wc) + Math.log(wc2))
    @ranking.add(grp.id, grp2.id, score)
  end

  def calculate_ranking
    rankings = @ranking.calculate
    rankings = rankings[0..@n].map(&:first)
    @text.groups.select do |grp|
      rankings.include?(grp.id)
    end.map(&:to_s)
  end

end

include Treat::Core::DSL

doc = document 'http://www.economist.com/news/science-and-technology/21573089-ambitious-project-map-brain-works-possibly-too-ambitious-hard'
doc.apply(:chunk, :segment, :tokenize)
text_rank = TextRank.new
summary = text_rank.run(doc)

puts summary.inspect