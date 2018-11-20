//
//  ViewController.swift
//  stopwatch
//
//  Created by Nyla Kamran on 6/5/17.
//  Copyright © 2017 kashif. All rights reserved.
//

import UIKit

class ViewController: UIViewController, sendupdatedvalue {
    
    var counter = 0.0
  //  var timer = Timer()
  //  var isPlaying = false
    
    @IBOutlet weak var timelabel: UILabel!
    
    @IBOutlet weak var startbutton: UIButton!
    
    @IBOutlet weak var stopbutton: UIButton!
    
    let watch = Stopwatch(delegate: nil)
    
    @IBAction func startTimer(_ sender: Any) {
        //watch.delegate = self
        if let watch = watch {
            watch.startTimer()
        }
   watch?.startTimer()
       }
    
    @IBAction func StopTimer(_ sender: Any) {
   watch?.pauseTimer()
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        watch?.resetTimer()
    }

 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timelabel.text = String(counter)
       // pauseButton.isEnabled = false
    }

    func UpdateTimer(info : double_t?)
    {
        timelabel.text = String(format: "%.1f", info!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

