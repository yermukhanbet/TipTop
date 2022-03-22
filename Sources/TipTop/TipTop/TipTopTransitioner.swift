//
//  CustomTransitioner.swift
//  TransitionCustom
//
//  Created by Yessen Yermukhanbet on 21.03.2022.
//

import UIKit

final class TipTopTransitioner: NSObject, UIViewControllerAnimatedTransitioning {
    
    private var isPushing: Bool
    private var fromView: UIView
    
    init(from: UIView, isPushing: Bool = true) {
        self.fromView = from
        self.isPushing = isPushing
    }

    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        self.isPushing ? pushVC(transitionContext) : popVC(transitionContext)
    }
    
    private func pushVC(_ transitionContext: UIViewControllerContextTransitioning) {
        
        let fromVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.from)!
        let toVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to)!
        
        let finalFrame = transitionContext.finalFrame(for: toVC)
        
        toVC.view.frame = self.fromView.frame
        
        transitionContext.containerView.insertSubview(toVC.view, aboveSubview: fromVC.view)
        
        UIView.animate(
            withDuration: transitionDuration(using: transitionContext),
            animations: {
                toVC.view.frame = finalFrame
        }, completion: {_ in
                self.isPushing = false
                transitionContext.completeTransition(true)
        })
    }
    
    private func popVC(_ transitionContext: UIViewControllerContextTransitioning) {
        
        let fromVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.from)!
        let toVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to)!
        
        transitionContext.containerView.insertSubview(toVC.view, belowSubview: fromVC.view)
        
        UIView.animate(
            withDuration: transitionDuration(using: transitionContext),
            animations: {
                fromVC.view.frame = self.fromView.frame
        }, completion: {_ in
                self.isPushing = true
                transitionContext.completeTransition(true)
        })
    }
}
