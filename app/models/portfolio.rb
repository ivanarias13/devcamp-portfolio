class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  def self.angular
    where(Subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> {where(Subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/300x150"
    self.thumb_image ||= "https://via.placeholder.com/200x100"
  end
end
