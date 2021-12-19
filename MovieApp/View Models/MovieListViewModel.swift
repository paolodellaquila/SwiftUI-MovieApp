//
//  MovieListViewModel.swift
//  MovieApp
//
//  Created by Francesco Paolo Dellaquila.
//

import Foundation
import CoreData

class MovieListViewModel: ObservableObject {
    
    @Published var movies = [MovieViewModel]()
    
    func deleteMovie(movie: MovieViewModel) {
        let movie: Movie? = Movie.byId(id: movie.movieId)
        if let movie = movie {
            try? movie.delete()
        }
    }
    
    func getAllMovies() {
        DispatchQueue.main.async {
            self.movies = Movie.all().map(MovieViewModel.init)
        }
    }
}

struct MovieViewModel {
    
    let movie: Movie
    
    var movieId: NSManagedObjectID {
        return movie.objectID
    }
    
    var title: String {
        return movie.title ?? ""
    }
    
    var director: String {
        return movie.director ?? "Not available"
    }
    
    var releaseDate: String? {
        return movie.releaseDate?.asFormattedString()
    }
    
    var rating: Int? {
        return Int(movie.rating)
    }
}
