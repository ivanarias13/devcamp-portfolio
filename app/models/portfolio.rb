class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank?}

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image
  def self.angular
    where(Subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> {where(Subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    #####change for concerns
    #self.main_image ||= "https://via.placeholder.com/300x150"
    #self.thumb_image ||= "https://via.placeholder.com/200x100"

    self.main_image ||= Placeholder.image_generator(height: '300', width: '150')
    self.thumb_image ||= Placeholder.image_generator(height: '200', width: '100')
  end
end
##the ||= means
#if self.main_image == nil
#self.main_image = "https://via.placeholder.com/300x150"
#end