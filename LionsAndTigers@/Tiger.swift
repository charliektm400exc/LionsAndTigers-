//
//  Tiger.swift
//  LionsAndTigers@
//
//  Created by Charlie Franklin on 15/11/2014.
//  Copyright (c) 2014 Charlie Franklin. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named: "")
    
    
    func chuff() {
        println("Tiger: Chuff Chuff")
    }
    
    func chuffANumberOfTimes (numberOfTimes: Int) {
        
        for var chuff = 0; chuff < numberOfTimes; ++chuff {
            self.chuff()
        }
    }
    
    func chuffANumberOfTimes (numberOfTimes: Int, isLoud: Bool) {
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; chuffTimes++ {
            if isLoud {
                chuff()
            }
            else {
                println("Tiger: purr purr")
            }
        }
        
    }
    
    func ageInTigerYearFromAge (regularAge: Int) -> Int {
        
        let newAge = regularAge * 3
        return regularAge
    }
    
    func randomFact() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        
        var randomFact:String; "Error"
        
        if randomNumber == 0 {
            randomFact = "The Tiger is the biggest species i nthe cat family"
        }
        else if randomNumber == 1 {
            randomFact = "Tigers can reach a length of 3.3 metres"

        }
        else if randomNumber == 2 {
            randomFact = "A group of tigers is known as an 'ambush' or 'streak' "
            
        }
        else {
            randomFact = "Error"
        }
    
        
        return randomFact
    }
    
    
    
    
}