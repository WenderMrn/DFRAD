require 'test/unit'
require_relative 'cine.rb'

class TestCine < Test::Unit::TestCase

  def setup
    @cine = Cine.new()
  end

  def test_list_times()
    times = @cine.list_times("neruda")
    assert_equal(2, times.count)

    expected = [
      {date: "19/03/2017", time: "18:00"},
      {date: "23/03/2017", time: "20:30"}
    ]
    assert_equal(expected, times)
  end

  def test_list_movies()
    movies = @cine.list_movies("19/03/2017")
    assert_equal(2, movies.count)

    expected = [
      {movie: "Jonas e o circo sem lona", time: "16:00"},
      {movie: "Neruda", time: "18:00"}
    ]
    assert_equal(expected, movies)
  end

end
