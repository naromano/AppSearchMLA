//
//  ListProductsViewController.swift
//  SearcherMLA
//
//  Created by usuario on 19/11/2019.
//  Copyright © 2019 Nicolas. All rights reserved.
//

import UIKit

class ListProductsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    var seachQuery: String?
    var listProduct: [SearchResponse.Product] = []
  
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        title = "Resultados..."
        guard let sq = seachQuery else {return}
        ProductsApi().downloadProducts(query: sq, complition: searchResponde(sr:))
        
    }
    
    func searchResponde(sr: SearchResponse){
        
        listProduct = sr.results
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let product = listProduct[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = product.title
        cell.textLabel?.textColor = .black
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let product = listProduct[indexPath.row]
        let productvc = ProductViewController()
        productvc.product = product
        navigationController?.pushViewController(productvc, animated: true)
        
        
    }

    // MARK: - Table view data source

     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listProduct.count
    }
    
    
    
    

    
}

