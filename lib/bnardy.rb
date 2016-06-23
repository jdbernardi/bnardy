require "bnardy/version"

module Bnardy
# ./rock_paper_scissors.rb


class RockPaperScissors


	def initialize


		@cpu_move = ['rock', 'paper', 'scissors'].sample
		@player_move = player_move
		run


	end

	def run

		puts "Please enter rock, paper or scissors"
    @player_move = gets.strip.downcase
    outcome( @player_move )



	end


	def tie?
		if @cpu_move == @player_move

			puts "Tie! Both players had #{@cpu_move}"

		end

	end



	def player_wins

		puts "Player wins! #{@player_move} beats #{@cpu_move}"

	end



	def cpu_wins

		puts "CPU wins! #{@cpu_move} beats #{@player_move}"

	end



	def outcome ( player_move )

		unless tie?



			if @cpu_move == "rock"

				if @player_move == "paper"

					player_wins

				elsif @player_move == "scissors"

					cpu_wins

				end




			elsif @cpu_move == "paper"

				if @player_move == "rock"

					cpu_wins

				elsif @player_move == "scissors"

					player_wins

				end



			elsif @cpu_move == "scissors"

				if @player_move == "rock"

					player_wins

				elsif @player_move == "paper"

					cpu_wins

				end

			end



		end #/.unless
	end #/.outcome

end
#END /.ROCKPAPERSCISSORS

RockPaperScissors.new


end
