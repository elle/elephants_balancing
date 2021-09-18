require "minitest/autorun"
require "minitest/pride"
require "byebug"
require "minitest/reporters"
Minitest::Reporters.use!

require_relative "song"

describe Song do
  it "renders the lyrics" do
    assert_equal expected, Song.lyrics
  end

  private

  def expected
    @expected ||= %Q(
      One grey elephant balancing
      Step by step on a piece of string
      Thought it was such a wonderful stunt
      That he called for another elephant

      Two grey elephants balancing
      Step by step on a piece of string
      Thought it was such a wonderful stunt
      That they called for another elephant

      Three grey elephants balancing
      Step by step on a piece of string 
      Thought it was such a wonderful stunt
      That they called for another elephant

      Four grey elephants balancing
      Step by step on a piece of string
      Thought it was such a wonderful stunt
      That they called for another elephant

      Five grey elephants balancing
      Step by step on a piece of string
      All of a sudden the piece of string broke
      And down came all the elephant folk
    )
  end
end
