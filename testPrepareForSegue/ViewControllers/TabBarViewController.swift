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
        guard let firstVC = viewControllers.first as? FirstViewController else { return }
        guard let lastVC = viewControllers.last as? LastViewController else { return }
        firstVC.someNumber = someNumber
        
        firstVC.someNumber = lastVC.someNumber
    }
}

