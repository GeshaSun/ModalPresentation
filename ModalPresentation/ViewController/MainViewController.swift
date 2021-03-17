//
//  MainViewController.swift
//  ModalPresentation
//
//  Created by Михаил Евсеев on 18.02.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    var delegateLable: lableSwitchDelegate?
    var delegateSwitch: switchOnDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

    private func configure(){
        let newView = MainView(0, 0, self.view.frame.width, self.view.frame.height)
        self.view.addSubview(newView)
        self.delegateLable = newView
        self.delegateSwitch = newView
    }
    
    @objc func switchStateDidChange(_ sender:UISwitch){
        if (sender.isOn){
            delegateLable?.changeLableTextToCustom()
            
        }
        else{
            delegateLable?.changeLableTextToDef()
        }
    }
    
    @objc func tabButton(){
        guard let delegateSwitch = delegateSwitch else { return }
        
        if (delegateSwitch.switchOnStatus()){
            let presentVC = SecondCustomMPViewController()
            self.present(presentVC, animated: true, completion: nil)
        }else{
            let presentVC = DefViewController()
            self.present(presentVC, animated: true, completion: nil)
        }
    }
}
