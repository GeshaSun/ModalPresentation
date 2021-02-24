//
//  MainView.swift
//  ModalPresentation
//
//  Created by Михаил Евсеев on 18.02.2021.
//

import UIKit

class MainView: UIView {
    
    init(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) {
        super.init(frame: CGRect(x: x, y: y, width: width, height: height))
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private let castomTextLable = "Castom modal presentation"
    private let defaultTextLable = "Default modal presentation"
    
    private let switchControl: UISwitch = {
        let switchControl = UISwitch()
        switchControl.isOn = false
        switchControl.translatesAutoresizingMaskIntoConstraints = false
        return switchControl
    }()
    
    private let switchLable: UILabel = {
        let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Present", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(MainViewController.tabBottun), for: .touchUpInside)
        button.backgroundColor = .systemGray3
        button.layer.cornerRadius = button.titleLabel!.frame.size.height / 2
        return button
    }()
    
    private func configureView(){
        self.backgroundColor = .systemGray5
        layoutSwitch()
        layoutLable()
        layoutButton()
    }
    
    private func layoutSwitch(){
        self.addSubview(switchControl)
        NSLayoutConstraint.activate([
            switchControl.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            switchControl.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: self.frame.height/5)
        ])
    }
    
    private func layoutLable(){
        self.addSubview(switchLable)
        switchControl.addTarget(MainViewController(), action: #selector(MainViewController.switchStateDidChange(_:)), for: .valueChanged)
        switchLable.text = defaultTextLable
        NSLayoutConstraint.activate([
            switchLable.bottomAnchor.constraint(equalTo: switchControl.topAnchor, constant: -20),
            switchLable.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            switchLable.heightAnchor.constraint(equalToConstant: self.frame.height/14)
        ])
    }
    
    private func layoutButton(){
        self.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            button.topAnchor.constraint(equalTo: self.switchControl.bottomAnchor, constant: 20),
            button.widthAnchor.constraint(equalToConstant: 100)
        ])
    }

}

extension MainView: switchOnDelegate {
    func switchOnStatus() -> Bool {
        return self.switchControl.isOn
    }
    
    
}

extension MainView: lableSwitchDelegate {
    func changeLableTextToCastm() {
        switchLable.text = castomTextLable
    }
    
    func chageLableTextToDef() {
        switchLable.text = defaultTextLable
    }
    
    
}
