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
        
        if let backGroundPattern = UIImage(named: "bg_pattern") {
            self.view.backgroundColor = UIColor(patternImage: backGroundPattern)
        }
        
        let ratio = 1.27
        let widthPadding = 2.5
        let cardLeftTopX:CGFloat = 0
        let cardRightTopY:CGFloat = 50
        let cardCount:CGFloat = 7
        var positionX:CGFloat = cardLeftTopX
        let cardWidth = (self.view.bounds.width / cardCount) - widthPadding
        var cardBackImage:UIImage? = nil
        if let cardBack = UIImage(named: "card-back") {
            cardBackImage = cardBack
        }
        
        for _ in 0 ... 6 {
            var positionY:CGFloat = cardRightTopY
            let cardBack: UIImageView = {
                let cardHeight = cardWidth * ratio
                let cardBack = UIImageView(frame: CGRect(x: positionX, y: positionY, width: cardWidth, height: cardHeight))
                cardBack.image = cardBackImage
                return cardBack
            }()
            self.view.addSubview(cardBack)
            positionX += cardWidth + widthPadding
        }
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    

}

class PokerCard {
    enum Suit: Character {
        case spade = "♠"
        case heart = "♥"
        case diamond = "♦"
        case club = "♣"
    }
}

