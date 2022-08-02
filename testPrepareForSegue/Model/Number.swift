//
//  Number.swift
//  testPrepareForSegue
//
//  Created by Александр on 01.08.2022.
//

import Foundation

struct Number {
    var number: Int
    
    var description: String {
        "\(number)"
    }
    
    static func getNumber() -> Number {
        Number(number: 10)
    }
}
