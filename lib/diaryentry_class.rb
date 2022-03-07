class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title 
    @contents = contents
  end

  def title
    return "#{@title}"
  end

  def contents
    return "#{@contents}"
  end

  def count_words
     return @contents.split.count
  end

  def reading_time(wpm)
    speed = (60.0 / wpm.to_f)
    speed_per_word = speed * count_words
    return "#{speed_per_word} seconds"
  end

  def reading_chunk(wpm, seconds)
    words = wpm.to_f
    number_of_words = ((words / 60.0) * seconds).floor
    index = number_of_words - 1
    return (@contents.split(" ")[0..index]).join(" ")

    
    
  # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end
