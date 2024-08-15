//
//  ViewController.swift
//  Test_Design
//
//  Created by User-UAM on 8/14/24.
// Pink: FFCBDB  \

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var musicNUmber: UILabel!
    @IBOutlet weak var fanNumber: UILabel!
    @IBOutlet weak var likeNumber: UILabel!
    
    
    @IBOutlet weak var musicImage: UIImageView!
    @IBOutlet weak var fansImage: UIImageView!
    @IBOutlet weak var likeImage: UIImageView!
    @IBOutlet weak var optionsMenu: UIImageView!
    @IBOutlet weak var arrowImage: UIImageView!
    @IBOutlet weak var profileImage: UIImageView!
    
    
    @IBOutlet weak var BelieverImage: UIImageView!
    @IBOutlet weak var RudeImage: UIImageView!
    @IBOutlet weak var UnforgettableView: UIImageView!
    @IBOutlet weak var KneeSocksImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeImageViewCircular(profileImage)
        makeImageViewCircular(BelieverImage)
        makeImageViewCircular(RudeImage)
        makeImageViewCircular(UnforgettableView)
        makeImageViewCircular(KneeSocksImage)
        
    }

    @IBAction func increaseNumber(_ sender: UIButton) {
        switch sender.currentTitle {
            
        case "music":
            updateNumberAndAnimate(label: musicNUmber, imageView: musicImage, alphaChange: true)
        case "fan":
            updateNumberAndAnimate(label: fanNumber, imageView: fansImage, alphaChange: true)
        case "like":
            updateNumberAndAnimate(label: likeNumber, imageView: likeImage, alphaChange: false)
        case "options":
            buttonPressed(optionsMenu)
        case "back":
            buttonPressed(arrowImage)
        default:
            print("Error")
        }
    }

        func updateNumberAndAnimate(label: UILabel, imageView: UIImageView, alphaChange: Bool) {
                label.text = "\(Int(label.text!)! + 1)"
            
                if alphaChange {
                    imageView.alpha = 0.5
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        imageView.alpha = 1.0
                    }
                } else {
                    imageView.tintColor = UIColor.red
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        imageView.tintColor = UIColor.white
                    }
                }
        }
            func buttonPressed(_ imageView: UIImageView){
                imageView.alpha = 0.5
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    imageView.alpha = 1.0
                }
            }
        
    func makeImageViewCircular(_ imageView: UIImageView){
        imageView.layer.masksToBounds = false
        imageView.layer.cornerRadius = imageView.frame.size.width/2
        imageView.clipsToBounds = true
    }
        }

