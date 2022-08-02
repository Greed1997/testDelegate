//
//  TabBarViewController.swift
//  testPrepareForSegue
//
//  Created by Александр on 01.08.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    var someNumber = Number.getNumber()
    
    override func viewDidLoad() {
       set()
    }
    private func set() {
        guard let viewControllers = viewControllers else { return }
        if let firstVC = viewControllers.first as? FirstViewController {
            firstVC.someNumber = someNumber
        }
        if let lastVC = viewControllers.last as? LastViewController {
            lastVC.someNumber = someNumber
        }
    }
}
