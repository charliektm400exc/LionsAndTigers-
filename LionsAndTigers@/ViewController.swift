//
//  ViewController.swift
//  LionsAndTigers@
//
//  Created by Charlie Franklin on 15/11/2014.
//  Copyright (c) 2014 Charlie Franklin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    
    var myTigers:[Tiger] = []
    
    var currentIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        myTiger.age = myTiger.ageInTigerYearFromAge(myTiger.age)
    
        
        myTiger.chuff()
        myTiger.chuffANumberOfTimes(5, isLoud: false)
        
        myTigers.append(myTiger)
        
        println("My Tiger's name is \(myTiger.name), its' breed is \(myTiger.breed), its' age is \(myTiger.age) and its' image is \(myTiger.image)")
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        
        secondTiger.age = secondTiger.ageInTigerYearFromAge(secondTiger.age)
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        thirdTiger.age = thirdTiger.ageInTigerYearFromAge(thirdTiger.age)
        
        var fourthTiger = Tiger()
        fourthTiger.name = "Spar"
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.age = 5
        fourthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        fourthTiger.age = fourthTiger.ageInTigerYearFromAge(fourthTiger.age)
        
        myTigers += [secondTiger, thirdTiger, fourthTiger]
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem)
    {
        var randomIndex:Int
       do {
        
        randomIndex = Int(arc4random_uniform(UInt32(myTigers.count))
        )} while currentIndex == randomIndex
        
        currentIndex = randomIndex
        
        let tiger = myTigers[randomIndex]
    
//    myImageView.image = tiger.image
//        nameLabel.text = tiger.name
//        ageLabel.text = "\(tiger.age)"
//        breedLabel.text = tiger.breed
//        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            self.myImageView.image = tiger.image
            self.nameLabel.text = tiger.name
            self.ageLabel.text = "\(tiger.age)"
            self.breedLabel.text = tiger.breed
            
            
            }, completion: {(finished: Bool) -> () in
                
        })
    }
    

}


