//
//  ViewController.swift
//  task6
//
//  Created by Alex Antropoff on 16.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let squareView = UIView()
    var animator: UIDynamicAnimator!
    var snapping: UISnapBehavior!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        squareView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        squareView.center = view.center
        squareView.backgroundColor = .blue
        squareView.layer.cornerRadius=10
        view.addSubview(squareView)
        animator=UIDynamicAnimator(referenceView: view)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        
        let touchPoint = touch.location(in: view)
        animator.removeAllBehaviors()
        snapping = UISnapBehavior(item: squareView, snapTo: touchPoint)
        animator.addBehavior(snapping)
    }
    
    
}
