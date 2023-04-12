//
//  ServiceConstant.swift
//  MovieApp
//
//  Created by Alper Erden on 11.04.2023.
// http://api.themoviedb.org/3/discover/movie?api_key=59d1ea6d131e11d3a7f4921da8243138

import Foundation

extension Constant {
    enum ServiceEndPoint: String {
        case BASE_URL = "http://api.themoviedb.org/3/discover/movie?"
        case API_KEY = "api_key=59d1ea6d131e11d3a7f4921da8243138"
        
        static func moviesServiceEndPoint() -> String {
            "\(BASE_URL.rawValue)\(API_KEY.rawValue)"
        }
    }
}
