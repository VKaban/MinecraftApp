//
//  LoginController.swift
//  MinecraftApp
//
//  Created by  Vital Milky on 10/13/18.
//  Copyright © 2018  Vital Milky. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    let inputsConteinerView: UIView  = {
        let uiView = UIView()
        uiView.backgroundColor = UIColor.white
        uiView.translatesAutoresizingMaskIntoConstraints = false
        uiView.layer.cornerRadius = 5
        uiView.layer.masksToBounds = true
        return uiView
    }()
    
    let loginRegisterButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(r: 38, g: 49, b: 27)
        button.setTitle("Register", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        return button
    }()
    
    let nameTextField : UITextField = {
        let textField = UITextField()
        
        textField.attributedPlaceholder = NSAttributedString(string:"Name", attributes: [NSForegroundColorAttributeName: UIColor(r: 205, g: 214, b: 238)])
        textField.textColor = UIColor(r: 205, g: 214, b: 238)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let nameSeparatorView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 205, g: 214, b: 238)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let emailTextField : UITextField = {
        let textField = UITextField()
        
        textField.attributedPlaceholder = NSAttributedString(string:"Email", attributes: [NSForegroundColorAttributeName: UIColor(r: 205, g: 214, b: 238)])
        textField.textColor = UIColor(r: 205, g: 214, b: 238)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let emailSeparatorView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 205, g: 214, b: 238)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let passwordTextField : UITextField = {
        let textField = UITextField()
        
        textField.attributedPlaceholder = NSAttributedString(string:"Password", attributes: [NSForegroundColorAttributeName: UIColor(r: 205, g: 214, b: 238)])
        textField.textColor = UIColor(r: 205, g: 214, b: 238)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let proffileImageView: UIImageView = {
       let imgv = UIImageView(image: #imageLiteral(resourceName: "icon"))
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFit
        return imgv
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = UIColor(r: 56, g: 110, b: 26)
        
        
        //inputsConteinerView.backgroundColor = UIColor(r: 205, g: 214, b: 238)
        
       
        
        view.addSubview(inputsConteinerView)
        view.addSubview(loginRegisterButton)
        view.addSubview(proffileImageView)
        
        setupInputConteinerView()
        setupRegisterButton()
        setupProffileImageView()
        
        
    }
    
    func setupProffileImageView(){
        proffileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        proffileImageView.bottomAnchor.constraint(equalTo: inputsConteinerView.topAnchor, constant: -12).isActive = true
        proffileImageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        proffileImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
    }

    func setupInputConteinerView(){
        //inputConteinerView costraints
        inputsConteinerView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        inputsConteinerView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        inputsConteinerView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1, constant: -24).isActive = true
        inputsConteinerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        //setup TextFields
        inputsConteinerView.addSubview(nameTextField)
        setupNameTextField()
        inputsConteinerView.addSubview(nameSeparatorView)
        setupNameSeparatorView()
        inputsConteinerView.addSubview(emailTextField)
        setupEmailTextField()
        inputsConteinerView.addSubview(emailSeparatorView)
        setupEmailSeparatorView()
        inputsConteinerView.addSubview(passwordTextField)
        setupPasswordTextField()

    }
    
    func setupRegisterButton(){
        //registerButton constraints
        loginRegisterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        loginRegisterButton.topAnchor.constraint(equalTo: inputsConteinerView.bottomAnchor,
                                                 constant: 12).isActive = true
        loginRegisterButton.widthAnchor.constraint(equalTo: inputsConteinerView.widthAnchor, multiplier: 1,
                                                   constant: 0).isActive = true
        loginRegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupNameTextField(){
        nameTextField.topAnchor.constraint(equalTo: inputsConteinerView.topAnchor, constant: 0).isActive = true
        nameTextField.rightAnchor.constraint(equalTo: inputsConteinerView.rightAnchor, constant: -12).isActive = true
        nameTextField.leftAnchor.constraint(equalTo: inputsConteinerView.leftAnchor, constant: 12).isActive = true
        nameTextField.heightAnchor.constraint(equalTo: inputsConteinerView.heightAnchor, multiplier: 1/3, constant: 0).isActive = true
        
    }
    
    func setupNameSeparatorView(){
        nameSeparatorView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 0).isActive = true
        nameSeparatorView.leftAnchor.constraint(equalTo: inputsConteinerView.leftAnchor, constant: 0).isActive = true
        nameSeparatorView.rightAnchor.constraint(equalTo: inputsConteinerView.rightAnchor, constant: 0).isActive = true
        nameSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    func setupEmailTextField(){
        emailTextField.topAnchor.constraint(equalTo: nameSeparatorView.bottomAnchor, constant: 0).isActive = true
        emailTextField.rightAnchor.constraint(equalTo: inputsConteinerView.rightAnchor, constant: -12).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: inputsConteinerView.leftAnchor, constant: 12).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: inputsConteinerView.heightAnchor, multiplier: 1/3, constant: 0).isActive = true
        
    }
    
    func setupEmailSeparatorView(){
        emailSeparatorView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 0).isActive = true
        emailSeparatorView.leftAnchor.constraint(equalTo: inputsConteinerView.leftAnchor, constant: 0).isActive = true
        emailSeparatorView.rightAnchor.constraint(equalTo: inputsConteinerView.rightAnchor, constant: 0).isActive = true
        emailSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    func setupPasswordTextField(){
        passwordTextField.topAnchor.constraint(equalTo: emailSeparatorView.bottomAnchor, constant: 0).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: inputsConteinerView.rightAnchor, constant: -12).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: inputsConteinerView.leftAnchor, constant: 12).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: inputsConteinerView.heightAnchor, multiplier: 1/3, constant: 0).isActive = true
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}


extension UIColor{
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
}
