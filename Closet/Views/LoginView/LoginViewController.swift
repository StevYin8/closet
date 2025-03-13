//
//  ViewController.swift
//  Closet
//
//  Created by 尹少军 on 2025/3/19.
//
import SwiftUI
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var iconOne: UIImageView!
    @IBOutlet weak var iconTwo: UIImageView!
    @IBOutlet weak var iconThree: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iconOne.image = UIImage(named: "Hanger")
        iconTwo.image = UIImage(named: "Closet")
        iconThree.image = UIImage(named: "DressingTable")
    }
        
        

    
    @IBAction func PhoneLogin(_ sender: Any) {
        let phoneLoginVC = UIHostingController(rootView: PhoneLoginView()) // 用 UIHostingController 包装 SwiftUI 视图
            self.present(phoneLoginVC, animated: true, completion: nil)
    }
    
    
    
    @IBAction func AppleLogin(_ sender: Any) {
    }
}


