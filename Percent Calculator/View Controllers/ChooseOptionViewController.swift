//
//  ViewController.swift
//  Percent Calculator
//
//  Created by Vlad Vinogrotskiy on 12.03.2022.
//

import UIKit

class ChooseOptionViewController: UIViewController {
    
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    
    var segueIdentifier = "goToOption"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonOnePressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: segueIdentifier, sender: UIButton?.self)
        
        func prepare(for segue: UIStoryboardSegue, sender: UIButton) {
            guard let formulaVC = segue.destination as? FormulaViewController
            else { return }

            formulaVC.buttonTag = buttonOne.tag

        }
    }
    
    @IBAction func buttonTwoPressed(_ sender: UIButton) {
        performSegue(withIdentifier: segueIdentifier, sender: UIButton?.self)
        
        func prepare(for segue: UIStoryboardSegue, sender: UIButton) {
            guard let formulaVC = segue.destination as? FormulaViewController
            else { return }

            formulaVC.buttonTag = buttonTwo.tag

        }
    }
    
    @IBAction func buttonThreePressed(_ sender: UIButton) {
        performSegue(withIdentifier: segueIdentifier, sender: UIButton?.self)
        
        func prepare(for segue: UIStoryboardSegue, sender: UIButton) {
            guard let formulaVC = segue.destination as? FormulaViewController
            else { return }

            formulaVC.buttonTag = buttonThree.tag

        }
    }
    
}

