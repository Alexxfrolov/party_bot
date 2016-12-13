class User < ActiveRecord::Base
  # attr_accessible :first_name, :last_name, :is_blocked, :last_date

  validates :username, uniqueness: true, presence: true
  validates :chat_id, uniqueness: true, presence: true

  def self.check_user(user_hash)
    user = self.find_by_username user_hash[:username]
    if user
      user.last_date = DateTime.now
      user.save
    else
      user = self.create username: user_hash[:username],
                        first_name: user_hash[:first_name], 
                        last_name: user_hash[:last_name],
                        chat_id: user_hash[:id]
                
    end
    user
  end

  def full_name
    full = "#{first_name} #{last_name}"
    full.present? ? full : self.username
  end

  def add_to_party
    unless self.person
      pers = Person.create name: username,
                                  first_name: first_name, 
                                  last_name:last_name
      pers.user = self
    end
  end

  def leave_party
    self.person.delete
  end

  def person
    Person.find_by id: person_id
  end
end
