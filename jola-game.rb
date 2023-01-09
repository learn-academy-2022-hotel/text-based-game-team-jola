

puts 'Hello. Please enter your name to begin:'
player = gets.chomp

puts "Hello, #{player}. Would you like to play a game?"
game_question = gets.chomp.downcase
    
def intro
    p "It was a dark and stormy night. In front of you is an old, run-down house. You notice the front door is ajar. There's also an open window you can reach. On the side of the house is an old bulkhead leading to the cellar.
    
    How would you like to enter the house?"

    enter_house_answer = gets.chomp.downcase
    enter_house(enter_house_answer)
end

def game_start (game_question)
    if game_question == 'yes'
        p "Excellent! Let's begin"
        intro
    else
        p "You are no fun."
    end
end

def enter_house (enter_house_answer)
    if enter_house_answer.include?"door"
        enter_door
    elsif enter_house_answer.include?"window"
        enter_window
    elsif ["cellar", "basement", "bulkhead"].include? enter_house_answer
        enter_cellar
    else
        p "You are a coward. This game is too scary for you"
    end
end

def enter_door
    p "Entered door"
end

def enter_window
    p "Entered window"
end

def enter_cellar
    p "Entered cellar"
end

game_start(game_question)
