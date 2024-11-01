//
//  EditProfileVC.swift
//  A2
//
//  Created by Vin Bui on 6/4/23.
//

import UIKit

class EditProfileVC: UIViewController {
    
    // MARK: - Properties (view)
    // MARK: - Properties (data)
    
    // MARK: - viewDidLoad and init
    
    weak var delegate: EditProfileDelegate? // Delegate property

    private let parentView = UIView()
    private let profileImageView = UIImageView()
    private let name = UILabel()
    private let bio = UILabel()
    private let hometown = UILabel()
    private let hometownText = UITextField()
    private let nameLabel = UILabel()
    private let majorLabel = UILabel()
    private let majorField = UITextField()
    
    //for the button
    private let saveButton = UIButton()
    
    //to store hometown and major:
    private var hometownStore: String
    private var majorStore: String
    
    //initializer:
    init(hometownStore: String, majorStore: String){
        self.hometownStore = hometownStore
        self.majorStore = majorStore
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        view.addSubview(parentView)
        setupNameLabel()
        profileImageView2()
        setupName()
        setupBio()
        setuphometown()
        setuphometownField()
        setupMajor()
        setupMajorField()
        setUpSaveButton()
        
        //Set the initial text fields
        hometownText.text = hometownStore
        majorField.text = majorStore

        
    }
    
    
    
    // MARK: - Set Up Views
    private func setUpSaveButton(){
        //configure the view's properties
        saveButton.setTitle("Save", for: .normal)
        saveButton.setTitleColor(UIColor.white, for: .normal)
        saveButton.backgroundColor = UIColor(red: 202/255, green: 66/255, blue: 56/255, alpha: 1.0)
        saveButton.layer.cornerRadius = 16
        
        //Add the button's action using addTarget
        saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)

        
        //add view as a sublabel and enable autolayout
        view.addSubview(saveButton)
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        
        //set up constraints
        NSLayoutConstraint.activate([
        
        // Add the leading constraint (32 points from the left of 'view')
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),

        // Add the trailing constraint (32 points from the right of 'view')
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),

        // Add the bottom constraint (64 points above the bottom of 'view')
            saveButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -64),

        // Set a fixed height for the button (e.g., 50 points)
            saveButton.heightAnchor.constraint(equalToConstant: 50)
        
        ])
    }
    
   
    
    
    
    
    
    private func setupNameLabel(){
        //configure the view's properties
        nameLabel.text = "Edit Profile"
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
    
    private func profileImageView2(){
        profileImageView.image = UIImage(named: "archita_profile")
        //add view to subview
        view.addSubview(profileImageView)
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        

        NSLayoutConstraint.activate([
            // Set leading constraint (32 points from the left of 'view')
                profileImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),

                // Set top constraint further down (e.g., 150 points from the top of 'view')
                profileImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150), // Adjust as needed

                // Set width and height to be the same to make it square
                profileImageView.widthAnchor.constraint(equalToConstant: 100), // Adjust size as needed
                profileImageView.heightAnchor.constraint(equalTo: profileImageView.widthAnchor)
            ])
        
        profileImageView.layer.cornerRadius = 50 // Half of width/height to make it circular
        profileImageView.layer.masksToBounds = true


    }
    
    
    
    private func setupName(){
        //configure the view's properties
        name.text = "Daenerys Targaryen"
        name.font = .systemFont(ofSize: 24, weight: .medium)
        name.textColor = UIColor.black
  

        
        //add view as a sublabel and enable autolayout
        view.addSubview(name)
        name.translatesAutoresizingMaskIntoConstraints = false
        
        //set up constraints
        NSLayoutConstraint.activate([
            
            name.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 16),
            //name.topAnchor.constraint(equalTo: view.topAnchor, constant: 106),
            name.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor)

            
        ])
    }
    
    private func setupBio(){
        //configure the view's properties
        bio.text = "All men must die, but we are not men."
        bio.font = .italicSystemFont(ofSize: 12)
        bio.textColor = UIColor.black
  

        
        //add view as a sublabel and enable autolayout
        view.addSubview(bio)
        bio.translatesAutoresizingMaskIntoConstraints = false
        
        //set up constraints
        NSLayoutConstraint.activate([
            
            bio.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 16),
            bio.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 4),
            //name.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor)

            
        ])
    }
    
    private func setuphometown(){
        
        hometown.text = "Hometown"
        hometown.font = .systemFont(ofSize: 14, weight: .medium)
        hometown.textColor = UIColor.black
        
        //add view as a sublabel and enable autolayout
        view.addSubview(hometown)
        hometown.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            hometown.bottomAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 70),
            hometown.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32)
        ])
        
    }
    
    private func setuphometownField(){
        
        hometownText.layer.borderWidth = 1
        hometownText.layer.borderColor = UIColor.a2.silver.cgColor
        hometownText.layer.cornerRadius = 8
        
        //add view as a sublabel and enable autolayout
        view.addSubview(hometownText)
        hometownText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // Set top constraint (adjust the constant as needed)
            hometownText.topAnchor.constraint(equalTo: hometown.bottomAnchor, constant: 4),

            // Set leading constraint
            hometownText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),

            // Set trailing constraint
            hometownText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),

            // Set height constraint
            hometownText.heightAnchor.constraint(equalToConstant: 40) // Adjust height as needed
           
        ])
        
    }
    
    private func setupMajor(){
        
        majorLabel.text = "Major"
        majorLabel.font = .systemFont(ofSize: 14, weight: .medium)
        majorLabel.textColor = UIColor.black
        
        //add view as a sublabel and enable autolayout
        view.addSubview(majorLabel)
        majorLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            majorLabel.topAnchor.constraint(equalTo: hometownText.bottomAnchor, constant: 24),
            majorLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32)
        ])
        
    }
    
    private func setupMajorField(){
        
        majorField.layer.borderWidth = 1
        majorField.layer.borderColor = UIColor.a2.silver.cgColor
        majorField.layer.cornerRadius = 8
        
        //add view as a sublabel and enable autolayout
        view.addSubview(majorField)
        majorField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // Set top constraint (adjust the constant as needed)
            majorField.topAnchor.constraint(equalTo: majorLabel.bottomAnchor, constant: 4),

            // Set leading constraint
            majorField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),

            // Set trailing constraint
            majorField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),

            // Set height constraint
            majorField.heightAnchor.constraint(equalToConstant: 40) // Adjust height as needed
           
        ])
        
    }
    
    @objc private func saveButtonTapped(){
        //pop this view controller from this navigation stack
        navigationController?.popViewController(animated: true)
        
        //pass data back to delegate before popping
        delegate?.didUpdateProfile(hometown: hometownText.text ?? "", major: majorField.text ?? "")
        // Pop the view controller
        navigationController?.popViewController(animated: true)
        
    }
    
}

//protocol that includes function to update the profile
protocol EditProfileDelegate: AnyObject{
    func didUpdateProfile(hometown: String, major: String)
}


