//
//  ViewController.swift
//  timeConversionHackerRank
//
//  Created by Cristian Leonel Gibert on 8/6/16.
//  Copyright © 2016 MercadoPago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		//Time conversion solution
		let s = "12:45:54PM"
		var pmAM = ""

		// Verify if is AM or PM
		if (s.rangeOfString("AM") != nil || s.rangeOfString("am") != nil) {
			pmAM = "AM"
		} else {
			pmAM = "PM"
		}

		// Split the string into hh:mm:ss PM/AM
		var hhmmss = s.componentsSeparatedByString(pmAM)

		// Split the string at index 0 into hh mm ss
		var currentTimeArray = hhmmss[0].componentsSeparatedByString(":")

		// Set the correct hh format
		if (pmAM == "AM") {
			if (Int(currentTimeArray[0]) == 12) {
				print("00:\(currentTimeArray[1]):\(currentTimeArray[2])")
			} else {
				print("\(currentTimeArray[0]):\(currentTimeArray[1]):\(currentTimeArray[2])")
			}
		} else {
			let hours = Int(currentTimeArray[0])
			if (hours == 12) {
				print("\(hours!):\(currentTimeArray[1]):\(currentTimeArray[2])")
			} else {        
				print("\(hours!+12):\(currentTimeArray[1]):\(currentTimeArray[2])")
			}
		}
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

