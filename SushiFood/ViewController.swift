//
//  ViewController.swift
//  SushiFood
//
//  Created by Servin Asanov on 13.02.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var menuButton = UIButton()
    private var basketButton = UIButton()
    private var firstLabel = UILabel()
    private var secondLabel = UILabel()
    
    private var galleryCollectionView = GalleryCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtons()
        setupLabels()
        setupGalleryCollectionView()
    }
    
    private func setupButtons() {
        // menuButton
        view.addSubview(menuButton)
        menuButton.setImage(UIImage(named: "more"), for: .normal)
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        
        menuButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        menuButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        menuButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        menuButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        
        // basketButton
        view.addSubview(basketButton)
        basketButton.setImage(UIImage(named: "basket"), for: .normal)
        basketButton.translatesAutoresizingMaskIntoConstraints = false
        
        basketButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        basketButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        basketButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        basketButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
    }
    
    private func setupLabels() {
        // firstLabel
        view.addSubview(firstLabel)
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        firstLabel.text = "Sushi Food"
        firstLabel.font = .boldSystemFont(ofSize: 40)
        
        firstLabel.topAnchor.constraint(equalTo: menuButton.bottomAnchor, constant: 15).isActive = true
        firstLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        firstLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        
        //secondLabel
        view.addSubview(secondLabel)
        secondLabel.text = "Delivery"
        secondLabel.font = .systemFont(ofSize: 24)
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        
        secondLabel.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 10).isActive = true
        secondLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        secondLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
    }
    
    private func setupGalleryCollectionView() {
        view.addSubview(galleryCollectionView)
        galleryCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        galleryCollectionView.topAnchor.constraint(equalTo: secondLabel.bottomAnchor, constant: 10).isActive = true
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        galleryCollectionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        galleryCollectionView.set(cells: SushiModel.fetchSushi())
    }
}

