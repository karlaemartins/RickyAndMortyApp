//
//  CharacterService.swift
//  RickyAndMortyApp
//
//  Created by Karla E. Martins Fernandes on 11/01/25.
//
import Foundation

enum ServiceError: Error {
    case invalidURL
    case noData
    case decodingError
    case networkError
}

protocol CharacterServiceProtocol {
    func fetchCharacters (page: Int, completion: @escaping (Result <CharactersResponse, ServiceError>) -> Void)
}



class CharacterService: CharacterServiceProtocol {
    private let baseURL = "https://rickandmortyapi.com/api/character"
    func fetchCharacters(page: Int = 1, completion: @escaping (Result<CharactersResponse, ServiceError>) -> Void) {
    
        guard let url = URL(string: "\(baseURL)/?page=\(page)") else {
            completion(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error {
                completion(.failure(.networkError))
                return
            }
            
            guard let data else {
                let error = ServiceError.noData
                completion(.failure(error))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(CharactersResponse.self, from: data)
                completion(.success(response))
            } catch {
                completion(.failure(.decodingError))
            }
        }
        
        task.resume()
    }
}
