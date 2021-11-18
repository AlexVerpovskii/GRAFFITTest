//
//  BaseRequestProtocol.swift
//  Graffit
//
//  Created by black on 17.11.2021.
//

import Foundation

protocol BaseRequestProtocol {
    var urlRequest: URLRequest? { get }
    var parameters: [String : String] { get }
}
