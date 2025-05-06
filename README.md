# 👾 gameproject
Terminaalipohjainen arcade, joka asentaa ja käynnistää klassisia pelejä Saltilla.  
Pelit kuten nsnake, nudoku ja pacman4console asentuvat automaattisesti. Pistetiedot tallentuvat (vaikkakin manuaalisesti) käyttäjänimellä.  

Tämä toimii miniprojektina [Palvelinten Hallinta](https://terokarvinen.com/palvelinten-hallinta/#h5-miniprojekti) -kurssille. 

*KUVA*

## 👑 Tekijä

**Nimi:** Jenna  
**GitHub:** haksutin

## 🚀 Käyttöönotto
### Lataus ja asennus

    git clone git@github.com:haksutin/gameproject.git
    cd gameproject
    vagrant up

Siirrytääm masterille suorittamaan asennus loppuun.

    vagrant ssh master
    sudo salt-key -A
    sudo salt '*' state.apply nsnake

Sitten slavelle pelaamaan. 🎮🕹️  

    exit
    vagrant ssh slave
    play-terminal-games
