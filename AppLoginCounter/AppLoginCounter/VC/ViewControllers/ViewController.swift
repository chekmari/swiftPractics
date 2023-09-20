//
//  ViewController.swift
//  AppLoginCounter
//
//  Created by macbook on 19.09.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var counterLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLabel()
        setConstraints()
        
        
    }

    
    
}

extension ViewController {
    
    private func setupLabel() {
        
        let count = getAppLaunchCounter()
        
        counterLabel = UILabel()
        counterLabel.text = "Сколько раз вы входили в приложение: \(count)"
        counterLabel.font = UIFont.systemFont(ofSize: 14)
        counterLabel.textColor = .black
        counterLabel.textAlignment = .center
        counterLabel.numberOfLines = 1
        view.addView(counterLabel)
        
    }
    
    private func setConstraints() {
    
        counterLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
        
    }
    
}


extension ViewController {
    
    func getAppLaunchCounter() -> Int {
        
        let userDefaults = UserDefaults.standard
        let launchCount = userDefaults.integer(forKey: "appLaunchCount")
        
        return launchCount
        
    }
    
    
    
}
