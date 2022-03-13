//
//  FormulaViewController.swift
//  Percent Calculator
//
//  Created by Vlad Vinogrotskiy on 12.03.2022.
//

import UIKit

class FormulaViewController: UIViewController {

    @IBOutlet weak var labelScreen: UILabel!
    
//    enum CalculationOption {
//        case buttonOne
//        case buttonTwo
//        case buttonThree
//    }
    
    var buttonTag = Int()
//    var chosenOption = CalculationOption.self
    
    func getButtonTag () {
        if buttonTag == 1 {
            labelScreen.text = "Button One!"
        } else if buttonTag == 2 {
            labelScreen.text = "Button Two!"
        } else if buttonTag == 3 {
            labelScreen.text = "Button Three!"
        } else {
            labelScreen.text = "ERROR"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getButtonTag()
        

    }
}


//        switch chosenOption {
//        case .buttonOne:
//            labelScreen.text = "Button1"
//        case .buttonTwo:
//            labelScreen.text = "Button2"
//        case .buttonThree:
//            labelScreen.text = "Button3"
//        }

