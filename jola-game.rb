
puts <<-'EOF'
.     .
!!!!!!!
.       [[[|]]]    .
!!!!!!!!|--_--|!!!!!
[[[[[[[[\_(X)_/]]]]]
.-.     /-_--__-/_--_-\-_--\
|=|    /-_---__/__-__-_\__-_\
. . |=| ._/-__-__\===========/-__\_
!!!!!!!!!\========[ /]]|[[\ ]=====/
/-_--_-_-_[[[[[[[[[||==  == ||]]]]]]
/-_--_--_--_|=  === ||=/^|^\ ||== =|
/-_-/^|^\-_--| /^|^\=|| | | | ||^\= |
/_-_-| | |-_--|=| | | ||=|_|_|=||"|==|
/-__--|_|_|_-_-| |_|_|=||______=||_| =|
/_-__--_-__-___-|_=__=_.`---------'._=_|__
/-----------------------\===========/-----/
^^^\^^^^^^^^^^^^^^^^^^^^^^[[|]]|[[|]]=====/
|.' ..==::'"'::==.. '.[ /~~~~~\ ]]]]]]]
| .'=[[[|]]|[[|]]]=`._||==  =  || =\ ]
||== =|/ _____ \|== = ||=/^|^\=||^\ ||
|| == `||-----||' = ==|| | | |=|| |=||
||= == ||:^s^:|| = == ||=| | | || |=||
|| = = ||:___:||= == =|| |_|_| ||_|=||
_||_ = =||o---.|| = ==_||_= == =||==_||_
\__/= = ||:   :||= == \__/[][][][][]\__/
[||]= ==||:___:|| = = [||]\\//\\//\\[||]
}  {---'"'-----'"'- --}  {//\\//\\//}  {
__[==]__________________[==]\\//\\//\\[==]_
|`|~~~~|================|~~~~|~~~~~~~~|~~~~||
|^| ^  |================|^   | ^ ^^ ^ |  ^ ||
\|//\\/^|/==============\|/^\\\^/^.\^///\\//|///
\\///\\\//===============\\//\\///\\\\////\\\/////
""'""'""".'..'. ' '. ''..'.""'""'""'""''"''"''""
EOF

puts 'Hello. Please enter your name to begin:'
player = gets.chomp

puts "Hello, #{player}. Would you like to play a game?"
game_question = gets.chomp.downcase
    
def intro
p "It was a dark and stormy night. In front of you is an old, run-down house. You notice the front door is ajar. There's also an open window you can reach. On the side of the house is an old bulkhead leading to the cellar." 

p "How would you like to enter the house?"

    enter_house_answer = gets.chomp.downcase
    enter_house(enter_house_answer)
end

# def ascii_art 
#     File.read("./ascii.txt")
# end 


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
        enter_cellar
    elsif front_room_selection.include? "hallway"
        hallway_destiny
    elsif front_room_selection.include? "closet"
        p "YOU DIED. There was a scary skeleton and you got startled and tripped down the stairs and died. Should've picked the basement if you were gonna end up there anyway..."
    else 
        p "You are a coward. This game is too scary for you"
    end     
end

def hallway_destiny
    p "You're in the hallway and you see three spooky doors, one to the left, the middle, and the right. A ghost is beckoning you infront of the door to the left. Which do you choose?"
    
    hallway_selection = gets.chomp
    hallway_function(hallway_selection)
end

def hallway_function(hallway_selection)
    if hallway_selection.include? "left"
        leftdoor_destiny
    elsif hallway_selection.include? "middle"
        middledoor_destiny
    elsif hallway_selection.include? "right"
        rightdoor_destiny
    end
end

def leftdoor_destiny
    p 'You chose the left door. You have fallen into a black hole and you have spawned in a utopian planet in another galaxy'
end 

def middledoor_destiny
    enter_cellar
end 

def rightdoor_destiny
    p "You chose the right door which opens to a set of stairs going to the second level. When you reach the top of the stairs, you are greeted by shrek's evil twin accompanied by his evil donkey. They ask you a riddle 'what's the most common language in coding' What do you answer?"

    shrek_selection = gets.chomp
    shrek_function(shrek_selection)
end 

def shrek_function(shrek_selection)
    if shrek_selection.include? "profanity"
        upstairs_destiny
    else
        p 'you got the answer wrong. GAME OVER'
    end
end

def upstairs_destiny
    p 'Good job, you got the right answer. You see a ladder, a bookcase, and a scary doll. Which do you interact with?'
    
    item_selection = gets.chomp
    item_function(item_selection)
end 

def item_function(item_selection)
    if item_selection.include? "ladder"
        ladder_destiny
    elsif item_selection.include? "bookcase"
        bookcase_destiny
    elsif item_selection.include? "doll"
        doll_destiny
    else
        upstairs_destiny
    end
end

def ladder_destiny
    p 'You use the ladder to exit through the window and escape. Phew! The End'
end 

def bookcase_destiny
    p 'There are a lot of interesting books here. What is your favorite book?'
    favorite_book = gets.chomp 
    p "You see a copy of #{favorite_book}. You take it off the shelf. Do you want to read it?" 
    want_to_read = gets.chomp
    if want_to_read.include? "yes"
        p "Enjoy your book!"
    else 
        upstairs_destiny
    end      
end

def doll_destiny
        p "You pick up the doll. You happen to be a doll afficianado and know that this doll is worth millions, but they have been known to curse anyone who makes money off of them. What are you going to do? Will you put it back or sell it?"
    doll_decision = gets.chomp
    if doll_decision.include? "sell"
        p "You've been unwise and greedy. Your fate has been sealed. Now you are cursed!!"   
    elsif doll_decision.include? "back"
        upstairs_destiny
    else 
        p "Please choose between selling it and putting it back." 
        doll_destiny 
    end     
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
