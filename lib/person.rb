class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize( name, bank_account = 25, happiness = 8, hygiene = 8 )
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def name
    @name
  end
  
  def bank_account
    @bank_account
  end
  
  def happiness
    @happiness
  end

  def hygiene
    @hygiene
  end

  def bank_account=( value )
    @bank_account = value
  end

  def happiness=( value )
    @happiness = value

    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end

  end

  def hygiene=( value )
    @hygiene = value

    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
    
  end

  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end

  def get_paid( amount )
    self.bank_account += amount
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

  def call_friend( friend )
    friend.happiness += 3
    self.happiness += 3
    "Hi #{ friend.name }! It's #{ self.name }. How are you?"
  end

  def start_conversation( friend, topic )
    case topic
    when "politics"
      friend.happiness -= 2
      self.happiness -= 2
      return "blah blah partisan blah lobbyist"
    when "weather"
      friend.happiness += 1
      self.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end