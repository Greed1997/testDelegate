//
//  LastViewController.swift
//  testPrepareForSegue
//
//  Created by Александр on 01.08.2022.
//

import UIKit

class LastViewController: UIViewController {

    @IBOutlet var someLabel: UILabel!
    var someNumber: Number!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        someLabel.text = someNumber.description
        // Do any additional setup after loading the view.
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
