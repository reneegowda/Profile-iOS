//
//  ProfileVC.swift
//  A2
//
//  Created by Vin Bui on 6/4/23.
//

import UIKit

class ProfileVC: UIViewController, EditProfileDelegate {
    
    // MARK: - Properties (view)
    private let profileImageView = UIImageView()
    private let nameLabel = UILabel()
    private let nameLabel2 = UILabel()
    private let bio = UILabel()
    private let HometownIcon = UIImageView()
    private let HometownLabel = UILabel()
    private let MajorLabel = UILabel()
    private let MajorIcon = UIImageView()
    private let parentView = UIView()
    private let editProfileButton = UIButton()
    
    // MARK: - Properties (data)
  
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up initial values and views
        HometownLabel.text = "Westeros"
        MajorLabel.text = "Government"
        
        
        view.backgroundColor = UIColor.white
        view.addSubview(parentView)
        parentView.addSubview(MajorLabel)
        parentView.addSubview(HometownLabel)
        setupNameLabel()
        setupProfileImageView()
        setupNameLabel2()
        setupBio()
        setUpHometownLabel()
        setUpHometownIcon()
        setUpMajorLabel()
        setUpMajorIcon()
        setUpEditProfileButton()
        
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
    
    
    private func setUpMajorLabel(){
        

        //configure the view's properties
        MajorLabel.text = "Government"
        MajorLabel.font = .systemFont(ofSize: 16, weight: .medium)
        MajorLabel.textColor = UIColor.black
  

        
        //add view as a sublabel and enable autolayout
        view.addSubview(HometownLabel)
        MajorLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //set up constraints
        NSLayoutConstraint.activate([
        
            MajorLabel.topAnchor.constraint(equalTo: HometownLabel.bottomAnchor, constant: 24),
            MajorLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
    private func setUpMajorIcon(){
        

        MajorIcon.image = UIImage(named: "book_icon")
        //add view to subview
        view.addSubview(MajorIcon)
        MajorIcon.translatesAutoresizingMaskIntoConstraints = false
        
        //set this up:
        NSLayoutConstraint.activate([
            MajorIcon.topAnchor.constraint(equalTo: HometownIcon.bottomAnchor, constant: 24),
            MajorIcon.widthAnchor.constraint(equalToConstant: 24),
            MajorIcon.heightAnchor.constraint(equalToConstant: 24),
            MajorIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            MajorIcon.centerYAnchor.constraint(equalTo: MajorLabel.centerYAnchor)

            ])
        
    }
    
    private func setUpEditProfileButton(){
        //configure the view's properties
        editProfileButton.setTitle("Edit Profile", for: .normal)
        editProfileButton.setTitleColor(UIColor.white, for: .normal)
        editProfileButton.backgroundColor = UIColor(red: 202/255, green: 66/255, blue: 56/255, alpha: 1.0)
        editProfileButton.layer.cornerRadius = 16
        
        // Add the button's action using addTarget
        editProfileButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        
        //add view as a sublabel and enable autolayout
        view.addSubview(editProfileButton)
        editProfileButton.translatesAutoresizingMaskIntoConstraints = false
        
        //set up constraints
        NSLayoutConstraint.activate([
        
        // Add the leading constraint (32 points from the left of 'view')
        editProfileButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),

        // Add the trailing constraint (32 points from the right of 'view')
        editProfileButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),

        // Add the bottom constraint (64 points above the bottom of 'view')
        editProfileButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -64),

        // Set a fixed height for the button (e.g., 50 points)
        editProfileButton.heightAnchor.constraint(equalToConstant: 50)
        
        ])
    }
    
    // Delegate method to update hometown and major
    func didUpdateProfile(hometown: String, major: String) {
            HometownLabel.text = hometown
            MajorLabel.text = major
    }
    
    // Define the function to be called when the button is pressed
        @objc func buttonTapped() {
            // Navigate to editProfileVC
            let editProfileVC = EditProfileVC(hometownStore: "Your Hometown", majorStore: "Your Major")
            
            // Set `self` as the delegate
            editProfileVC.delegate = self
            
            navigationController?.pushViewController(editProfileVC, animated: true)
        }
    
      
    
}







