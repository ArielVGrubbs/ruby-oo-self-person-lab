# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness= (happiness)
        @happiness = happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end
    def hygiene= (hygiene)
        @hygiene = hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
        return @hygiene
    end
    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end
    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end
    def get_paid (salary)
        @bank_account += salary
        return 'all about the benjamins'
    end
    def variable_adjuster (variable, variable_value, difference)
        temp_var = variable_ + difference
        self.variable = (temp_var)
    end
    def hygiene_adjuster (hygiene, difference)
        temp_var = @hygiene + difference
        self.hygiene = (temp_var)
    end
    def take_bath
        # self.variable_adjuster(self.hygiene, 4)
        self.hygiene_adjuster(self.hygiene, 4)
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def happiness_adjuster (happiness, difference)
        temp_hap = @happiness + difference
        self.happiness = temp_hap
    end
    def work_out
        self.hygiene_adjuster(self.hygiene, -3)
      self.happiness_adjuster(self.happiness, 2)
      return "♪ another one bites the dust ♫"
    end
    def call_friend(person)
        self.happiness_adjuster(happiness, 3)
        person.happiness_adjuster(person.happiness, 3)
      return "Hi #{person.name}! It's #{@name}. How are you?"   
    end
    def start_conversation(person, topic)
      if topic == 'politics'
        self.happiness_adjuster(happiness, -2)
        person.happiness_adjuster(person.happiness, -2)
        return 'blah blah partisan blah lobbyist'
      elsif topic == 'weather'
        self.happiness_adjuster(happiness, 1)
        person.happiness_adjuster(person.happiness, 1)
        return 'blah blah sun blah rain'
      else
        return 'blah blah blah blah blah'
      end   
    end
  end