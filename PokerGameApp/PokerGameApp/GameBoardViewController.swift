//
//  ViewController.swift
//  PokerGameApp
//
//  Created by 김하림 on 2023/03/13.
//

import UIKit



class GameBoardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg_pattern")!)
        var posX:CGFloat = 0
        let width = (self.view.bounds.width / 7)-2.5
        for _ in 0 ... 6 {
            var posY: CGFloat = 50
            
            let cardBack: UIImageView = {
                let height = width * 1.27
                let cardBack = UIImageView(frame: CGRect(x: posX, y: posY, width: width, height: height))
                let cardBackImage = UIImage(named: "card-back")!
                cardBack.image = cardBackImage
                return cardBack
            }()
            self.view.addSubview(cardBack)
            posX += width + 2.5
        }
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    

}

