//
//  ViewController.swift
//  Lesson3HomeWork1
//
//  Created by Mac on 26.11.2020.
//

import UIKit
@IBDesignable class PrimaryButton: UIButton {

    @IBInspectable var cornerRadius:CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    
    @IBAction func deactivate(_ sender: Any) {
        self.isEnabled.toggle()
    }
    @IBAction func changeColor(_ sender: UIView) {
        let pred = Int.random(in: 1...3)
        switch pred {
        case 1: sender.backgroundColor = .systemPurple
        case 2: sender.backgroundColor = .systemRed
        case 3: sender.backgroundColor = .systemYellow
            
        default:
            sender.backgroundColor = .systemGreen
        }
    }
    @IBAction func changePosititn(_ sender: UIView, NSLayoutConstraint: NSLayoutConstraint) {
        NSLayoutConstraint.constant = 300
    }
}



class ViewController: UIViewController {

    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var rectView: UIView!
    
    @IBOutlet weak var PButton: PrimaryButton!
    
    @IBAction func changeCaP(_ sender: Any) {
        PButton.changeColor(rectView)
        PButton.deactivate((Any).self)
        topConstraint.constant = 300
        PButton.changePosititn(rectView, NSLayoutConstraint: topConstraint)
        UIView.animate(withDuration: 3) {
            self.view.layoutIfNeeded()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

