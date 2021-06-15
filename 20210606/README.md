# 20210606

This program was written to solve the weekly challenge for the [NPR Sunday Puzzle for June 6, 2021](https://www.npr.org/2021/06/06/1003633804/sunday-puzzle-television-scramble). The challenge was to think of country and its capital that, when their names are combined, the name of an Academy Award for Best Picture winner appears within.

The solution was to take a list of coutries with their capitals and a list of Best Picture winners, then search for the name of the Best Picture winners. I implemented this in perl using datasets for [Oscar winners](https://cs.uwaterloo.ca/~s255khan/oscars.html) and [world geography](https://github.com/icyrockcom/country-capitals/blob/master/data/country-list.csv). Unlike several of my solutions, this program returns the one and only solution with no need to sort through a set of possible results.
