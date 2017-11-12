#how big is your file `wc` outputs lines, words, bytes
wc gapminder.txt  # try also with absolute path!

#look at the first 10 lines
head -n 10 gapminder.txt   # also try `tail`

##how many countries in this file? We will need more than one step here!
#1. extract the first column from the dataset:
#`cut` -  to get the column; `-f1` - flag to indicate we want the first column
cut -f1 gapminder.txt

#Let's redirect the output to file `CountryList.txt`; Use `>` operator to write to file.
cut -f1 gapminder.txt > CountryList.txt

#How can you view CountryList.txt? Notice that country names repeat many times!
cat CountryList.txt

#2.Sort and select uniq names only
sort CountryList.txt > CountryList_Sorted.txt
uniq CountryList_Sorted.txt > CountryList_uniq.txt

#the above 2 lines of code could be substituted with one:
sort -u CountryList.txt > CountryList_uniq.txt   # same as sort and then select uniq lines (sort|uniq)

#Is it correct? Header got in the mix - be careful!

#3. And finally, how many countries? 
wc -l CountryList_uniq.txt > CountryCount_gapminder.txt

# Select botjh country and its resepctive continent.
cut -f1,2 gapminder.txt > CountryYear.txt

# Or we can run it in a list
cut -f1-3 gapminder.txt > CountryContinentYear.txt

# use `|` symbol to pass the output of one command as an input to the next command
cut -f1 gapminder.txt | sort -u | wc -l > CountryCount_gapminder_2.txt

#a quick fix to avoid counting header as a country  # introducing `grep`
cut -f1 gapminder.txt | grep -v "Country" | sort -u | wc -l > CountryCount_gapminder_3.txt

# 1. select all columns of interest - "Country", "Year", and "lifeExp.
cut -f1,3,4 gapminder.txt > LifeExp_All.txt

#2. get data for 2012 only
grep 2002 LifeExp_All.txt > LifeExp_2002.txt

#3. sort by 3rd column from min to max
sort -n -k3 LifeExp_2002.txt > LifeExp_2002_Sorted.txt

#4. select country with highest mortality rate
tail -n 1 LifeExp_2002_Sorted.txt > CountryHighestLifeExp.txt

#Or as a pipe:
cut -f1,3,4 gapminder.txt | grep 2002 | sort -n -k3 | tail -n 1 > CountryHighestLifeExp.txt

echo "cut -f1,3,4 gapminder.txt | grep 2002 | sort -n -k3 | tail -n 1 > CountryHighestLifeExp.txt" > MyFirstScript.sh

#try this
myName=James  #variable assignment
echo James  
echo myName
echo $myName  # need `$` to get the value of the variable

