# Quizzler-iOS

![Screenshot 2021-06-21 at 2 53 07 PM](https://user-images.githubusercontent.com/76988309/122739210-65d52580-d2a0-11eb-814b-a1c5fd29b94a.png)

A trivia quiz app.

## Goal

The goal is to create trivia quiz app that will navigate to the next screen when the answer is right/wrong and saving the score. Everytime user taps the right answer, that opition will be shown in either in green colour if it is correct or in red colour if it is wrong. We are going to use the holy grail of mobile design patterns: the Model View Controller (MVC) pattern. A design pattern is simply a repeatable and optimised solution to a common software problem.

If you have another field of expertise such as law or medicine, you’ll be glad to know that multiple choice question apps are one of the most popular types of educational apps on the App Store!

## Multiple Choice Quiz

```
 Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
```        
