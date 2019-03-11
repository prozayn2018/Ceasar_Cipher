require 'sinatra'
require 'sinatra/reloader'

#things to remember, using functions -> passing values
# control flow of program and function control flow.

get '/' do

    # short project reimplementing caesar's cipher

    def cipher()

    entry = params["guess"]
    #splits at each chracter, puts into array
    x = entry.split('')
    new_word = ''

    #could have done a block below: {}
    x. each do |i|
      old_int = i.to_i(base=36) - 9
      if old_int < 27 && old_int > 0
        case old_int
        when 1
          new_word += 'f'
        when 2
          new_word += 'g'
        when 3
          new_word += 'h'
        when 4
          new_word += 'i'
        when 5
          new_word += 'j'
        when 6
          new_word += 'k'
        when 7
          new_word += 'l'
        when 8
          new_word += 'm'
        when 9
          new_word += 'n'
        when 10
          new_word += 'o'
        when 11
          new_word += 'p'
        when 12
          new_word += 'q'
        when 13
          new_word += 'r'
        when 14
          new_word += 's'
        when 15
          new_word += 't'
        when 16
          new_word += 'u'
        when 17
          new_word += 'v'
        when 18
          new_word += 'w'
        when 19
          new_word += 'x'
        when 20
          new_word += 'y'
        when 21
          new_word += 'z'
        when 22
          new_word += 'a'
        when 23
          new_word += 'b'
        when 24
          new_word += 'c'
        when 25
          new_word += 'd'
        when 26
          new_word += 'e'
        end
      else
        new_word += i
      end
     end
    puts new_word
    return new_word
    end
##cipher ends above

    def testcipher()
      returncip = cipher()
      return returncip
    end

  def number
    #gets what user entered
    uenter = ''
    uenter = testcipher()
    if uenter != nil
      puts uenter * 1
      number = uenter
      erb :cip, :locals => {:number => number}
    end
  end
  number()
end
