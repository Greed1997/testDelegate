//
//  NextViewController.swift
//  testPrepareForSegue
//
//  Created by Александр on 01.08.2022.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet var someLabelOne: UILabel!
    @IBOutlet var someLabelTwo: UILabel!
    
    var delegate: NumberDelegate!
    var someNumber: Number!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        someLabelOne.text = someNumber.description
        someLabelTwo.text = delegate.setNumber().description
    }
    @IBAction func unwind() {
        dismiss(animated: true)
    }
    
    @IBAction func delegateButtonPressed() {
        someNumber = delegate.setNumber()
        someLabelTwo.text = someNumber.description
        //dismiss(animated: true)
    }
    
    

   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let firstVC = segue.destination as? FirstViewController else { return }
        firstVC.someNumber = someNumber
//        guard let tabBarController = firstVC as? TabBarViewController else { return }
//        tabBarController.someNumber = someNumber
    }
    

}
