//
//  ViewController.swift
//  Begin
//
//  Created by Matthew Bowyer on 10/23/14.
//  Copyright (c) 2014 Bowyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        println("Hello")
        
        let languageName = "Swift"
        var version = 1.0
        let introduced = 2014
        let isAwesome = true
        
        let someString = "I appear to be a string"
        let components = "~/Documents/Swift".pathComponents
        for character in "mouse" {
            println(character)
        }
        let dog: Character = "D"
        let cow: Character = "C"
        //let dogCow = dog + cow
        //let intruction = "Beware of the" + dog
        let a = 3, b = 5
        
        // no identifieers
        let mathResult = "\(a) times \(b) is \(a*b)"
        println(mathResult)
        
        //no parenthesis
        var sated = false
        while !sated {
            println("Eating Cake")
            sated = true
        }
        
        var names = ["Anna", "Alex", "Brian", "Jack"] //Array
        var numberOfLegs = ["ant": 6, "snake": 0, "cheetah": 4] //Dictionary
        
        //tuples and how to iterate dictionaries
        for (animalName, legCount) in numberOfLegs{
            println("\(animalName)s have \(legCount) legs")
        }
        
        //iteration
        for number in 1...5 {
            println("\(number) times 4 is \(number * 4)")
        }
        
        //clasic for loop
        for var doctor = 1; doctor <= 13; ++doctor{
            println(doctor)
        }
        
        // array teration
        for name in ["Anna", "Alex", "Brian", "Jack"] {
            println("Hello \(name)")
        }
        
        //How to change arrays
        var shoppingList = ["Eggs", "Milk"]
        println(shoppingList[0])
        shoppingList += ["Flour"]
        shoppingList += ["Chesse", "Butter", "Chocolate Spread"]
        shoppingList[2...4] = ["Bannanas", "Apples"]
        
        for ingredients in shoppingList{
            println(ingredients)
        }
        
        //How to change Dictionaries
        numberOfLegs = ["ant": 6, "snake": 0, "cheetah": 4]
        numberOfLegs["spider"] = 273
        numberOfLegs["spider"] = 8
        
        //Optionns
        let possibleLegCount: Int? = numberOfLegs["ardvark"]
        
        if possibleLegCount == nil{
            println( "Aardvark was not found")
        }else {
            let legCount = possibleLegCount! //Unwrapping Integer from option
            println("An Aardvark has \(legCount) legs")
        }

        //Unwrapping and checking
        if let legCount = possibleLegCount {
            println("An Aardvark has \(legCount) legs")
            //if statements
            if legCount == 0 {
                println("It has slithers and slides around")
            } else if legCount == 1 {
                println("It hops")
            } else {
                println("It walks")
            }
            // Switch statement is poweful in swift
            switch legCount {
                case 0: println("It slides")
                case 1: println("It hops")
                case 2, 3, 5: println("It limps")
                case 6...8: println(legCount)
                default: println("It walks")
            }
        }
        
        var x = "Tom"
        switch x {
            case "Joe:": println("J")
            case "Tom": println("Gottem")
            case "Jane": println("No")
            case "lame": println("Sup")
            default: println("Default")
        }
        
        sayHello("Children")
        sayHello("")
        
        
        func buildGreeting(name: String = "World") -> String {
            return "Hello" + name
        }
        
        let greeting = buildGreeting()

        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sayHello(name: String){
        println("Hello \(name)")
    }
    
}

