loop do 
	puts "=============================="
	puts "Welcome to Rock Paper Scissors"
	puts "=============================="

	arr = ["R", "P", "S"]
	begin
		puts "Please type and choose: R / P / S"
		gamer_choose = gets.chomp.upcase
	end while ! arr.include?(gamer_choose)
	computer_choose = arr.shuffle.last
	print "computer choose #{computer_choose}, you choose #{gamer_choose}"

	if (computer_choose == gamer_choose)
		puts ", game equal!"
	elsif ((computer_choose == "P" && gamer_choose == "R") ||
				 (computer_choose == "S" && gamer_choose == "P") ||
				 (computer_choose == "R" && gamer_choose == "S"))
		puts ", computer win"
	else
		puts ", you win"
	end 

	begin
		puts "Do you want to play again? Y / N"
		restart = gets.chomp.upcase
	end while (restart != "N" && restart != "Y")

	if (restart == "N")
		puts "Good Bye! Exit the Game"
		break
	end
end 