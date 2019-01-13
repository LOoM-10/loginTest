//
//  ViewController.swift
//  login demo
//
//  Created by Dana on 1/13/19.
//  Copyright © 2019 Dana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginAction(_ sender: Any) {
        guard let emailString = emailTF.text else { return }
        guard let password = passwordTF.text else { return }
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let contentPage = storyBoard.instantiateViewController(withIdentifier: "ContentPage")
        navigationController?.pushViewController(contentPage, animated: true)
    }
    
}

