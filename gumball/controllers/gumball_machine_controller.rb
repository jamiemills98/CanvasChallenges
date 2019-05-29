require_relative "../models/gumball_machine"
require_relative "../views/gumball_machine_view"

class GumballMachineController

  def initialize
    @gumballMachineModel = GumballMachineModel.new
    @gumballMachineView = GumballMachineView.new
  end

  def run
    # Initial Greeting message
    @gumballMachineView.greeting
    #Getting users choice
    choice = @gumballMachineView.menu 
    #Loop until exit (X)
    while choice != "X"
      if choice == "G"
        gumball = @gumballMachineModel.dispense
        if gumball.nil?
          @gumballMachineView.machineEmpty
        else
          @gumballMachineView.getGumball
        end
      end
      if choice == "R"
        refill_count = @gumballMachineView.refillCount #calling refill count to get how many they are refilling
        if refill_count > 0 
          numGumballs = @gumballMachineModel.refill(refill_count) #refilling gbm model with entered refill count
          @gumballMachineView.refill(numGumballs) #returns how many gumballs there are now 
        else
          @gumballMachineView.invalidRefill(refill_count) #returned if less than 0 to say it's not valid
        end
      end
      choice = @gumballMachineView.menu
    end
    @gumballMachineView.exit
  end
end

