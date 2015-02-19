class Chisel

  def parse_one(word)
    word1 = word.sub("*", "<em>")
    word2 = word1.reverse.sub("*", ">me/<")
    word3 = word2.reverse
  end

  # create in_a_tag = false, after hit first * or symbol you add an
  # opening sub and change in_a_tag to true; after hit second asteriks
  # or symbol you add closing sub and change in_a_tag back to false

  # do whole lines at a time!

  # split to put string in array, join to return to string

  def parse_emphasis(word1)
    in_a_tag = false

    word2 = word1.chars.map do |i|
      if in_a_tag == false && i == '*'
        in_a_tag = true
        i.sub(i, "<em>")
      elsif in_a_tag == true && i == '*'
        in_a_tag = false
        i.sub(i, "</em>")
      else
        i
      end
    end
    word2.join
  end
git stat

end
