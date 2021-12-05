//
//  AddReviewViewModel.swift
//  MovieApp
//
//  Created by Francesco Paolo Dellaquila
//

import Foundation

class AddReviewViewModel: ObservableObject {
    
    var title: String = ""
    var text: String = ""
    
    func addReviewForMovie(vm: MovieViewModel) {
        
        let movie: Movie? = Movie.byId(id: vm.id)
        if let movie = movie {
            
            let review = Review(context: Review.viewContext)
            review.title = title
            review.text = text
            review.movie = movie
            review.save()
        }
        
       
        
    }
    
}
