//
//  FilmCell.swift
//  FanBase
//
//  Created by Alena Khadieva on 15.04.2020.
//  Copyright © 2020 Alena Khadieva. All rights reserved.
//

import UIKit

class FilmCell: UITableViewCell {

    @IBOutlet weak var filmImage: UIImageView!
    @IBOutlet weak var filmTitle: UILabel!
    
    @IBOutlet weak var Actors: UICollectionView!
    
    private(set) public var actors = [Actor]()
    
    
    
    func  updateViews(film: Film) {
        filmImage.image = UIImage(named: film.imageName)
        filmTitle.text = film.title
        
        initActors(film: film)
        print(film.title,  "title" )
         
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        Actors.dataSource = self
        Actors.delegate = self
        
    }
    
}

extension FilmCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func initActors(film: Film) {
        actors = DataService.instance.getActors(forFilmTitle: film.title)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        actors.count
       }
       
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorCell", for: indexPath) as? ActorCell {
            let actor = actors[indexPath.row]
            cell.updateViews(actor: actor)
            return cell
        }
        return ActorCell()
       }
       
    
}

