class GumballMachineModel

    def initialize(gumballCount: 0)
      # fill in this line
    end
    
    def dispense
      if @gumballCount > 0
        @gumballCount -= 1
        return Gumball.new
      else
        return nil
      end
    end
  
    def refill(count)
      @gumballCount += count
    end
  
  end