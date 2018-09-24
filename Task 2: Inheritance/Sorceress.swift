//
//  Sorceress.swift
//  Task 2: Inheritance
//
//  Created by Brooke Huntington on 9/21/18.
//  Copyright © 2018 Brooke Huntington. All rights reserved.
//

import Foundation

class Sorceress: Hero {
    init(name: String) {
        let heroClass = "Sorceress"
        let hitPoints = 75
        let attackSpeed = 6
        let chanceToHit = 0.8
        let damageMin = 20
        let damageMax = 40
        let block = 0.4
        let turns_per_round = 0
        super.init(name: name, hitPoints: hitPoints, attackSpeed: attackSpeed, damageMax: damageMax, damageMin: damageMin, chanceToHit: chanceToHit, block: block, turns_per_round: turns_per_round, heroClass: heroClass)
    }
    //sorceress special attack
    func heal (hero: Sorceress) {
        let pointsHealed = Int(arc4random_uniform(UInt32(15))) + 5
        print("Your spell healed \(pointsHealed) hit points")
        hero.hitPoints += pointsHealed
        //add pointsHealed to hero hp
    }
    
    func attack (hero: Sorceress, opponent: Monster) -> Int {
        var playerTurns = 1
        while playerTurns == 1 {
            print("""
                
                ~~~~~ It's \(hero.name)'s turn (1 of 1)
                
                Please choose your attack from the following menu
                1) Normal attack
                2) Special attack
                3) Quit game
                """)
            let choice = readLine()
            if let attackChoice = Int(choice!) {
                if attackChoice == 1 {
                    hero.attackMonster(hero: hero, monster: opponent)
                    
                    if opponent.hitPoints <= 0 {
                        print("You killed \(opponent.name)")
                        playerTurns = 0
                    }
                    playerTurns = 0
                //heals sorceress
                } else if attackChoice == 2 {
                    hero.heal(hero: hero)
                    playerTurns = 0
                } else {
                    print("Okay, goodbye")
                    return 1
                }
            } else {
                print("Wrong input")
            }
            print("Press enter to continue...")
            let response = readLine()
        }
        return 0
    }
}
