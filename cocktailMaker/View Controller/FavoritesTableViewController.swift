//
//  FavoritesTableViewController.swift
//  cocktailMaker
//
//  Created by Juan M Mariscal on 1/29/21.
//  Copyright © 2021 thecoderpilot. All rights reserved.
//

import UIKit

class FavoritesTableViewController: UITableViewController {

    var cocktailFavorites:FavoriteCocktail? {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cocktailFavorites?.favorites.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteCell", for: indexPath)
        let favoriteDrink = cocktailFavorites?.favorites[indexPath.row]
        cell.textLabel?.text = favoriteDrink?.drinkName
        

        return cell
    }


    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "ShowDetailFromTableSegue",
//            let DetailVC = segue.destination as? DetailCocktailViewController,
//            let selectedIndexPath = tableView.indexPathForSelectedRow {
//            if cocktails.count <= 0 {
//                let cocktail = drinks[selectedIndexPath.row]
//                DetailVC.cocktailID = cocktail
//            } else {
//                DetailVC.cocktailResult = cocktails[selectedIndexPath.row]
//            }
//        }
    }
    

}
