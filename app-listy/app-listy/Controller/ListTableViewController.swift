//
//  ListTableViewController.swift
//  app-listy
//
//  Created by Nicholas Coggin on 1/28/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell", for: indexPath) as? ParallaxCell else { return UITableViewCell() }
        cell.configureCell(withImage: imagesArray[indexPath.row], andDescription: nameArray[indexPath.row])
        return cell
    }

}

