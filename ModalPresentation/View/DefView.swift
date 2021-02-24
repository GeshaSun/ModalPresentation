//
//  FirstView.swift
//  ModalPresentation
//
//  Created by Михаил Евсеев on 18.02.2021.
//

import UIKit

class DefView: UIView {

    init(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) {
        super.init(frame: CGRect(x: x, y: y, width: width, height: height))
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView(){
        self.backgroundColor = .brown
    }

}
