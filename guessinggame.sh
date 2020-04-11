#! usr/bin/env #!/usr/bin/env bash
#File: guessinggame.sh
function guessing {
if [[ $1 -lt $2 ]]
  then
    echo "Lower number than the expected, try again!!!"
else
    echo "Higher value than the expected, try again!!!"
fi
}
function errorate {
  error_diff=$(($1-$2))
  error_diff=${error_diff#-}
  if [[ $error_diff -lt 10 ]]
    then
      echo "You are so close try with small steps"
  else
      echo "You are approaching"
  fi
}
Var1=$(ls | wc -l)
echo "Type the number of files you think exist:"
read response
while [[ $response -ne $Var1 ]]
do
  guessing $response $Var1
  errorate $Var1 $response
  read response
done
echo "Excelent!!! that's the correct answer YOU WIN"
