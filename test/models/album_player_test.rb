require 'test_helper'

class AlbumPlayerTest < ActiveSupport::TestCase
  test "presence of album" do
    albumPlayer = AlbumPlayer.new
    assert_not albumPlayer.valid?
    assert_not_empty albumPlayer.errors[:album]
  end

  test "presence of player" do
    albumPlayer = AlbumPlayer.new
    assert_not albumPlayer.valid?
    assert_not_empty albumPlayer.errors[:player]
  end
end
