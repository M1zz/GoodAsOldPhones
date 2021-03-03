//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by 이현호 on 2020/05/26.
//  Copyright © 2020 tempYsoup. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    struct Cells {
        static let identifier = "productCell"
        static let segueIdentifier = "showProduct"
    }
    
    private var products: [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        products = dataFetch()
    }

    private func dataFetch() -> [Product]? {
        return [Product(name: "1907 Wall Set", cellImageName: "image-cell1", fullscreenImageName: "phone-fullscreen1"),
        Product(name: "1921 Dial Phone", cellImageName: "image-cell2", fullscreenImageName: "phone-fullscreen2"),
        Product(name: "1937 Desk Set", cellImageName: "image-cell3", fullscreenImageName: "phone-fullscreen3"),
        Product(name: "1984 Moto Portable", cellImageName: "image-cell4", fullscreenImageName: "phone-fullscreen4")]
    }
    
    // MARK: - View Transfer
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Cells.segueIdentifier {
        if let cell = sender as? UITableViewCell,
          let indexPath = tableView.indexPath(for: cell),
          let productVC = segue.destination as? ProductViewController {
          productVC.product = products?[indexPath.row]
        }
      }
    }
}

extension ProductsTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products?.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.identifier, for: indexPath)
        guard let products = products else { return cell }
        
        if let imageName = products[indexPath.row].cellImageName {
            cell.imageView?.image = UIImage(named: imageName)
        }
        cell.textLabel?.text = products[indexPath.row].name

        return cell
    }

    
}
