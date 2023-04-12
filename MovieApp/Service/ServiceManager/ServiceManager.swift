//
//  ServiceManager.swift
//  MovieApp
//
//  Created by Alper Erden on 11.04.2023.
//

import Alamofire

// MARK: - Service Manager
final class ServiceManager {
    static let shared: ServiceManager = ServiceManager()
}

extension ServiceManager {
    func fetch<T: Codable>(path: String, onSuccess: @escaping (T) -> (), onError: @escaping (AFError) -> ()) {
        AF.request(path, encoding: JSONEncoding.default).validate().responseDecodable(of: T.self) { response in
            switch response.result {
            case .success(let model):
                onSuccess(model)
            case .failure(let error):
                onError(error)
            }
        }
    }
}
