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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == segueIdentifier else { return }
        let formulaVC = segue.destination as! FormulaViewController
        formulaVC.buttonTag = (sender as! UIButton).tag
    }

    @IBAction func buttonOnePressed(_ sender: UIButton) {
        performSegue(withIdentifier: segueIdentifier, sender: sender)
    }
    
    @IBAction func buttonTwoPressed(_ sender: UIButton) {
        performSegue(withIdentifier: segueIdentifier, sender: sender)
    }
    
    @IBAction func buttonThreePressed(_ sender: UIButton) {
        performSegue(withIdentifier: segueIdentifier, sender: sender)
    }
}

