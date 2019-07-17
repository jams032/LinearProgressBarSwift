//
//  ViewController.swift
//  CircularProgressSwift
//
//  Created by Jamshed Alam on 17/7/19.
//  Copyright © 2019 Jamshed Alam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let linearBar: LinearProgressBar = LinearProgressBar()
    @IBOutlet weak var linearProgressBarHolder: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
         Utility.addLinearProgressBar(parentView: self.linearProgressBarHolder, subView: self.linearBar)
         self.linearBar.startAnimation()
        // Do any additional setup after loading the view.
    }

    override func viewDidDisappear(_ animated: Bool) {
        self.linearBar.stopAnimation()
    }

}

