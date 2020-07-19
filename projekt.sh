#!/bin/bash

# Author: Michal Cwynar ( 175132 )
# Version: 1.0

STRONKI="Strony, z ktorych korzysta portal:\n1) https://sport.onet.pl/pilka-nozna/liga-angielska/tabele/?tid=8fpsr\n2) https://sportowefakty.wp.pl/pilka-nozna/premier-league\n3) mwyniki.pl/anglia/premier-league/najlepsi_strzelcy/\n4) https://www.transfermarkt.pl/premier-league/marktwerte/wettbewerb/GB1\n5) https://www.sts.pl/blog/wp-content/uploads/2019/11/premier-league-liverpool-manchester-city.jpg\n6) https://i.pinimg.com/originals/66/90/6f/66906f43adefb3bc553f7601fa7c1ed9.jpg\n7) https://i.pinimg.com/originals/17/1d/9d/171d9de2dc003a2896dd54e5e93c1303.jpg\n8) https://www.liverpoolfc.com/team/first-team/player/\n9) https://www.manutd.com/en/players-and-staff/detail/"

while getopts hvp OPT; do
 case $OPT in
  h) man ./manual.1.gz
     exit;;
  v) echo "Michal Cwynar (175132) wersja 1.0"
     exit;;
  p) echo -e $STRONKI
     exit;;
  *) echo "Nieznana opcja!"
     exit;;
 esac
done

menu=("1. Tabela" "2. Nastepna kolejka" "3. Klasyfikacja strzelcow TOP 10" "4. Najbardziej wartoscowi pilkarze TOP 10" "5. Zmiana tapety" "6. Przeglad wiadomosci o pilkarzach" "7. Cytaty zawodnikow (tylko UTD)" "8. Koniec")
OPCJA1=`zenity --list --title="PREMIER LEAGUE" --text="Wybierz jedna z opcji!" --column=Menu "${menu[@]}" --height 275 --width 300`
NR_OPCJI1=`echo ${OPCJA1:0:1}`

while [[ NR_OPCJI1 -ne 8 ]]; do
 if [[ NR_OPCJI1 -eq 1 ]]; then
     wget -q https://sport.onet.pl/pilka-nozna/liga-angielska/    tabele/?tid=8fpsr -O /tmp/tabela.$$
    DANE=`cat /tmp/tabela.$$ | grep "itemName" | cut -d '"' -f 3 | sed "s#>##" | cut -d "<" -f 1`
    TEAM1=`echo "$DANE" | head -10 | tr "\n" " "`
    TEAM2=`echo "$DANE" | head -20 | tail -10 | tr "\n" " "`
    TEAM3=`echo "$DANE" | head -30 | tail -10 | tr "\n" " "`
    TEAM4=`echo "$DANE" | head -40 | tail -10 | tr "\n" " "`
    TEAM5=`echo "$DANE" | head -50 | tail -10 | tr "\n" " "`
    TEAM6=`echo "$DANE" | head -60 | tail -10 | tr "\n" " "`
    TEAM7=`echo "$DANE" | head -70 | tail -10`
    TEAM8=`echo "$DANE" | head -80 | tail -10`
    TEAM9=`echo "$DANE" | head -90 | tail -10`
    TEAM10=`echo "$DANE" | head -100 | tail -10`
    TEAM11=`echo "$DANE" | head -110 | tail -10`
    TEAM12=`echo "$DANE" | head -120 | tail -10`
    TEAM13=`echo "$DANE" | head -130 | tail -10`
    TEAM14=`echo "$DANE" | head -140 | tail -10`
    TEAM15=`echo "$DANE" | head -150 | tail -10`
    TEAM16=`echo "$DANE" | head -160 | tail -10`
    TEAM17=`echo "$DANE" | head -170 | tail -10`
    TEAM18=`echo "$DANE" | head -180 | tail -10 | tr "\n" " "`
    TEAM19=`echo "$DANE" | head -190 | tail -10 | tr "\n" " "`
    TEAM20=`echo "$DANE" | head -200 | tail -10 | tr "\n" " "`
    echo -e "\e[32m$TEAM1\e[0m"
    echo -e "\e[32m$TEAM2\e[0m"
    echo -e "\e[32m$TEAM3\e[0m"
    echo -e "\e[32m$TEAM4\e[0m"
    echo -e "\e[92m$TEAM5\e[0m"
    echo -e "\e[92m$TEAM6\e[0m"
    echo $TEAM7
    echo $TEAM8
    echo $TEAM9
    echo $TEAM10
    echo $TEAM11
    echo $TEAM12
    echo $TEAM13
    echo $TEAM14
    echo $TEAM15
    echo $TEAM16
    echo $TEAM17
    echo -e "\e[31m$TEAM18\e[0m"
    echo -e "\e[31m$TEAM19\e[0m"
    echo -e "\e[31m$TEAM20\e[0m"
    echo "Gdzie kolejne kolumny to:"
    echo "1 - pozycja"
    echo "2 - nazwa druzyny"
    echo "3 - rozegrane mecze"
    echo "4 - zwyciestwa"
    echo "5 - remisy"
    echo "6 - przegrane"
    echo "7 - bramki zdobyte"
    echo "8 - bramki stracone"
    echo "9 - bilans bramkowy"
    echo "10 - zdobyte punkty"
    printf "\n"
    rm /tmp/tabela.$$
   fi
   if [[ NR_OPCJI1 -eq 2 ]]; then
    wget -q https://sportowefakty.wp.pl/pilka-nozna/premier-league -O /tmp/kolejka.$$
    DANE=`cat /tmp/kolejka.$$ | grep "cmatch__name" | cut -d ">" -f 2,4 | sed "s#</span##g"`
    PARA11=`echo "$DANE" | head -1`
    PARA12=`echo "$DANE" | head -2 | tail -1` 
    PARA21=`echo "$DANE" | head -3 | tail -1`
    PARA22=`echo "$DANE" | head -4 | tail -1`
    PARA31=`echo "$DANE" | head -5 | tail -1`
    PARA32=`echo "$DANE" | head -6 | tail -1`
    PARA41=`echo "$DANE" | head -7 | tail -1`
    PARA42=`echo "$DANE" | head -8 | tail -1`
    PARA51=`echo "$DANE" | head -9 | tail -1`
    PARA52=`echo "$DANE" | head -10 | tail -1`
    PARA61=`echo "$DANE" | head -11 | tail -1`
    PARA62=`echo "$DANE" | head -12 | tail -1`
    PARA71=`echo "$DANE" | head -13 | tail -1`
    PARA72=`echo "$DANE" | head -14 | tail -1`
    PARA81=`echo "$DANE" | head -15 | tail -1`
    PARA82=`echo "$DANE" | head -16 | tail -1`
    PARA91=`echo "$DANE" | head -17 | tail -1`
    PARA92=`echo "$DANE" | head -18 | tail -1`
    PARA101=`echo "$DANE" | head -19 | tail -1`
    PARA102=`echo "$DANE" | head -20 | tail -1`
    echo "$PARA11 vs $PARA12"
    echo "$PARA21 vs $PARA22"
    echo "$PARA31 vs $PARA32"
    echo "$PARA41 vs $PARA42"
    echo "$PARA51 vs $PARA52"
    echo "$PARA61 vs $PARA62"
    echo "$PARA71 vs $PARA72"
    echo "$PARA81 vs $PARA82"
    echo "$PARA91 vs $PARA92"
    echo "$PARA101 vs $PARA102"
    printf "\n"
    rm /tmp/kolejka.$$
   fi
   if [[ NR_OPCJI1 -eq 3 ]]; then
    wget -q mwyniki.pl/anglia/premier-league/najlepsi_strzelcy/ -O /tmp/strzelcy.$$
    DANE=`cat /tmp/strzelcy.$$ | grep "text-left" | cut -d ">" -f 2,3 | rev | cut -d "/" -f 2 | rev | cut -d "<" -f 1 | sed "s#.*>##g"`
    ZAWODNIK1=`echo "$DANE" | head -3 | tr "\n" " " | cut -d " " -f 1,2,4`
    ZAWODNIK2=`echo "$DANE" | head -6 | tail -3 | tr "\n" " " | cut -d " " -f 1,2,4`
    ZAWODNIK3=`echo "$DANE" | head -9 | tail -3 | tr "\n" " " | cut -d " " -f 1,2,4`
    ZAWODNIK4=`echo "$DANE" | head -12 | tail -3 | tr "\n" " " | cut -d " " -f 1,2,4`
    ZAWODNIK5=`echo "$DANE" | head -15 | tail -3 | tr "\n" " " | cut -d " " -f 1,2,4`
    ZAWODNIK6=`echo "$DANE" | head -18 | tail -3 | tr "\n" " " | cut -d " " -f 1,2,4`
    ZAWODNIK7=`echo "$DANE" | head -21 | tail -3 | tr "\n" " " | cut -d " " -f 1,2,4`
    ZAWODNIK8=`echo "$DANE" | head -24 | tail -3 | tr "\n" " " | cut -d " " -f 1,2,4`
    ZAWODNIK9=`echo "$DANE" | head -27 | tail -3 | tr "\n" " " | cut -d " " -f 1,2,4`
    ZAWODNIK10=`echo "$DANE" | head -30 | tail -3 | tr "\n" " " | cut -d " " -f 1,2,4`
    echo "1. $ZAWODNIK1"
    echo "2. $ZAWODNIK2"
    echo "3. $ZAWODNIK3"
    echo "4. $ZAWODNIK4"
    echo "5. $ZAWODNIK5"
    echo "6. $ZAWODNIK6"
    echo "7. $ZAWODNIK7"
    echo "8. $ZAWODNIK8"
    echo "9. $ZAWODNIK9"
    echo "10. $ZAWODNIK10"
    printf "\n"
    rm /tmp/strzelcy.$$
   fi
   if [[ NR_OPCJI1 -eq 4 ]]; then
    wget -q https://www.transfermarkt.pl/premier-league/marktwerte/wettbewerb/GB1 -O /tmp/mvp.$$
    WARTOSCI=`cat /tmp/mvp.$$ | grep "rechts hauptlink" | cut -d '"' -f 31,39 | head -10 | sed "s#.*>##g" | sed "s#<span title=##g"`
    ZAWODNICY=`cat /tmp/mvp.$$ | grep "spielprofil_tooltip" | head -11 | tail -10 | cut -d ">" -f 2 | sed "s#</a##g"
`
    WARTOSC1=`echo "$WARTOSCI" | head -1`
    ZAWODNIK1=`echo "$ZAWODNICY" | head -1`
    WARTOSC2=`echo "$WARTOSCI" | head -2 | tail -1`
    ZAWODNIK2=`echo "$ZAWODNICY" | head -2 | tail -1`
    WARTOSC3=`echo "$WARTOSCI" | head -3 | tail -1`
    ZAWODNIK3=`echo "$ZAWODNICY" | head -3 | tail -1`
    WARTOSC4=`echo "$WARTOSCI" | head -4 | tail -1`
    ZAWODNIK4=`echo "$ZAWODNICY" | head -5 | tail -1`
    WARTOSC5=`echo "$WARTOSCI" | head -5 | tail -1`
    ZAWODNIK5=`echo "$ZAWODNICY" | head -6 | tail -1`
    WARTOSC6=`echo "$WARTOSCI" | head -6 | tail -1`
    ZAWODNIK6=`echo "$ZAWODNICY" | head -7 | tail -1`
    WARTOSC7=`echo "$WARTOSCI" | head -7 | tail -1`
    ZAWODNIK7=`echo "$ZAWODNICY" | head -7 | tail -1`
    WARTOSC8=`echo "$WARTOSCI" | head -8 | tail -1`
    ZAWODNIK8=`echo "$ZAWODNICY" | head -8 | tail -1`
    WARTOSC9=`echo "$WARTOSCI" | head -9 | tail -1`
    ZAWODNIK9=`echo "$ZAWODNICY" | head -9 | tail -1`
    WARTOSC10=`echo "$WARTOSCI" | head -10 | tail -1`
    ZAWODNIK10=`echo "$ZAWODNICY" | head -10 | tail -1`
    echo "1. $ZAWODNIK1 $WARTOSC1"
    echo "2. $ZAWODNIK2 $WARTOSC2"
    echo "3. $ZAWODNIK3 $WARTOSC3"
    echo "4. $ZAWODNIK4 $WARTOSC4"
    echo "5. $ZAWODNIK5 $WARTOSC5"
    echo "6. $ZAWODNIK6 $WARTOSC6"
    echo "7. $ZAWODNIK7 $WARTOSC7"
    echo "8. $ZAWODNIK8 $WARTOSC8"
    echo "9. $ZAWODNIK9 $WARTOSC9"
    echo "10. $ZAWODNIK10 $WARTOSC10"
    printf "\n"
    rm /tmp/mvp.$$
   fi
   if [[ NR_OPCJI1 -eq 5 ]]; then
    menu=("1. Liverpool" "2. Manchester City" "3. Leicester City" "4. Powrot")
    OPCJA2=`zenity --list --title="Wybierz tapete!" --text="Wiecej tapet wkrotce!" --column=Menu "${menu[@]}" --height 195 --width 225`
    NR_OPCJI2=`echo ${OPCJA2:0:1}`
    while [[ NR_OPCJI2 -ne 4 ]]; do
     if [[ NR_OPCJI2 -eq 1 ]]; then
      wget -q jpg https://www.sts.pl/blog/wp-content/uploads/2019/11/premier-league-liverpool-manchester-city.jpg -O /home/mint/Pictures/liverpool
      gsettings set org.gnome.desktop.background picture-uri "file:///home/mint/Pictures/liverpool"
     fi 
     if [[ NR_OPCJI2 -eq 2 ]]; then
      wget -q jpg https://i.pinimg.com/originals/66/90/6f/66906f43adefb3bc553f7601fa7c1ed9.jpg -O /home/mint/Pictures/city
      gsettings set org.gnome.desktop.background picture-uri "file:///home/mint/Pictures/city"
     fi
     if [[ NR_OPCJI2 -eq 3 ]]; then
      wget -q jpg https://i.pinimg.com/originals/17/1d/9d/171d9de2dc003a2896dd54e5e93c1303.jpg -O /home/mint/Pictures/leicester
      gsettings set org.gnome.desktop.background picture-uri "file:///home/mint/Pictures/leicester"
     fi
     menu=("1. Liverpool" "2. Manchester City" "3. Leicester City" "4. Powrot")
    OPCJA2=`zenity --list --title="Wybierz tapete!" --text="Wiecej tapet wkrotce!" --column=Menu "${menu[@]}" --height 195 --width 225`
    NR_OPCJI2=`echo ${OPCJA2:0:1}`
    done
   fi
   if [[ NR_OPCJI1 -eq 6 ]]; then
    menu=("1. Liverpool" "2. Powrot")
    OPCJA4=`zenity --list --title="Wybierz druzyne!" --text="Wiecej druzyn wkrotce!" --column=Menu "${menu[@]}" --height 125 --width 225`
    NR_OPCJI4=`echo ${OPCJA4:0:1}`
    while [[ NR_OPCJI4 -ne 2 ]]; do
     if [[ NR_OPCJI4 -eq 1 ]]; then
      IMIE=$(zenity --entry --title "Imie zawodnika" --text "Podaj jego imie:")
      NAZWISKO=$(zenity --entry --title "Nazwisko zawodnika" --text "Podaj jego nazwisko:")
      LINK="$IMIE"
      if [ "$NAZWISKO" != "" ]; then
       NAZWISKO=`echo $NAZWISKO | tr " " "-"`
       LINK="$IMIE-$NAZWISKO"
      fi
      wget -q https://www.liverpoolfc.com/team/first-team/player/$LINK -O /tmp/wiadomosci.$$
      WIADOMOSCI=`cat /tmp/wiadomosci.$$ | grep "strong" | cut -d ">" -f 2,3,4 | tail -7 | head -4 | sed "s#<strong>##g" | sed "s#&nbsp;</strong>##g" | sed "s#<br />##g" | sed "s#<br /##g" | sed "s#</p>##g" | sed "s#</strong>##g"`
      CZY_BRAMKARZ1=`echo "$WIADOMOSCI" | grep "</span" | wc -l`
      if [[ CZY_BRAMKARZ1 -eq 1 ]]; then
       WIADOMOSCI=`echo "$WIADOMOSCI" | tail -3`
      elif [[ CZY_BRAMKARZ1 -gt 1 ]]; then
       WIADOMOSCI="Brak informacji!"
      fi
      CZY_BRAMKARZ2=`echo "$WIADOMOSCI" | grep "</strong" | wc -l`
      if [[ CZY_BRAMKARZ2 -eq 1 ]]; then
       WIADOMOSCI=`echo "$WIADOMOSCI" | head -3`
      fi
      if [ "$NAZWISKO" != "" ]; then
       zenity --info --width=275 --title="$IMIE $NAZWISKO:" --text="$WIADOMOSCI"
      else
       zenity --info --width=275 --title="$IMIE:" --text="$WIADOMOSCI"
       fi
      rm /tmp/wiadomosci.$$
     fi
     menu=("1. Liverpool" "2. Powrot")
     OPCJA4=`zenity --list --title="Wybierz druzyne!" --text="Wiecej druzyn wkrotce!" --column=Menu "${menu[@]}" --height 125 --width 225`
     NR_OPCJI4=`echo ${OPCJA4:0:1}`
    done
   fi
   if [[ NR_OPCJI1 -eq 7 ]]; then
    menu=("1. Manchester United" "2. Powrot")
    OPCJA3=`zenity --list --title="Wybierz druzyne!" --text="Wiecej druzyn wkrotce!" --column=Menu "${menu[@]}" --height 125 --width 225`
    NR_OPCJI3=`echo ${OPCJA3:0:1}`
    while [[ NR_OPCJI3 -ne 2 ]]; do
     if [[ NR_OPCJI3 -eq 1 ]]; then
      IMIE=$(zenity --entry --title "Imie zawodnika" --text "Podaj jego imie:")
      NAZWISKO=$(zenity --entry --title "Nazwisko zawodnika" --text "Podaj jego nazwisko:")
      LINK="$IMIE"
      if [ "$NAZWISKO" != "" ]; then
       LINK="$IMIE-$NAZWISKO"
      fi
      wget -q https://www.manutd.com/en/players-and-staff/detail/$LINK -O /tmp/cytat.$$
      CYTAT=`cat /tmp/cytat.$$ | grep "player-quote" | cut -d ">" -f 3 | sed "s#</span##g" | sed "s#&quot;##g"`
      if [ "$CYTAT" != "" ]; then
       if [ "$NAZWISKO" != "" ]; then
        zenity --info --width=225 --title="$IMIE $NAZWISKO:" --text="$CYTAT"
       else
        zenity --info --width=225 --title="$IMIE:" --text="$CYTAT"
       fi
      else
       echo "Bledne dane!"
       printf "\n"
      fi
      rm /tmp/cytat.$$
     fi
     menu=("1. Manchester United" "2. Powrot")
     OPCJA3=`zenity --list --title="Wybierz druzyne!" --text="Wiecej druzyn wkrotce!" --column=Menu "${menu[@]}" --height 125 --width 225`
    NR_OPCJI3=`echo ${OPCJA3:0:1}`
    done
   fi
   menu=("1. Tabela" "2. Nastepna kolejka" "3. Klasyfikacja strzelcow TOP 10" "4. Najbardziej wartoscowi pilkarze TOP 10" "5. Zmiana tapety" "6. Przeglad wiadomosci o pilkarzach" "7. Cytaty zawodnikow (tylko UTD)" "8. Koniec")
  OPCJA1=`zenity --list --title="PREMIER LEAGUE" --text="Wybierz jedna z opcji!" --column=Menu "${menu[@]}" --height 275 --width 300`
  NR_OPCJI1=`echo ${OPCJA1:0:1}`
done

