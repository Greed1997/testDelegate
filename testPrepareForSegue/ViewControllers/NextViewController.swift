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

        
    }
    @IBAction func unwind() {
        dismiss(animated: true)
    }
    
    @IBAction func delegateButtonPressed() {
        delegate.setNumber()
        someLabelTwo.text = someNumber.description
        //dismiss(animated: true)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
