//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by 이현호 on 2020/05/27.
//  Copyright © 2020 tempYsoup. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    @IBOutlet weak private var productImageView: UIImageView!
    @IBOutlet weak private var productNameLabel: UILabel!
    @IBOutlet weak private var productAddCartButton: UIButton!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContents()
    }
    
   
    private func setupContents() {
        configureProductImageView()
        configureProductNameLabel()
        configureProductAddCartButton()
        
    }
    
    
    private func configureProductImageView() {
        if let imageName = product?.fullscreenImageName {
            productImageView.image = UIImage(named: imageName)
        }
    }
    
    
    private func configureProductNameLabel() {
        
        productNameLabel.text = product?.name
        productNameLabel.font = UIFont.boldSystemFont(ofSize: 28)
    }
    
    
    private func configureProductAddCartButton() {
        let addToCartImage = UIImage(named: "button-addtocart")
        productAddCartButton.setImage(addToCartImage, for: .normal)
        productAddCartButton.addTarget(self, action: #selector(addToCartButtonClick), for: .touchUpInside)
    }
    
    
    @objc
    private func addToCartButtonClick() {
        print("\(productNameLabel.text!) is tapped")
    }
    
}
