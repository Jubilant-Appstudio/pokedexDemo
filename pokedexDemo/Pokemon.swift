//
//  Pokemon.swift
//  pokedexDemo
//
//  Created by Mahipalsinh on 7/7/17.
//  Copyright © 2017 Mahipalsinh. All rights reserved.
//

import Foundation

class Pokemon {

    fileprivate var _name : String!
    fileprivate var _pokedexID : Int!
    
    var name : String {
        return _name
    }
    
    var pokedexID : Int {
        return _pokedexID
    }
    
    init(getName : String, getPodeDexId : Int) {
        self._name = getName
        self._pokedexID = getPodeDexId
    }
    
}
