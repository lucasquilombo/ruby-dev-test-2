class Album < ApplicationRecord
  
  has_many :album_players
  has_many :players, through: :album_players

  validate :players_presence

  validates_presence_of :name

  private

  def players_presence
    errors.add :players, "mandatory to inform a player." if self.players.blank?
  end
end
