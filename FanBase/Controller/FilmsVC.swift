//
//  FilmsVC.swift
//  FanBase
//
//  Created by Alena Khadieva on 15.04.2020.
//  Copyright © 2020 Alena Khadieva. All rights reserved.
//

import UIKit

class FilmsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    @IBOutlet weak var Films: UITableView!
    
    
    private(set) public var actors = [Actor]()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        Films.dataSource = self
        Films.delegate = self
        
        
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getFilms().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "FilmCell") as? FilmCell {
            let film = DataService.instance.getFilms()[indexPath.row]
            cell.updateViews(film: film)
            return cell
        } else {
            return FilmCell()
        }
    }

    
    
}

