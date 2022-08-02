//
//  FirstViewController.swift
//  testPrepareForSegue
//
//  Created by Александр on 01.08.2022.
//

import UIKit

protocol NumberDelegate {
    func setNumber()
}

class FirstViewController: UIViewController {

    @IBOutlet var someLabel: UILabel!
    
    var someNumber: Number!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        someLabel.text = someNumber.description
        // Do any additional setup after loading the view.
    }
    
    @IBAction func segueButtonPressed() {
        performSegue(withIdentifier: "segueID", sender: someNumber)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nextVC = segue.destination as? NextViewController else { return }
        nextVC.delegate = self
        nextVC.someNumber = someNumber
    }

}

extension FirstViewController: NumberDelegate {
    func setNumber() {
        let newNumber = Number(number: someNumber.number + 5)
        someNumber = newNumber
    }
}
