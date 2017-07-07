//
//  ViewController.swift
//  pokedexDemo
//
//  Created by Mahipalsinh on 7/7/17.
//  Copyright © 2017 Mahipalsinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pokemCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemCollection.delegate = self
        pokemCollection.dataSource = self
        
    }
}

extension ViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 105, height: 105)
    }
    
}
extension ViewController : UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
}

extension ViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pokeCell", for: indexPath) as? PokemonCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let pokeObj = Pokemon.init(getName: "first", getPodeDexId: indexPath.row + 1)
        cell.configureCell(pokeObj)
        
        return cell
    }
    
}
