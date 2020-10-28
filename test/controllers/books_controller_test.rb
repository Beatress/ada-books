require "test_helper"

describe BooksController do
  # it "does a thing" do
  #   value(1+1).must_equal 2
  # end
  #
  it "should get index" do
    get "/books"
    must_respond_with :success
  end

  it "should return 200 OK" do
    get "/books"
    assert_response(200, status)
  end

  it "shouldn't break if @books is nil" do
    # TODO
    # Arrange
    # Delete all books
    #
    # Act and assert the same as last
  end

  it 'should return a page for a valid book' do
    get '/books/0'
    must_respond_with :success
  end

  it "should return 200 OK" do
    get "/books/0"
    assert_response(200, status)
  end

  it 'should return missing for invalid book' do
    get '/books/5'
    must_respond_with :missing
  end

  it 'should return 404 for invalid book' do
    get '/books/5'
    assert_response(404, status)
  end
end
