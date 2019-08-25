//
//  ViewController.swift
//  image-acclero-tron
//
//  Created by Sau on 8/25/19.
//  Copyright © 2019 Sau. All rights reserved.
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
        return imageArray.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallexCell", for: indexPath) as? ParallexCell else {return UITableViewCell()}
        cell.configureCell(withImage: imageArray[indexPath.row]!, andDescription: nameArray[indexPath.row])
        return cell
        
    }
    
    

}

