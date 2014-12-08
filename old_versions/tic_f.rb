$places = {
  1=>"1 ", 2=>"2 ", 3=>"3 ",
  4=>"4 ", 5=>"5 ",6=>"6 ",
  7=>"o",8=>"8 ",9=>"9 "
}
$win = [
  [1 ,2 ,3],
  [4 ,5 ,6],
  [7 ,8 ,9],
  [1 ,4 ,7],
  [2 ,5 ,8],
  [3 ,6 ,9],
  [1 ,5 ,9],
  [7 ,5, 3]
]

#who wins
$whoIsWin = "go"
def winner(p,w,who)

i = 0
while i < 8
         if "x"  == p[w[i][0]] then
                 if "x" ==  p[w[i][1]] then
                        if "x" == p[w[i][2]] then
                                puts "You Won!"
                               $whoIsWin = "stop"
                                break
                        end
                end
        end
#now we do it for o
  if "o"  == p[w[i][0]] then
                 if "o" ==  p[w[i][1]] then
                        if "o" == p[w[i][2]] then
                                puts "You Lost"
                                $whoIsWin = "stop"
                                break
                        end
                end
        end	
      i+=1
end
end
# the recall statement is winner($places,$win,$whoIsWin )

# winner($places)
#old first move entire function********************************************
#puts "Where do you want to move. Enter a space 1-9. You are x."
#move1 = gets.to_i
#keys = $places.keys


#old first move method
#check if move is correct, and make move

#i=0
#while i < 12
#	if  $places.keys[i] == move1 then
#		puts "You can move here"
#		$places[move1]= "x" 		
#		break
# 	
#	 else 
# 		puts "Nope. This move does not work"
#	end	
#         i+=1

# end
#****************************************

#show the board*********************************************

def show_board(p)
#sleep(3)
#system "clear"
puts " #{p[1]} | #{p[2]} | #{p[3]} |"
puts "________________"
#puts "             "
puts " #{p[4]} | #{p[5]} | #{p[6]} |"
puts "________________"
puts " #{p[7]}  | #{p[8]} | #{p[9]} |"
end
#print show_board($places)
#*********************************************************

#cpu moves********************************************************
def cpu_turn(p)
i=1
randomNum = rand(10)
while i < 10
#	puts i
#	puts $places.values[i]
#	puts (i+1).to_s
#	puts "***************" 
       if p[i] == "#{i} "
# "x" or "o"  then
                puts "Computer is moving..."
		p[i]= "o"
		break
              
       end
	
       i+=1
 end
show_board($places)
end
#**************************************************


#player move**************************************************
def user_turn(p)
puts "Your turn! Please Enter a move using 1-9"
move2 = gets.to_i
$mcorrect==false
i=0
while i < 12
	if p[move2]!= "o"  then       
		if  p.keys[i] == move2 then
               		puts "You can move here"
			$mcorrect=true
                	p[move2]= "x"
               		 break	
		end
	else
		$mcorrect=false
        end
         i+=1

 end
if $mcorrect == false then
	user_turn($places)
end
show_board($places)
end

#winner($places)
#how the program runs
puts "Welcome to Bromberg Tic-Tac-Toe 1.0. Your are x, and are playing against the computer. The computer has already went. Now it is your turn"
#winner($places,$win,$whoIsWin)
show_board($places)

while $whoIsWin == "go"
#user_turn($places)
winner($places,$win,$whoIsWin)
user_turn($places)
break if $whoIsWin == "stop"
cpu_turn($places)
winner($places,$win,$whoIsWin)
break if $whoIsWin == "stop"
end
puts "Thanks For Playing! Goodbye"
