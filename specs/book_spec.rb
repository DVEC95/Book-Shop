require("minitest/autorun")
require("minitest/reporters")
require_relative("../models/book")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBook < Minitest::Test

  def setup
    @book = Book.new({
      'title' => 'The Lord of the Rings',
      'format' => 'Hardback',
      'genre' => 'Fantasy',
      'cost' => 8.50,
      'price' => 20.00,
      'quantity' => 10,
      'author_id' => 1,
      'id' => 1
      })
  end

  def test_return_data
    assert_equal('The Lord of the Rings', @book.title)
    assert_equal('Hardback', @book.format)
    assert_equal('Fantasy', @book.genre)
    assert_equal(8.50, @book.cost)
    assert_equal(20.00, @book.price)
    assert_equal(10, @book.quantity)
    assert_equal(1, @book.author_id)
    assert_equal(1, @book.id)
  end

  def test_markup
    assert_equal(11.50, @book.markup)
  end

end
