class Person
attr_accessor :bank_account, :happiness, :hygiene
attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(points)
       @happiness = points

       if @happiness > 10
        @happiness = 10
       end

        if @happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(points)
        @hygiene = points

        if @hygiene > 10
            @hygiene = 10
        end

        if @hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
         @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary 
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"  
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        [friend, self]. each do |x|
            x.happiness += 3
        end
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            [person, self]. each do |x|
                x.happiness -= 2
            end
            "blah blah partisan blah lobbyist"
    
        elsif topic == "weather"
            [person, self]. each do |x|
                x.happiness += 1
            end
            "blah blah sun blah rain"

        elsif topic != "politics" || "weather"
            [person, self]. each do |x|
                x.happiness == @happiness
            end
            "blah blah blah blah blah"
        end
            

    end
        
end
