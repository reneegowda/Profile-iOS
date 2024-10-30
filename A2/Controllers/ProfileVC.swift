//
//  ProfileVC.swift
//  A2
//
//  Created by Vin Bui on 6/4/23.
//

import UIKit

class ProfileVC: UIViewController {
    
    // MARK: - Properties (view)
    private let profileImageView = UIImageView()
    private let nameLabel = UILabel()
    private let nameLabel2 = UILabel()
    private let bio = UILabel()
    private let HometownIcon = UIImageView()
    private let HometownLabel = UILabel()
    
    // MARK: - Properties (data)
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupNameLabel()
        setupProfileImageView()
        setupNameLabel2()
        setupBio()
        setUpHometownLabel()
        setUpHometownIcon()
        
        
        
    }
    
    // MARK: - Set Up Views
    private func setupNameLabel(){
        //configure the view's properties
        nameLabel.text = "My Profile"
        nameLabel.font = .systemFont(ofSize: 16)
        nameLabel.textColor = UIColor.black
        
        //add view as a sublabel and enable autolayout
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //set up constraints
        NSLayoutConstraint.activate([
        
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        ])
    }
    
    private func setupProfileImageView(){
        profileImageView.image = UIImage(named: "archita_profile")
        //add view to subview
        view.addSubview(profileImageView)
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,
                                                  constant: 24),
            profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileImageView.heightAnchor.constraint(equalToConstant: 230),
            profileImageView.widthAnchor.constraint(equalToConstant: 230)
            ])
        
        profileImageView.layer.cornerRadius = 115
        profileImageView.layer.masksToBounds = true
    }
    
    private func setupNameLabel2(){
        //configure the view's properties
        nameLabel2.text = "Daenerys Targaryen"
        nameLabel2.font = .systemFont(ofSize: 32, weight: .semibold)
        nameLabel2.textColor = UIColor.black
  

        
        //add view as a sublabel and enable autolayout
        view.addSubview(nameLabel2)
        nameLabel2.translatesAutoresizingMaskIntoConstraints = false
        
        //set up constraints
        NSLayoutConstraint.activate([
        
            nameLabel2.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 16),
            nameLabel2.heightAnchor.constraint(equalToConstant: 65),
            nameLabel2.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    private func setupBio(){
        //configure the view's properties
        bio.text = "All men must die, but we are not men."
        bio.font = .italicSystemFont(ofSize: 16)
        bio.textColor = UIColor.black
  

        
        //add view as a sublabel and enable autolayout
        view.addSubview(bio)
        bio.translatesAutoresizingMaskIntoConstraints = false
        
        //set up constraints
        NSLayoutConstraint.activate([
        
            bio.topAnchor.constraint(equalTo: nameLabel2.bottomAnchor, constant: 8),
            bio.heightAnchor.constraint(equalToConstant: 19),
            bio.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    
    //complete the navigation layout here.
    private func setUpHometownIcon(){
        
        HometownIcon.image = UIImage(named: "home_icon")
        //add view to subview
        view.addSubview(HometownIcon)
        HometownIcon.translatesAutoresizingMaskIntoConstraints = false
        
        //set this up:
        NSLayoutConstraint.activate([
            HometownIcon.widthAnchor.constraint(equalToConstant: 24),
            HometownIcon.heightAnchor.constraint(equalToConstant: 24),
            HometownIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            HometownIcon.centerYAnchor.constraint(equalTo: HometownLabel.centerYAnchor)

            ])
        
    }
    
    //todo: create this method
    private func setUpHometownLabel(){
        

        //configure the view's properties
        HometownLabel.text = "Westeros"
        HometownLabel.font = .systemFont(ofSize: 16, weight: .medium)
        HometownLabel.textColor = UIColor.black
  

        
        //add view as a sublabel and enable autolayout
        view.addSubview(HometownLabel)
        HometownLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //set up constraints
        NSLayoutConstraint.activate([
        
            HometownLabel.topAnchor.constraint(equalTo: bio.bottomAnchor, constant: 48),
            HometownLabel.heightAnchor.constraint(equalToConstant: 19),
            HometownLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
      
    
}
