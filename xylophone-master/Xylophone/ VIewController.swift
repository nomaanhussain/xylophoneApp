//
//  ViewController.swift
//  Xylophone
//
//  Created by Noman hussain  on 30/01/2018.
//  Copyright © 2018 Noman Hussain. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController , AVAudioPlayerDelegate{
    
    let soundArray = ["note1" , "note2" , "note3" , "note4" , "note5" , "note6" , "note7"]
    var audioPlayer :	 AVAudioPlayer!
    var selectedSound : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        selectedSound = soundArray[ sender.tag - 1]
        playSound()
    }
    
    func playSound (){
        
    let soundurl = Bundle.main.url(forResource: selectedSound, withExtension: "wav")
    
    do{
    audioPlayer  = try AVAudioPlayer(contentsOf : soundurl! )
    }
    catch{
    
    }
    audioPlayer.play()
    }

}

