//
//  FirstViewController.swift
//  testPrepareForSegue
//
//  Created by Александр on 01.08.2022.
//

import UIKit

protocol NumberDelegate {
    func setNumber() -> Number
}

class FirstViewController: UIViewController {

    @IBOutlet var someLabel: UILabel!
    
    var someNumber: Number!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        someLabel.text = someNumber.description
    }
    
    @IBAction func segueButtonPressed() {
        performSegue(withIdentifier: "segueID", sender: someNumber)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nextVC = segue.destination as? NextViewController else { return }
        tabBarController.someNumber = someNumber
        nextVC.delegate = self
        nextVC.someNumber = someNumber
    }

}

extension FirstViewController: NumberDelegate {
    func setNumber() -> Number {
        var newNumber = someNumber
        if newNumber?.number != nil {
            newNumber?.number += 5
        } else {
            someNumber = newNumber
        }
        return newNumber ?? someNumber
    }
}
