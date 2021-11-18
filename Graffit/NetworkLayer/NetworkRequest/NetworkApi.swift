//
//  NetworkApi.swift
//  Graffit
//
//  Created by black on 17.11.2021.
//

import Foundation
import Alamofire

class NetworkApi {
    static let shared = NetworkApi()
    
    func sendRequest<Requset: BaseRequestProtocol, Model: Decodable>(request: Requset, model: Model, completion: @escaping(Model) -> Void) {
        guard let urlRequest = request.urlRequest else {
            return
        }
        AF.request(urlRequest).responseJSON { response in
            if let statusCode = response.response?.statusCode {
                switch statusCode {
                case 400:
                    print("Плохой запрос")
                case 500:
                    print("Ошибка с сервера")
                case 200...299:
                    if let data = response.data {
                        if let data = try? JSONDecoder().decode(Model.self, from: data) {
                            completion(data)
                        }
                    }
                default:
                    print("фейл с ошибкой \(statusCode)")
                }
            }
        }
    }
}
