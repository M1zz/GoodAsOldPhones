//
//  ContactUsViewController.swift
//  GoodAsOldPhones
//
//  Created by 이현호 on 2020/05/22.
//  Copyright © 2020 tempYsoup. All rights reserved.
//

import UIKit

class ContactUsViewController: UIViewController {
    
    var aboutUsHeaderImageView = UIImageView()
    var aboutUsTitleLabel = UILabel()
    var aboutUsDescriptionLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 10, height: 20))
    var contactTitleLabel = UILabel()
    var contactEmailImageView = UIImageView()
    var contactEmailLabel = UILabel()
    var contactPhoneImageView = UIImageView()
    var contactPhoneLabel = UILabel()
    var contactWebImageView = UIImageView()
    var contactWebLabel = UILabel()
    var scrollView = UIScrollView()
    var contentView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScrollView()
        setupContents()
    }
    
    func setupScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints  = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        configureScrollView()
        
        setScrollViewConstraints()
        setContentViewConstraints()
    }
    
    func setupContents() {
        contentView.addSubview(aboutUsHeaderImageView)
        contentView.addSubview(aboutUsTitleLabel)
        contentView.addSubview(aboutUsDescriptionLabel)
        contentView.addSubview(contactTitleLabel)
        contentView.addSubview(contactEmailImageView)
        contentView.addSubview(contactEmailLabel)
        contentView.addSubview(contactPhoneImageView)
        contentView.addSubview(contactPhoneLabel)
        contentView.addSubview(contactWebImageView)
        contentView.addSubview(contactWebLabel)
        
        configureAboutUsHeaderImageView()
        configureAboutUsTitleLabel()
        configureAboutUsDescriptionLabel()
        configureContactTitleLabel()
        configureContactEmailImageView()
        configureContactEmailLabel()
        configureContactPhoneImageView()
        configureContactPhoneLabel()
        configureContactWebImageView()
        configureContactWebLabel()
        
        setAboutUsHeaderImageViewConstraints()
        setAboutUsTitleLabelConstraints()
        setAboutUsDescriptionLabelConstraints()
        setAboutUsContactTitleLabelConstraints()
        setAboutUsContactEmailImageViewConstraints()
        setAboutUsContactEmailLabelConstraints()
        setAboutUsContactPhoneImageViewConstraints()
        setAboutUsContactPhoneLabelConstraints()
        setAboutUsContactWebImageViewConstraints()
        setAboutUsContactWebLabelConstraints()
    }
    
    func configureScrollView() {
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }

    func configureAboutUsHeaderImageView() {
        
        let headerImage: UIImage = UIImage(named: "header-contact")!
        aboutUsHeaderImageView.image = headerImage
    }
    
    func configureAboutUsTitleLabel() {
        aboutUsTitleLabel.text = "About Us"
        aboutUsTitleLabel.font = UIFont.boldSystemFont(ofSize: 28)
        
    }
    
    func configureAboutUsDescriptionLabel() {
        aboutUsDescriptionLabel.text = "IOS를 공부하고 있는 개발자 입니다.\n원래는 데이터 사이언스를 했지만,\n최근 IOS 개발에 푹 빠져있습니다. \n\n\n이쁜 것을 그리기 위해 노력하는 중 입니다!\n태클과 피드백은 언제나 환영입니다."
        
        aboutUsDescriptionLabel.numberOfLines = 0;
        aboutUsDescriptionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping;
    }
    
    func configureContactTitleLabel() {
        contactTitleLabel.text = "Contact"
        contactTitleLabel.font = UIFont.boldSystemFont(ofSize: 28)
    }
    
    func configureContactEmailImageView() {
        let emailImage: UIImage = UIImage(named: "icon-about-email")!
        contactEmailImageView.image = emailImage
    }
    
    func configureContactEmailLabel() {
        contactEmailLabel.text = "mizzking75@gmail.com"
    }
    
    func configureContactPhoneImageView() {
        let phoneImage: UIImage = UIImage(named: "icon-about-phone")!
        contactPhoneImageView.image = phoneImage
    }
    
    func configureContactPhoneLabel() {
        contactPhoneLabel.text = "010-2375-5880"
    }
    
    func configureContactWebImageView() {
        let webImage: UIImage = UIImage(named: "icon-about-website")!
        contactWebImageView.image = webImage
    }
    
    func configureContactWebLabel() {
        contactWebLabel.text = "http://dev200ok.blogspot.com/"
    }
    
    func setScrollViewConstraints() {
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func setContentViewConstraints() {
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    
    func setAboutUsHeaderImageViewConstraints() {
        aboutUsHeaderImageView.translatesAutoresizingMaskIntoConstraints = false
        aboutUsHeaderImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        aboutUsHeaderImageView.topAnchor.constraint(equalTo:  view.safeAreaLayoutGuide.topAnchor).isActive = true
        aboutUsHeaderImageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    }
    
    func setAboutUsTitleLabelConstraints() {
        aboutUsTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        aboutUsTitleLabel.centerXAnchor.constraint(equalTo:view.centerXAnchor)
            .isActive = true
        aboutUsTitleLabel.topAnchor.constraint(equalTo:  aboutUsHeaderImageView.bottomAnchor,constant: 50).isActive = true
    }
    
    func setAboutUsDescriptionLabelConstraints(){
        aboutUsDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        aboutUsDescriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        aboutUsDescriptionLabel.topAnchor.constraint(equalTo:  aboutUsTitleLabel.bottomAnchor,constant: 50).isActive = true
    }
    
    func setAboutUsContactTitleLabelConstraints() {
        contactTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        contactTitleLabel.centerXAnchor.constraint(equalTo:view.centerXAnchor)
            .isActive = true
        contactTitleLabel.topAnchor.constraint(equalTo:  aboutUsDescriptionLabel.bottomAnchor,constant: 50).isActive = true
    }
    
    func setAboutUsContactEmailImageViewConstraints() {
        contactEmailImageView.translatesAutoresizingMaskIntoConstraints = false
        contactEmailImageView.topAnchor.constraint(equalTo:  contactTitleLabel.bottomAnchor,constant: 50).isActive = true
        contactEmailImageView.leadingAnchor.constraint(equalTo: aboutUsDescriptionLabel.leadingAnchor).isActive = true
    }
    
    func setAboutUsContactEmailLabelConstraints() {
        contactEmailLabel.translatesAutoresizingMaskIntoConstraints = false
        contactEmailLabel.topAnchor.constraint(equalTo:  contactTitleLabel.bottomAnchor,constant: 50).isActive = true
        contactEmailLabel.centerYAnchor.constraint(equalTo: contactEmailImageView.centerYAnchor).isActive = true
        contactEmailLabel.leadingAnchor.constraint(equalTo: contactEmailImageView.trailingAnchor, constant: 20).isActive = true
    }
    
    func setAboutUsContactPhoneImageViewConstraints() {
        contactPhoneImageView.translatesAutoresizingMaskIntoConstraints = false
        contactPhoneImageView.topAnchor.constraint(equalTo:  contactEmailImageView.bottomAnchor,constant: 20).isActive = true
        contactPhoneImageView.leadingAnchor.constraint(equalTo: aboutUsDescriptionLabel.leadingAnchor).isActive = true
    }
    
    func setAboutUsContactPhoneLabelConstraints() {
        contactPhoneLabel.translatesAutoresizingMaskIntoConstraints = false
        contactPhoneLabel.topAnchor.constraint(equalTo:  contactEmailImageView.bottomAnchor,constant: 20).isActive = true
        contactPhoneLabel.centerYAnchor.constraint(equalTo: contactPhoneImageView.centerYAnchor).isActive = true
        contactPhoneLabel.leadingAnchor.constraint(equalTo: contactPhoneImageView.trailingAnchor, constant: 20).isActive = true
    }
    
    func setAboutUsContactWebImageViewConstraints() {
        contactWebImageView.translatesAutoresizingMaskIntoConstraints = false
        contactWebImageView.topAnchor.constraint(equalTo:  contactPhoneImageView.bottomAnchor,constant: 20).isActive = true
        contactWebImageView.leadingAnchor.constraint(equalTo: aboutUsDescriptionLabel.leadingAnchor).isActive = true
    }
    
    func setAboutUsContactWebLabelConstraints() {
        contactWebLabel.translatesAutoresizingMaskIntoConstraints = false
        contactWebLabel.topAnchor.constraint(equalTo:  contactPhoneImageView.bottomAnchor,constant: 20).isActive = true
        contactWebLabel.centerYAnchor.constraint(equalTo: contactWebImageView.centerYAnchor).isActive = true
        contactWebLabel.leadingAnchor.constraint(equalTo: contactWebImageView.trailingAnchor, constant: 20).isActive = true
    }
    
}
