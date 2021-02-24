//
//  FirstViewController.swift
//  ModalPresentation
//
//  Created by Михаил Евсеев on 18.02.2021.
//

import UIKit

class DefViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

    private func configure(){
        
        self.view.addSubview(DefView(0, 0, self.view.frame.width, self.view.frame.height))
    }

}
