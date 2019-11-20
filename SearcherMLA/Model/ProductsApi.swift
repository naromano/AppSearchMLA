//
//  ProductsApi.swift
//  SearcherMLA
//
//  Created by usuario on 19/11/2019.
//  Copyright © 2019 Nicolas. All rights reserved.


import Foundation

class ProductsApi{
    
    func downloadProducts(query: String, complition: @escaping (SearchResponse) -> ()) {
        
        guard let srtingUrl =  "https://api.mercadolibre.com/sites/MLA/search?q=\(query)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {return}
        
        guard let url = URL(string: srtingUrl) else{return}
        
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else{return}
            do{
                let json = try JSONDecoder().decode(SearchResponse.self, from: data)
                complition(json)
            } catch {
                print(error)
            }
        }.resume()
        
    }
    
}

