//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Aigerim Abitayeva on 03.04.2023.
//

import Foundation

struct Constants {
    static let API_KEY = "dd771c80f17aa83ffbacf880a51a1503"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
    case FailedTogetData
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {
            data, _, error in
            guard let data = data, error == nil else {return}
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(error))
            }
        } // task is created in pause mode
        task.resume()
    }
}
