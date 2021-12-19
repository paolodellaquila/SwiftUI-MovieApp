//
//  AddReviewViewModel.swift
//  MovieApp
//
//  Created by Francesco Paolo Dellaquila.
//

import Foundation

class AddReviewViewModel: ObservableObject {
    
    var title: String = ""
    var text: String = ""
    
    func addReviewForMovie(vm: MovieViewModel) {
        
        let movie: Movie? = Movie.byId(id: vm.movieId)
        
        let review = Review(context: Movie.viewContext)
        review.title = title
        review.text = text
        review.movie = movie
        
        // save the review
        try? review.save()
    }
    
}
