class House < ActiveRecord::Base
  # attr_accessible :host_name, :address, :booked, :host_number, :location
  scope :main, -> { where(main: true) }
  
  def self.main_house
    self.main.try(:first).try(:info)
  end

  def self.location
    location = House.main.first.try(:location).try(:split, ',')
    {latitude: location.first.to_f, longitude: location.last.to_f}
  end

  def info
    booking = booked ? "booked" : "not booked"
    "Located: #{address}, Phone: #{host_number} - #{host_name}, #{booking}\n#{link}"
  end
end