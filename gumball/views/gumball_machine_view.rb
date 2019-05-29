class GumballMachineView

    def greeting
      # output a greeting message to the console
    end
  
    def menu
      choice = nil
      while choice != "G" && choice != "R" && choice != "X"
        puts "Press G to get a gumball, R to refill, or X to exit"
        choice = gets.chomp.upcase
      end
      
      choice
    end
  
    def getGumball
      puts "Yum, here's your gumball"
    end
  
    def machineEmpty
      # output an appropriate message to the console
    end
  
    def refill(count)
      # output an appropriate message to the console.
      # Make sure you tell the user how many gumballs there are now!
    end
  
    def exit
      # output an appropriate message to the console
    end
  
  end