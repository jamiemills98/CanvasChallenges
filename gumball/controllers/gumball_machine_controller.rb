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
        current_count = @gumballMachineModel.refill(0) 
        refill_count = @gumballMachineView.refillCount
        numGumballs = @gumballMachineModel.refill(refill_count)
        @gumballMachineView.refill(numGumballs)
      end
      choice = @gumballMachineView.menu
    end
    @gumballMachineView.exit
  end
end
