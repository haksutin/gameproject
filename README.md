# 👾 gameproject
Terminaalipohjainen arcade, joka asentaa ja käynnistää klassisia pelejä Saltilla.  
Pelit kuten nsnake, nudoku ja pacman4console asentuvat automaattisesti. Pistetiedot tallentuvat (vaikkakin manuaalisesti) käyttäjänimellä.  

Tämä toimii miniprojektina [Palvelinten Hallinta](https://terokarvinen.com/palvelinten-hallinta/#h5-miniprojekti) -kurssille. 

![h532](https://github.com/user-attachments/assets/0f57a200-fa69-4e33-864a-9af9279c9825)![h531](https://github.com/user-attachments/assets/ea96c150-c26b-4c3f-ba4c-102b00a75b98)




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
