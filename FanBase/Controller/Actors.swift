//
//  Actors.swift
//  FanBase
//
//  Created by Alena Khadieva on 15.04.2020.
//  Copyright © 2020 Alena Khadieva. All rights reserved.
//

import UIKit

class Actors: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource {
    
    private(set) public var actors = [Actor]()
    
    override class func awakeFromNib() {
        
        Actors.dataSource = self
        Actors.delegate = self
        
    }

    

}
