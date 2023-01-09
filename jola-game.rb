

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
    if game_question == 'yes' or game_question == 'y'
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
    elsif enter_house_answer.include? "cellar" or
        enter_house_answer.include? "bulkhead" or
        enter_house_answer.include? "window"
            enter_cellar
    else
        p "You are a coward. This game is too scary for you"
    end
end

def enter_door
    p "You're in the main room. Things are looking scary, there's spider webs everywhere... EVERYWHERE. You see a staircase to the left that takes you to the basement, a hallway infront and a closet to the right, which way will you go???"

    front_room_selection = gets.chomp
    front_room_function(front_room_selection)
end

def front_room_function(front_room_selection)
    if front_room_selection.include? "staircase" or front_room_selection.include? "basement"
        staircase_destiny
    elsif front_room_selection.include? "hallway"
        hallway_destiny
    elsif front_room_selection.include? "closet"
        p "YOU DIED. There was a scary skeleton and you got startled and tripped down the stairs and died. Should've picked the basement if you were gonna end up there anyway..."
    else 
        p "You are a coward. This game is too scary for you"
    end
        
end

def staircase_destiny
    "You're on the staircase"
end

def hallway_destiny
    "You're in the hallway"
end

def enter_window
    p "Entered window. Why didn't you use the door??? it was open..."
    enter_door
end

def enter_cellar
    p "You walked down the stairs into the cellar. Mad scientist Rick is working diligently. He notices you, you're scared and at a loss for words, he asks if you want to join him in his journey of conquering the world (it's just something he always dreamed of). He tells you that if you don't then you die. Do you join Rick in following his lifetime dream?"

    conquer = gets.chomp
    if conquer == "yes"
        p "GO TAKE OVER THE WORLD!!!"
    else 
        p "Your head is in one of his pickle jars. GAME OVER"
    end
end

game_start(game_question)
