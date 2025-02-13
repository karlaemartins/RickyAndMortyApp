//
//  CharacterListViewModel.swift
//  RickyAndMortyApp
//
//  Created by Karla E. Martins Fernandes on 11/01/25.
//

final class CharacterListViewModel {
    let service: CharacterServiceProtocol
    private(set) var nextPage = 1
    private(set) var charactersResponse: CharactersResponse?
    
    init(service: CharacterServiceProtocol = CharacterService()) {
        self.service = service
    }
    
    func fetchCharacters() {
        service.fetchCharacters(page: nextPage) { result in
            switch result {
            case .success(let response):
                self.charactersResponse = response
            case .failure(let failure):
                print(failure.localizedDescription)
            }
            
        }
        
    }
}
