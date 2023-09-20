//
//  UIView + Extensions.swift
//  AppLoginCounter
//
//  Created by macbook on 20.09.2023.
//

import UIKit

extension UIView {
    
    public func addView(_ view: UIView) {
        self.addSubview(view)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
