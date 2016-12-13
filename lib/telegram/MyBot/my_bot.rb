module Telegram
  module MyBot
    extend Helper
    
    def self.help usr
      msg = (self.public_methods - Object.methods - Helper.public_methods).map { |el| "/" + el.to_s }
      response_with msg.join(" \n")
    end

    def self.start usr
      self.help usr
    end

    def self.join_party usr
      usr.add_to_party
      msg = "It'll be LEGEN ... wait...wait \n DARY... LEGENDARY!!!"
      response_with msg
    end

    def self.leave_party usr
      unless Random.new.rand(5) == 4
        msg = "Fuck off bitch! you can't leave it. \
          It'll be LEGEN ... wait...wait \n DARY... LEGENDARY!!!"
      else
        usr.leave_party
        msg = "You'll miss LEGENDARY party man!"
      end
      response_with msg
    end

    def self.show_people usr
      resp_arr = []
      Person.all.map(&:info).uniq.map.with_index(1).to_a.each(&:reverse!)
            .each{ |i| resp_arr << i.join(') ') }
      msg = resp_arr.join("\n")
      response_with msg
    end

    def self.houses usr
      msg = House.all.map(&:info).join("\n\n")
      response_with msg
    end

    def self.main_house usr
      msg = House.main_house
      response_with msg
    end

    def self.location usr
      msg = House.location
      response_with msg, :sendLocation
    end
  end
end