User Story: 
So as to assess the diary entry length and how long it would take to read.

```ruby 
title

* title - this is the title of the entry as a string. e.g. "My day at the concert"

contents 

* contents - is a string which states the contents of the diary

count_words

* count_words - returns an integer which represents the number of words in the contents. 

user_read = reading_time(wpm)

* user_read is an integer which estimates the reading time in minutes for contents at given wpm

* reading_time is an integer which represents an estimate of the reading time. 

*wpm is an integer reperesenting user reading speed per min

reading_chunk(wpm, minutes)

* wpm is an integer - user reading speed per min

* minutes an integer - user has to read that is passed to method

* reading_chunk is a string of text that passes what the user can read in given number of minutes. If called again, should return the next chunk skipping what has been read until the contents is fully read. Next call should restart. 

```

```ruby
# 1
saturday = DiaryEntry.new("My day at the concert","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
saturday.title
# => "My day at the concert"

# 2
saturday = DiaryEntry.new("My day at the concert","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
saturday.contents
# => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

# 3
count_words
saturday = DiaryEntry.new("My day at the concert", "Lorem ipsum dolor sißt amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
saturday.count_words
# =>69

# 4
reading_time(wpm)
saturday = Diary.new(x,y)
saturday.count_words.reading_time(200)
# => 20.7 seconds

# 5 
saturday = Diary.new(x,y)
words = saturday.count_words
time = reading_time(200)
chunk_read = reading_chunk(time, 10 seconds)
10 seconds time aka 0.17 minutes
# => 33.3 words in
```