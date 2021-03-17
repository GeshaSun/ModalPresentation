//
//  SecondView.swift
//  ModalPresentation
//
//  Created by Михаил Евсеев on 18.02.2021.
//

import UIKit

class SecondCustomMPView: UIView {

    init(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) {
        super.init(frame: CGRect(x: x, y: y, width: width, height: height))
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView(){
        self.backgroundColor = .white
        self.layer.roundCorners([.topLeft, .topRight], radius: 20)
    }

}

extension CALayer {
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let roundingSize = CGSize(width: radius, height: radius)
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: roundingSize)
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.mask = mask
    }
}
