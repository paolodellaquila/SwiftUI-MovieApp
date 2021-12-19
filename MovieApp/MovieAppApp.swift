//
//  MovieAppApp.swift
//  MovieApp
//
//  Created by Francesco Paolo Dellaquila.
//

import SwiftUI

@main
struct MovieAppApp: App {
    
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some Scene {
        WindowGroup {
            MovieListScreen()
        }
    }
}
