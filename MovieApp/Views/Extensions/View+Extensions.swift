//
//  View+Extensions.swift
//  MovieApp
//
//  Created by Francesco Paolo Dellaquila
//

import Foundation
import SwiftUI

extension View {
    func embedInNavigationView() -> some View {
        NavigationView { self }
    }
}
