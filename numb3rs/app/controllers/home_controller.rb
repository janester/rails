class HomeController < ApplicationController
  def index
  end

  def word_total
    total = Declaration.first.words.length
    render :json => total
  end

  def word
    word = Declaration.first.words[params[:count].to_i]
    hex = Code.word2hex(word)
    bin = Number.hex2bin(hex)
    dec = Number.bin2dec(bin)
    render :json => {word:word, hex:hex, bin:bin, dec:dec}
  end
end