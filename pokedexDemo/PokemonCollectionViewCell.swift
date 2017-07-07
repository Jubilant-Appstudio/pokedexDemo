//
//  PokemonCollectionViewCell.swift
//  pokedexDemo
//
//  Created by Mahipalsinh on 7/7/17.
//  Copyright © 2017 Mahipalsinh. All rights reserved.
//

import UIKit

class PokemonCollectionViewCell: UICollectionViewCell {
    
    var pokemonObj : Pokemon!
    
    @IBOutlet weak var imgPokemon: UIImageView!
    @IBOutlet weak var lblPokemonName: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
     
        layer.cornerRadius = 5.0
        backgroundColor = UIColor.cyan
    }
    
    func configureCell(_ getPokemonObj : Pokemon) {
        
        self.pokemonObj = getPokemonObj
            
        lblPokemonName.text = self.pokemonObj.name.capitalized
        imgPokemon.image = UIImage(named: "\(self.pokemonObj.pokedexID)")
        
    }
}
