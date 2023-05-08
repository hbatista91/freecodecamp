#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE TABLE games,teams")

INSERT_TEAM_FUNC()
{
  if [ ! -v teams_dict['$*'] ]; then
    INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$*') RETURNING TEAM_ID")
    TEAM_ID=($INSERT_TEAM_RESULT)
    teams_dict[$*]=${TEAM_ID[0]}
  fi
}

declare -A teams_dict
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    INSERT_TEAM_FUNC $WINNER
    INSERT_TEAM_FUNC $OPPONENT
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',${teams_dict[$WINNER]},${teams_dict[$OPPONENT]},$WINNER_GOALS,$OPPONENT_GOALS)")
    
    echo Game Inserted
  fi
done