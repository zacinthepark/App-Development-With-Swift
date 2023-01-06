//
//  ViewController.swift
//  Light
//
//  Created by zac on 2021/09/10.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true
}

extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
}

extension ViewController {
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
}

extension ViewController {
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
}
