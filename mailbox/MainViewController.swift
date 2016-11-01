//
//  MainViewController.swift
//  mailbox
//
//  Created by Doris Hernandez on 10/31/16.
//  Copyright © 2016 Doris Hernandez. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIScrollViewDelegate, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var superMessageView: UIView!
    @IBOutlet weak var messageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector ((MainViewController.didSlideViewPan(_:))))
//        
//        
//        
//        
//        leftSwipe.direction = .left
//        
//        view.addGestureRecognizer(leftSwipe)
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didSlideViewPan(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: view)
        
        if sender.state == .began {
            
            UIView.animate(withDuration: 0.2, animations: { 

                
            })
            
            
        } else if sender.state == .changed {
            
            var superViewMessageBackground: UIColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            
            
            
            messageView.transform = CGAffineTransform(translationX: translation.x, y: 0)
            
            if translation.x > 200 {
                superViewMessageBackground = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            } else if translation.x > 50 {
                superViewMessageBackground = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            } else if translation.x < -200 {
                superViewMessageBackground = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
            }else if translation.x < -50 {
                superViewMessageBackground = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
            }
            
            
            UIView.animate(withDuration: 0.2, animations: { 
                self.superMessageView.backgroundColor = superViewMessageBackground
            })
            
            
            
            
        } else if sender.state == .ended {
            
        }
        
        
        
        
    }


}
