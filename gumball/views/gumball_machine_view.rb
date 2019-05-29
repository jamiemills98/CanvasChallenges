class GumballMachineView

    def greeting
      puts "Hello to the Gumball Machine"
    end
  
    def menu
      choice = nil
      while choice != "G" && choice != "R" && choice != "X"
        puts "Press G to get a gumball, R to refill, or X to exit"
        choice = gets.chomp.upcase
      end
      
      return choice
    end
  
    def getGumball
      puts "Yum, here's your gumball"
    end
  
    def machineEmpty
      puts "Sorry we are all out of gumballs. Awaiting refill"
    end
  
    def refill(count)
      puts "Thanks for refilling me!"
      puts "The Gumball count is now #{count}"
    end
  
    def exit
      puts "Thank you for coming. See you next time."
    end
  
  end