//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by 이현호 on 2020/05/27.
//  Copyright © 2020 tempYsoup. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    let productImageView = UIImageView()
    let productNameLabel = UILabel()
    let productAddCartButton = UIButton()
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupContents()

    }
   
    private func setupContents() {
        view.addSubview(productImageView)
        configureProductImageView()
        setProductImageViewConstraints()
        
        view.addSubview(productNameLabel)
        configureProductNameLabel()
        setProductProductNameLabelConstraints()
        
        view.addSubview(productAddCartButton)
        configureProductAddCartButton()
        setProductProductAddCartButtonConstraints()
        
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
    
    private func setProductImageViewConstraints() {
        productImageView.translatesAutoresizingMaskIntoConstraints = false
        productImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        productImageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        productImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        productImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-20).isActive = true
    }
    
    private func setProductProductNameLabelConstraints() {
        productNameLabel.translatesAutoresizingMaskIntoConstraints = false
        productNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        productNameLabel.topAnchor.constraint(equalTo:  view.topAnchor, constant: 100).isActive = true
    }
    
    private func setProductProductAddCartButtonConstraints() {
        productAddCartButton.translatesAutoresizingMaskIntoConstraints = false
        productAddCartButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        productAddCartButton.topAnchor.constraint(equalTo:  productNameLabel.bottomAnchor, constant: 100).isActive = true
    }
    
    @objc
    private func addToCartButtonClick() {
        print("\(productNameLabel.text!) is tapped")
    }
    
}
