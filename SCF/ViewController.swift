//
//  ViewController.swift
//  SCF
//
//  Created by ICT on 9/11/2561 BE.
//  Copyright © 2561 Phanuphong Lengjaroen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LogoImage: UIImageView!
    let LogoImg = "logo"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LogoImage.image = UIImage(named: "logo")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

