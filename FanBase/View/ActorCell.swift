//
//  ActorCell.swift
//  FanBase
//
//  Created by Alena Khadieva on 15.04.2020.
//  Copyright © 2020 Alena Khadieva. All rights reserved.
//

import UIKit

class ActorCell: UICollectionViewCell {
    
    @IBOutlet weak var actorImage: UIImageView!
    @IBOutlet weak var actorName: UILabel!
    
    func updateViews(actor: Actor) {
        actorImage.image = UIImage(named: actor.imageName)
        actorName.text = actor.name
    }
    
    
}
