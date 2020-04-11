README.md:
	touch README.md
	echo "# Guessing game project" >> README.md
	echo "## Last run was on: " >> README.md
	date >> README.md
	echo "## The number of lines in guessinggame are:" >> README.md
	wc -l < guessinggame.sh >> README.md
