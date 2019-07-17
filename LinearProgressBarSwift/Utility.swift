//
//  Utility.swift
//  PartiStaff
//
//  Created by User Pc on 2/11/19.
//  Copyright © 2019 FAQ Interactive Ltd. All rights reserved.
//

import Foundation
import UIKit
import SystemConfiguration
import AVFoundation

let PROGRESS_MOVE_COLOR = "049bc6"
let PROGRESS_MOVE_BG = "a0cad6"

class Utility {

   
    class func addLinearProgressBar (parentView : UIView , subView : LinearProgressBar ){

        subView.backgroundColor = Utility.hexStringToUIColor(hex: PROGRESS_MOVE_BG, alpha: 1)
        subView.progressBarColor = Utility.hexStringToUIColor(hex: PROGRESS_MOVE_COLOR, alpha: 1)
        subView.heightForLinearBar = 2.50
        parentView.addSubview(subView)
        
    }
    
    class func hexStringToUIColor (hex:String , alpha: Float) -> UIColor {
        
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
    
    
}

