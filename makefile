all: README.md


README.md: guessinggame.sh
	echo "## Project - The Unix Workbench" > README.md
	echo "*Taught by Sean Kross, given by Johns Hopkins University, accessed through [Coursera.org](https://www.coursera.org).*" >> README.md
	echo "\n**Description:** Make a program called guessinggame.sh. This program should continuously ask the user to guess the number files in the current directory." >> README.md
	echo "\n**Creation Date:** `date '+%m/%d/%Y'`\n" >> README.md
	echo "\n**Time:** `date '+%H:%M:%S'`\n" >> README.md
	echo "\n**Number of lines in guessinggame.sh:**" >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
