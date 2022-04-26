#!/bin/sh
#Rock Paper Scissors - Shell Script
RPS () {
	choice[0]='rock'
	choice[1]='paper'
	choice[2]='scissors'

	rand=$[ $RANDOM % 3 ]
	opponentChoice=${choice[$rand]}
	userPoints=$((0))


	winningMessage='You won!'
	losingMessage='You lost, try again.'

	printf  "<< Welcome to Rock, Paper, Scissors! >> \n"
	printf "************************************** \n"
	sleep 1.5s
	printf "Your life is on the line. What shall you play? \n"
	sleep 1.5s

	read userInput
	userlower=$($userInput | tr '[:upper:]' '[:lower:]')
	

	if [ $userInput == 'paper' ] && [ $opponentChoice == 'rock' ]
	then
		printf "Your opponent has chosen $opponentChoice. \n"
		sleep .5s
		printf "You win! Your self-worth has increased by 1 point. \n"
		((userPoints++))

	elif [ $userInput == 'rock' ] && [ $opponentChoice == 'scissors' ]
	then
		
		printf "Your opponent has chosen $opponentChoice. \n"
		sleep .5s
		printf "You win! Your self-worth has increased by 1 point. \n"
		((userPoints++))

	elif [ $userInput == 'scissors' ] && [ $opponentChoice == 'paper' ]
	then
		printf "Your opponent has chosen $opponentChoice."
		sleep .5s
		printf "You win! Your self-worth has increased by 1 point. \n"
		((userPoints++))

	elif [ $userInput == $opponentChoice ]
	then
		printf "Your opponent has chosen $opponentChoice. \n"
		sleep .5s
		printf "It's a tie. Your points remain the same. \n"
	else
		printf "Your opponent has chosen $ opponentChoice. \n"
		sleep .5s
		printf "You lose. Your self-worth has decreased by 1 point. \n"
		((userPoints--))
	fi

	printf "You have a total of $userPoints self-worth points. \n"

}


RPS
