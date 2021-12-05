//
//  Date+Extensions.swift
//  MovieApp
//
//  Created by Francesco Paolo Dellaquila
//

import Foundation

extension Date {
    
    func asFormattedString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter.string(from: self)
    }
    
}
