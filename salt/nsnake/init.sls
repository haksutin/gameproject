# pelien asennus
install-terminal-games:
  pkg.installed:
    - pkgs:
      - nsnake
      - nudoku
      - pacman4console

# peli-valikko
copy-menu:
  file.managed:
    - name: /usr/local/bin/play-terminal-games
    - source: salt://nsnake/files/play-terminal-games.sh
    - mode: 755

# pistetaulukon luonti
create-highscores:
  file.managed:
    - name: /usr/local/bin/highscores
    - source: salt://nsnake/files/highscores.sh
    - mode: 755

# pistetaulukon hakemisto
create-score-directory:
  file.directory:
    - name: /home/vagrant/game-logs
    - user: vagrant
    - group: vagrant
    - mode: 755
