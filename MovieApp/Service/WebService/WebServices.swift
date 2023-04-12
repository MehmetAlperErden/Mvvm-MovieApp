//
//  WebServices.swift
//  MovieApp
//
//  Created by Alper Erden on 11.04.2023.
//

import Alamofire

protocol ServiceProtocol {
    func fetchMovies(onSuccess: @escaping (Movies?) -> (), onError: @escaping (AFError) -> ())
}

final class Service: ServiceProtocol {
    func fetchMovies(onSuccess: @escaping (Movies?) -> (), onError: @escaping (Alamofire.AFError) -> ()) {
        ServiceManager.shared.fetch(path: Constant.ServiceEndPoint.moviesServiceEndPoint()) { (response: Movies) in
            onSuccess(response)
        } onError: { error in
            onError(error)
        }

    }
    
    
}
