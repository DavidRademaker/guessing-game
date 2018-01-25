//
//  main.swift
//  Guessing Game
//
//  Created by David Rademaker on 1/23/18.
//  Copyright © 2018 David Rademaker. All rights reserved.
//

import Foundation

//generate random number
var randomNumber = Int(arc4random_uniform(100))
var guess: Int?
var tries = 0
//ask for input
print("Guess a number 1-100")

//take input

guess = Int(readLine()!)!

//determine if wrong or right   loop until corect

while tries < 5 { if randomNumber == guess! {
    print("You got it")
} else if randomNumber < guess! {
    print(" A little lower, guess again") }

else if randomNumber > guess! {
        print(" A little higher, guess Again") }
tries += 1
}

//if correct ask if would like to play again

//if incorrect tell answer then ask to play again





