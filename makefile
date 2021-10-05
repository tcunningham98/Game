all: README.md


README.md: guessinggame.sh
	echo "## Project - The Unix Workbench" > README.md
	echo "*Taught by Sean Kross, given by Johns Hopkins University, accessed through [Coursera.org].*" >> README.md
	echo "\n**Description:** Make a program called guessinggame.sh. This program should continuously ask the user to guess the number files in the current directory." >> README.md
	echo "\n**Creation Date:** `date '+%d/$m/%Y'`\n" >> README.md
	echo "\n**Time:** `date '+%H:%M:%S'`\n" >> README.md
	cat guessinggame.sh | ec -l >> README.md

clean:
	rm README.md
