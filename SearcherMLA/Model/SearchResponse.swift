//
//  SearchResponse.swift
//  SearcherMLA
//
//  Created by usuario on 18/11/2019.
//  Copyright © 2019 Nicolas. All rights reserved.
//

import Foundation

struct SearchResponse: Decodable{
    
    let results: [Product]
    
    struct Product: Decodable{
        
        let title: String
        let price: Double
        let condition: String
        let buying_mode: String
        let accepts_mercadopago: Bool
        let available_quantity: Int
        
        
    }
}
