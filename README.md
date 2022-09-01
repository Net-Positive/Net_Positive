# Net Positive

## Information about the team and the project

Final project at the Data Analytics Bootcamp of **[neuefische](https://www.neuefische.de/en)**. This project has been developed in 4 weeks in July of 2022 by Alexander Prahl ([LinkedIn](https://www.linkedin.com/in/alexanderprahl/) / [GitHub](https://github.com/AlexPrahl)), Kevin Smit ([LinkedIn](https://www.linkedin.com/in/kevin-smit-bab873247/) / [GitHub](https://github.com/smitty1023)) and Kai-Frederik Schilling ([LinkedIn](www.linkedin.com/in/schillingk) / [GitHub](https://github.com/tispar)). Please feel free to contact us.  


Our goal was the development of a grade (score) for basketball players based on public available stats of the 2nd Division of the German Basketball League from 2014 to today. We want to use these stats to explain match outcomes, identify synergies in teams and make player scores more comparable.


## Project Summary

We started by writing a Webscraper to get the contents of the so called boxscores for each match since 2014. 

(insert image of scaped data here)

After formatting and cleaning the data we setup a SQL-database to perform an EDA to identify which game actions had the most impact on a teams success. We also took into account historical developments of the game and rule changes. Furthermore we explored differences in game  performance based on the player's position on the field. 

(insert some EDA-graphics here)

After having gathered all these informations from the boxscore-data we identified 7 major factors which had significant impact on the player's impact on the team's success. We normalized the data and weighted the factors by using a multiple regression algorithm. 

(insert score formula here)

Finally we measured the reliability of our score model by comparing it to the already existing efficiency score.

(instert correlations map here)


## Outlook

The next steps include:
* the development of a team based score
* the development of a score prediction algorithm
* further analysis of upcoming matches and different leagues