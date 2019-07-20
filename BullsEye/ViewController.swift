//
//  ViewController.swift
//  BullsEye
//
//  Created by Apple on 7/20/19.
//  Copyright © 2019 Anypli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mSlider: UISlider!
    @IBOutlet weak var roundValue: UILabel!
    @IBOutlet weak var scoreValue: UILabel!
    @IBOutlet weak var guessValue: UILabel!
    var currentValue: Int = 50
    var currentRound: Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        guessValue.text = getRandomNumber()
        scoreValue.text = "0"
        roundValue.text = String(currentRound)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func showAlert(){
        let message = "the slider value is \(currentValue)"
        let alert = UIAlertController(title: "Hello, World",
                                      message: message,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style:.default, handler:nil)
      
        alert.addAction(action)
      
        present(alert, animated: true, completion: nil)
        guessValue.text = getRandomNumber()
        currentRound+=1
        roundValue.text = String(currentRound)
    }
   
    @IBAction func startOver(_ sender: UIButton) {
        currentRound = 0
        roundValue.text = String(currentRound)
        mSlider.value = 50
    }
    @IBAction func sliderMoved(_ sender: UISlider) {
       
        changeCurrentValue(forValue: sender.value)
        
    }
    
    func getRandomNumber() -> String{
        let rand = Int.random(in: 1...100)
        return String(rand)
        
    }
     func changeCurrentValue(forValue value: Float) {
         currentValue =  lroundf(value)
        
    }
}

