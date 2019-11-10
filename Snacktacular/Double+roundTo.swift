//
//  Double+roundTo.swift
//  Snacktacular
//
//  Created by Daniel Yang on 11/9/19.
//  Copyright © 2019 John Gallaugher. All rights reserved.
//

import Foundation

// rounds any Double to "places" places, e.g. if value = 3.275, value.roundTo(place: 1) returns 3.3

extension Double {
    
    func roundTo(places: Int) -> Double {
        let tenToPower = pow(10.0, Double((places >= 0 ? places : 0)))
        let roundedValue = (self * tenToPower).rounded() / tenToPower
        return roundedValue
    }
    
}
