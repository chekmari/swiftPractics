//
//  CounterLabel.swift
//  AppLoginCounter
//
//  Created by macbook on 20.09.2023.
//

import UIKit

class CounterLabel: UIView {
    
    var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLabel() {
        label = UILabel()
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 26)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 1
        addView(label)
    }
    
}
