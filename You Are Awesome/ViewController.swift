//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Harrison Fish on 1/21/20.
//  Copyright © 2020 Harrison Fish. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func messageButtonPressed(_ sender: Any) {
        let messages = ["You are awesome",
                        "You are great",
                        "You are cool",
                        "You are last"]
        
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in:0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in:0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        if let sound = NSDataAsset(name: "sound1") {
            do {
                try  audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("error: not initialized")
            }
        } else {
            print("ERROR")
        }
    }
}
