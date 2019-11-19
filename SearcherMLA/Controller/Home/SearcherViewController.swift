//
//  SearcherViewController.swift
//  Ejemplo
//
//  Created by usuario on 17/11/2019.
//  Copyright © 2019 Nicolas. All rights reserved.
//

import UIKit


class SearcherViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        searchBar.delegate = self
        title = "Bienvendio a Mercado Libre"
        
    }
    
    //MARK: - Barra Busqueda
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let listvc = ListProductsViewController()
        let searchBarText = searchBar.text
        listvc.seachQuery = searchBarText
        navigationController?.pushViewController(listvc, animated: true)
    }
}
