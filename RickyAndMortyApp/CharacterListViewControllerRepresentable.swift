//
//  CharacterListViewControllerRepresentable.swift
//  RickyAndMortyApp
//
//  Created by Karla E. Martins Fernandes on 11/01/25.
//

import SwiftUI

struct CharacterListViewControllerRepresentable: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = CharacterListViewController
    
    func makeUIViewController(context: Context) -> CharacterListViewController {
        CharacterListViewController ()
    }
    
    func updateUIViewController(_ uiViewController: CharacterListViewController, context: Context) {
    }
}
