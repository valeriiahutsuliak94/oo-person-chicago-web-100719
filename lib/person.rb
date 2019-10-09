class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    @@all=[]
    
    def initialize(name)
        @name = name
        @bank_account = 25.00
        @happiness = 8
        @hygiene = 8
        @@all<<self
    end
        def happiness=(happiness)
            @happiness = happiness
             if happiness>10
                @happiness=10
                
            end
            if happiness <0
                @happiness=0
            end
        end
        def hygiene=(hygiene)
            @hygiene = hygiene
            if hygiene>10
                @hygiene = 10
            end
            if hygiene<0
                @hygiene=0
            end 
        end
        def happy?
            @happiness>7
        end 
        def clean?
            @hygiene>7
        end
        def get_paid(salary)
            @bank_account=@bank_account + salary
            return "all about the benjamins"
        end
        def take_bath
           self.hygiene=(@hygiene+4)
            return "♪ Rub-a-dub just relaxing in the tub ♫"
        end 
        def work_out
            self.hygiene=(@hygiene-3)
            self.happiness=(@happiness+2)
            return "♪ another one bites the dust ♫"
        end
        def call_friend(friend)
            self.happiness=(@happiness+3)
            friend.happiness=(friend.happiness+3)
            return "Hi #{friend.name}! It's #{self.name}. How are you?"
        end
        def start_conversation(convo_partner, topic)
            if topic == "politics"
                self.happiness=(@happiness - 2)
                convo_partner.happiness=(convo_partner.happiness - 2)
                p "blah blah partisan blah lobbyist"
            elsif topic == "weather"
                self.happiness=(@happiness + 1)
                convo_partner.happiness=(convo_partner.happiness + 1)
                p "blah blah sun blah rain"
            else
                return "blah blah blah blah blah"
        
            end
        end

end
