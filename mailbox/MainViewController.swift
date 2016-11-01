//
//  MainViewController.swift
//  mailbox
//
//  Created by Doris Hernandez on 10/31/16.
//  Copyright © 2016 Doris Hernandez. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIScrollViewDelegate, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var superMessageView: UIView!
    @IBOutlet weak var messageView: UIImageView!
    @IBOutlet weak var feedImageView: UIImageView!
    
    @IBOutlet weak var checkImageView: UIImageView!
    @IBOutlet weak var deleteImageView: UIImageView!
    @IBOutlet weak var clockImageView: UIImageView!
    @IBOutlet weak var listImageView: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        scrollView.contentSize = feedImageView.frame.size
        
//        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector ((MainViewController.didSlideViewPan(_:))))
//        
//        
//        
//        
//        leftSwipe.direction = .left
//        
//        view.addGestureRecognizer(leftSwipe)
        
        
        checkImageView.alpha = 0
        deleteImageView.alpha = 0
        clockImageView.alpha = 0
        listImageView.alpha = 0
        
        
        
        
        
        
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
            
            
            
            
            if translation.x > 200 {
                UIView.animate(withDuration: 0.3, animations: {
                    self.checkImageView.alpha = 0
                    self.deleteImageView.alpha = 1
                    
                })
            } else {
                UIView.animate(withDuration: 0.3, animations: {
                    
                    self.checkImageView.alpha = 1
                    self.checkImageView.transform = CGAffineTransform(translationX: translation.x + -50, y: 0)
                    self.deleteImageView.alpha = 0
                })
            }
            
            if translation.x < -200 {
                UIView.animate(withDuration: 0.3, animations: {
                    self.clockImageView.alpha = 0
                    self.listImageView.alpha = 1
                })
            } else {
                UIView.animate(withDuration: 0.3, animations: {
                    self.clockImageView.alpha = 1
                    self.clockImageView.transform = CGAffineTransform(translationX: translation.x + 50, y: 0)
                    self.listImageView.alpha = 0
                })
            }
            
            

            
        } else if sender.state == .ended {
            
        }
        
        
        
        
    }


}
