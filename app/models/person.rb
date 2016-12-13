class Person < ActiveRecord::Base
  # attr_accessible :first_name, :last_name, :payed
  
  validates :name, uniqueness: true, allow_nil: false
  has_one :user

  def self.add(name)
    self.find_or_create_by name: name
  end

  def self.remove(name)
    self.try(:find_by_name, name).try(:destroy)
  end

  def full_name
    full = "#{first_name} #{last_name}"
    full.present? ? full : name
  end

  def info
    hsh = { name: full_name }.merge(self.slice(:payed, :tel_number)).symbolize_keys
    payed = hsh[:payed] ? 'has payed' : 'hasnt payed'
    phone = hsh[:tel_number] ? ", #{hsh[:tel_number]}" : ''
    "#{hsh[:name]}, #{payed} #{phone}"
  end
end
