echo "Guessing Game!"
echo "Guess how many files are in the current directory until you guess the correct answer."
echo "Let us begin..."
echo "________________________"

function ask {
echo "How many files are in the current directory?"
read guessNumber
file_number=$(ls -1 | wc -l)
}

ask 
while [[ $guessNumber -ne $file_number ]]
do
if [[ $guessNumber -ge $file_number ]]
then
echo "That's too big! Guess again:"
else [[ $guessNumber -le $file_number ]]
echo "That's too small! Guess again:"
fi
ask
done

echo "YOU ARE CORRECT!"
echo "There are $file_number files in the current directory: "
echo "________________" && ls
