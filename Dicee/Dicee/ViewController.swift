//
//  ViewController.swift
//  Dicee
//
//  Created by Jim Theodoropoulos on 03/07/2018.
//  Copyright © 2018 Jim Theodoropoulos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceeIndex1 : Int = 0
    var randomDiceeIndex2 : Int = 0
    
    let DiceeArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceeImageView1: UIImageView!
    @IBOutlet weak var diceeImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       refreshDiceeImages()
        
    }
  //iHopeYouLikeThat
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func rollButtonPressed(_ sender: Any) {
        refreshDiceeImages()
    }
    func refreshDiceeImages(){
        randomDiceeIndex1 = Int(arc4random_uniform(6))
        randomDiceeIndex2 = Int(arc4random_uniform(6))
        diceeImageView1.image = UIImage(named : DiceeArray[randomDiceeIndex1])
        diceeImageView2.image = UIImage(named : DiceeArray[randomDiceeIndex2])
        
   }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        refreshDiceeImages()
       
    }
   
}

