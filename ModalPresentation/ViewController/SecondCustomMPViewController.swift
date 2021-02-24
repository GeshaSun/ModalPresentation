//
//  SecondViewController.swift
//  ModalPresentation
//
//  Created by Михаил Евсеев on 18.02.2021.
//

import UIKit

class SecondCustomMPViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

    private func configure(){
        
        let height: CGFloat = self.view.frame.height/2
        let xPosition: CGFloat = 0
        let width: CGFloat = view.frame.width
        let yPosition: CGFloat = self.view.frame.height - height
        
        self.view.addSubview(SecondCustomMPView(xPosition, yPosition, width, height))
        
    }

}
