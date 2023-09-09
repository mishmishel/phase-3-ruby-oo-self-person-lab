# your code goes here
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene # reader for attributes
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end

    def bank_account=(value)
        @bank_account = value
    end

    def happiness=(value)
        # Ensure that the value is within the range of 0 to 10
        @happiness = [0, [value, 10].min].max
    end

    def hygiene=(value)
        @hygiene = [0, [value, 10].min].max
    end

    def clean?
        # Check if hygiene is more than seven
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        # Increment hygiene by 4 points, but not more than 10
        self.hygiene += 4
    
        # Return a song
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2

        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        # Increase caller's happiness by 3 points, but not more than 10
        self.happiness += 3
    
        # Increase friend's happiness by 3 points, but not more than 10
        friend.happiness += 3
    
        # Return a message
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
          # Decrease happiness of both parties by 2 points, but not less than 0
          self.happiness -= 2
          friend.happiness -= 2
    
          # Return a politics-related message
          "blah blah partisan blah lobbyist"
        when "weather"
          # Increase happiness of both parties by 1 point, but not more than 10
          self.happiness += 1
          friend.happiness += 1
    
          # Return a weather-related message
          "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
    
end

