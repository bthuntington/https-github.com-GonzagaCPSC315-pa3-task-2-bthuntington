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

        let hit_points = 75
        let attackSpeed = 6
        let chanceToHit = 0.8
        let damageMin = 20
        let damageMax = 40
        let block = 0.4
        let turns_per_round = 0
    super.init(name: name, hit_points: hit_points, attackSpeed: attackSpeed, damageMax: damageMax, damageMin: damageMin, chanceToHit: chanceToHit, block: block, turns_per_round: turns_per_round)
    }
    //sorceress special attack
    func heal () {
        var pointsHealed = Int(arc4random_uniform(UInt32(15))) + 5
        print("Your spell healed \(pointsHealed) hit points")
        //add pointsHealed to hero hp
    }
}
