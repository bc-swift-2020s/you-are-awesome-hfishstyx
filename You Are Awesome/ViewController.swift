//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Harrison Fish on 1/21/20.
//  Copyright © 2020 Harrison Fish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func messageButtonPressed(_ sender: Any) {
        let messages = ["You are awesome",
                        "You are great",
                        "You are cool",
                        "You are last"]
        
        messageLabel.text = messages[Int.random(in:0...messages.count-1)]
        imageView.image = UIImage(named: "image\(Int.random(in:0...totalNumberOfImages))")
//        messageNumber += 1
//        if messageNumber == messages.count {
//            messageNumber = 0
//
//        let imageName = "image\(imageNumber)"
//        imageView.image = UIImage (named: imageName)
//        imageNumber = imageNumber + 1
//        if imageNumber == 10 {
//            imageNumber = 0
//        }
//        let awesomeMessage = "You are awesome"
//        let greatMessage = "You are great"
//
//        if messageLabel.text == awesomeMessage {
//            messageLabel.text = greatMessage
//            imageView.image = UIImage (named: imageName)
//        } else if messageLabel.text == greatMessage {
//            messageLabel.text = "You are da bomb"
//            imageView.image = UIImage (named: imageName)
//        } else {
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage (named: imageName)
//    }
//
//}
//}
}
}
