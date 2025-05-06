#!/bin/bash
clear
echo "=== TERMINAL ARCADE ==="
echo
read -p "Enter your name: " player

while true; do
  echo
  echo "Choose a game to play:"
  select game in nsnake nudoku pacman4console view-scores quit; do
    case $game in
      nsnake)
        nsnake
        read -p "Enter your score: " score
        echo "$player $score" >> /home/vagrant/game-logs/nsnake.log
        ;;
      nudoku)
        nudoku
        read -p "Enter your score: " score
        echo "$player $score" >> /home/vagrant/game-logs/nudoku.log
        ;;
      pacman4console)
        pacman4console
        read -p "Enter your score: " score
        echo "$player $score" >> /home/vagrant/game-logs/pacman.log
        ;;
      view-scores)
        /usr/local/bin/highscores
        ;;
      quit)
        echo "Goodbye!"
        exit
        ;;
      *)
        echo "Invalid selection"
        ;;
    esac
    break
  done
done
