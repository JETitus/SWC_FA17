cut -f1,3,4 gapminder.txt | grep 2002 | sort -n -k3 | tail -n 1 > CountryHighestLifeExp.txt
