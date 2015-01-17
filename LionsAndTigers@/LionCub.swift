//
//  Lion Cub.swift
//  LionsAndTigers@
//
//  Created by Charlie Franklin on 28/12/2014.
//  Copyright (c) 2014 Charlie Franklin. All rights reserved.
//

import Foundation


class LionCub: Lion {
 
    func rubLionCubsBelly () {
    println("LionCub: Snuggle and be happy")
    }

    override func roar() {
        
        super.roar()
        println("LionCub: Growl Growl")
        
    }

    override func randomFact() -> String {
        var randomFactString:String
        if isAlphaMale {
            randomFactString = "Cubs are usually hidden in the dense bush for six weeks."
            
        }
        else {
            randomFactString = "Cubs begin eating meat at about the age of six weeks"
        }
        println(randomFactString)
        return randomFactString
    }
}