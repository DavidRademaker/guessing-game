//
//  main.swift
//  Guessing Game
//
//  Created by David Rademaker on 1/23/18.
//  Copyright © 2018 David Rademaker. All rights reserved.
//

import Foundation

//generate random number
var playingGame = true

while playingGame == true {

var randomNumber = Int(arc4random_uniform(100))
var guess: Int?
var tries = 1
//ask for input
print("Guess a number 1-100")

//take input

guess = Int(readLine()!)!

//determine if wrong or right   loop until corect


while guess != randomNumber && tries < 5 {
    
    if randomNumber < guess! {
        print(" A little lower")
        
    } else if randomNumber > guess! {
        print(" A little higher")
    }
    
     print("Guess again")
     guess = Int(readLine()!)!

    tries+=1
}


    if randomNumber == guess! {
         print("CONGRATS YOU WON")
print("Would you like to play again??")
        var answer = readLine()
        if answer == "no"{
            playingGame = false
        }
        //if no play game is false
}

if guess != randomNumber {
    print("You didn't get it, Would you like to play again?? The number was \(randomNumber)")
    var answer = readLine()
    if answer == "no"{
        playingGame = false
    }
    }

    //if correct ask if would like to play again

//if incorrect tell answer then ask to play again

}












