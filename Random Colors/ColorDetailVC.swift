//
//  ColorDetailVC.swift
//  Random Colors
//
//  Created by Abdirizak Hassan on 10/19/21.
//

import UIKit

class ColorDetailVC: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? .blue
    }
    


}
