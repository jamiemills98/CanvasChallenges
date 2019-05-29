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
          @gumballMachineView.getgumball
        end
      end
      if choice == "R"
        numGumballs = @gumballMachineModel.refill(6)
        @gumballMachineView.refill(numGumballs) # put something inside the brackets
      end
      choice = @gumballMachineView.menu
    end
    @gumballMachineView.exit
  end
end
