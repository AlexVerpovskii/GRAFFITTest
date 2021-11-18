//
//  Constants.swift
//  Graffit
//
//  Created by black on 17.11.2021.
//

import Foundation

enum Constants {
    
    enum Font: String {
        case font = "abosanovabold"
    }
    
    enum Command: String {
        case create = "Создать команду"
        case edit = "Редактировать команду"
        case view = "Просмотреть все команды"
        case addChar = "Добавить персонажа"
        case saveTeam = "Сохранить команду"
    }
    
    enum Image: String {
        case menuIamge = "wallpapper"
        case teamImage = "teamCell"
    }
    
    enum Tittle: String {
        case manu = "Меню"
        case create = "Создание команды"
        case edit = "Редактирование команды"
        case view = "Просмотр команд"
    }
    
    enum Server {
        enum Host: String {
            case fakeApi = "www.breakingbadapi.com"
        }
        
        enum HTTPMethod: String {
            case get = "GET"
            case post = "POST"
            case put = "PUT"
            case patch = "PATCH"
            case delete = "DELETE"
        }

        enum Scheme: String {
            case http
            case https
        }
        
        enum NetworkError: Error {
            case noData
            case noUrlRequest
            case badRequest
            case other(statusCode: Int)
            case deserialization
        }
        
        enum EndPoint: String {
            case charactersList = "/api/characters"
        }
    }
}
