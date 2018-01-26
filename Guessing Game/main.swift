//
//  main.swift
//  Guessing Game
//
//  Created by David Rademaker on 1/23/18.
//  Copyright © 2018 David Rademaker. All rights reserved.
//

import Foundation


var playingGame = true

while playingGame == true {
    
    
    let randomNumber = Int(arc4random_uniform(100))
    var guess: Int?
    var tries = 1
    
    print("Guess a number 1-100")
    
    guess = Int(readLine()!)
    while guess == nil {
        print("Guess a number")
        guess = Int(readLine()!)
    }
    
    while guess != randomNumber && tries < 5 {
        if randomNumber < guess! {
            print(" A little lower")
        } else if randomNumber > guess! {
            print(" A little higher")
        }
        print("Guess again")
        guess = Int(readLine()!)
        while guess == nil {
            print("Guess a number")
            guess = Int(readLine()!)
        }
        tries+=1
    }
    
    if randomNumber == guess! {
        print("CONGRATS YOU WON")
        print("Would you like to play again??")
        var answer = readLine()!
        while answer.lowercased() != "yes" && answer != "no" {
            print("yes or no")
            answer = readLine()!
        }
        if answer.lowercased() == "no"{
            playingGame = false
        }      else if answer.lowercased() == "yes" {
            playingGame = true
        }
    }
    if guess != randomNumber {
        print("You didn't get it, Would you like to play again?? The number was \(randomNumber)")
        var answer = readLine()!
        while answer.lowercased() != "yes" && answer.lowercased() != "no" {
            print("yes or no")
            answer = readLine()!
        }
        if answer.lowercased() == "no" {
            playingGame = false
        } else if answer.lowercased() == "yes" {
            playingGame = true
        }
    }
}
