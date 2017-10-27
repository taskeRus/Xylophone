//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{

    var player: AVAudioPlayer!
    let massiveSound = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(noteNumber: sender.tag)
        
    }
    
    func playSound(noteNumber: Int) {
        let soundUrl = Bundle.main.url(forResource: massiveSound[noteNumber - 1], withExtension: "wav")
        
        do {
            player = try AVAudioPlayer(contentsOf: soundUrl!)
            
        } catch {
            print(error)
        }
        
        player.play()
    }
}
