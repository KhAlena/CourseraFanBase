//
//  Film.swift
//  FanBase
//
//  Created by Alena Khadieva on 15.04.2020.
//  Copyright © 2020 Alena Khadieva. All rights reserved.
//

import Foundation

struct Film {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
 }
