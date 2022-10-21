//
//  File.swift
//  homework2
//
//  Created by robert on 2022/10/21.
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(white: 1, alpha: 0.1)
        let darkTextLabel = UILabel()
        darkTextLabel.text = "Shimmer"
        darkTextLabel.textColor = UIColor(white: 1, alpha: 1)
        darkTextLabel.font = UIFont.systemFont(ofSize: 80)
        darkTextLabel.textAlignment = .center
        darkTextLabel.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 400)
        
        let shinyTextLabel = UILabel()
        shinyTextLabel.text = "Shimmer"
        shinyTextLabel.textColor = .white
        shinyTextLabel.font = UIFont.systemFont(ofSize: 80)
        shinyTextLabel.textAlignment = .center
        shinyTextLabel.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 400)
        
        view.addSubview(shinyTextLabel)
        
        let gradient = CAGradientLayer()
        
        gradient.frame = shinyTextLabel.frame
        gradient.colors = [UIColor.clear.cgColor, UIColor.white.cgColor,UIColor.clear.cgColor]
        gradient.locations = [0.0, 0.5, 1.0]
        let angle = -60 * CGFloat.pi / 180
        gradient.transform = CATransform3DMakeRotation(angle, 0, 0, 1)

        shinyTextLabel.layer.mask = gradient
        
        
        let animation = CABasicAnimation(keyPath: "transform.translation.x")
        animation.duration = 2
        animation.repeatCount = Float.infinity
        animation.autoreverses = false
        animation.fromValue = -view.frame.width
        animation.toValue = view.frame.width
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards

        gradient.add(animation, forKey: "shimmerKey")
        
    }

}
