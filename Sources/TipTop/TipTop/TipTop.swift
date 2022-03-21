//
//  TipTop.swift
//  TransitionCustom
//
//  Created by Yessen Yermukhanbet on 21.03.2022.
//

import UIKit

final public class TipTop: NSObject, UIViewControllerTransitioningDelegate, UINavigationControllerDelegate {
    
    private let transitioner: TipTopTransitioner
    
    public init(with transitionFrom: UIView) {
        self.transitioner = TipTopTransitioner(from: transitionFrom)
    }
    
    public func navigationController(
        _ navigationController: UINavigationController,
        animationControllerFor operation: UINavigationController.Operation,
        from fromVC: UIViewController,
        to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
            return self.transitioner
    }
}
