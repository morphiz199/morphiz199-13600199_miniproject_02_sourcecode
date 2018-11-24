//
//  page2.swift
//  SCF
//
//  Created by ICT on 9/11/2561 BE.
//  Copyright © 2561 Phanuphong Lengjaroen. All rights reserved.
//

import Foundation
import UIKit
class page2: UIViewController {
    
    @IBOutlet weak var ShowUIImage: UIImageView!
    @IBOutlet weak var ShowNameLabel: UILabel!
    var randomFood : Int = 0
    
    var FoodImageArray = ["1","2","3","4","5","6","7","8","9","10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeFoodFace()
    }
    
    @IBAction func RandomButton(_ sender: UIButton) {
        changeFoodFace()
    }
    func changeFoodFace() {
        randomFood = Int(arc4random_uniform(10))
        ShowUIImage.image = UIImage(named: FoodImageArray[randomFood])
        if FoodImageArray[randomFood] == FoodImageArray[0]{
            ShowNameLabel.text = "ร้าน : อิ่มหมี"
        }
        else if FoodImageArray[randomFood] == FoodImageArray[1]{
            ShowNameLabel.text = "ร้าน : ดง2"
        }
        else if FoodImageArray[randomFood] == FoodImageArray[2]{
            ShowNameLabel.text = "ร้าน : ครัวไทย"
        }
        else if FoodImageArray[randomFood] == FoodImageArray[3]{
            ShowNameLabel.text = "ร้าน : ชายสี่บะหมี่เกี๊ยว"
        }
        else if FoodImageArray[randomFood] == FoodImageArray[4]{
            ShowNameLabel.text = "ร้าน : ตะหลิวทอง"
        }
        else if FoodImageArray[randomFood] == FoodImageArray[5]{
            ShowNameLabel.text = "ร้าน : ไก่อิสลาม"
        }
        else if FoodImageArray[randomFood] == FoodImageArray[6]{
            ShowNameLabel.text = "ร้าน : เจริญอาหาร"
        }
        else if FoodImageArray[randomFood] == FoodImageArray[7]{
            ShowNameLabel.text = "ร้าน : บ้านไม้ไก่แซบ"
        }
        else if FoodImageArray[randomFood] == FoodImageArray[8]{
            ShowNameLabel.text = "ร้าน : ลุงชาติ"
        }
        else if FoodImageArray[randomFood] == FoodImageArray[9]{
            ShowNameLabel.text = "ร้าน : ดง1"
        }
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        changeFoodFace()
    }
}
