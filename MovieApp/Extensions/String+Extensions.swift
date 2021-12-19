//
//  String+Extensions.swift
//  MovieApp
//
//  Created by Francesco Paolo Dellaquila.
//

import Foundation

extension String {
    
    func asDate() -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter.date(from: self)
    }
}
