//
//  ProductViewController.swift
//  SearcherMLA
//
//  Created by usuario on 19/11/2019.
//  Copyright © 2019 Nicolas. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelCondition: UILabel!
    @IBOutlet weak var labelBuyingMode: UILabel!
    
    @IBOutlet weak var labelAceptMercadoPago: UILabel!
    var product: SearchResponse.Product?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        dataProduct()

    }
    
    func dataProduct(){
        guard let name = product?.title else {return}
        labelName.text = "Nombre: \(name)"
        guard let price = product?.price else {return}
        labelPrice.text = "Precio: \(price)"
        guard let condition = product?.condition else {return}
        labelCondition.text  = "Condicion: \(condition)"
        guard let buying_mode = product?.buying_mode else {return}
        labelBuyingMode.text  = "Modo de compra: \(buying_mode)"
        guard let accepts_mercadopago = product?.accepts_mercadopago else {return}
        labelAceptMercadoPago.text  = "Acepta mercado pago?: \(accepts_mercadopago)"

    }


}
