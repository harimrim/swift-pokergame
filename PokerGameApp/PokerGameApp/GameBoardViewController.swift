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
        let viewWidth = self.view.bounds.width
        let cardWidth = (viewWidth / cardCount) - widthPadding
        var cardBackImage:UIImage? = nil
        if let cardBack = UIImage(named: "card-back") {
            cardBackImage = cardBack
        }
        
        var cardStackView:UIStackView = UIStackView()
            cardStackView.axis = .horizontal
            cardStackView.alignment = .fill
            cardStackView.distribution = .fillEqually
            cardStackView.spacing = widthPadding
        
        for _ in 1 ... Int(cardCount) {
            let cardBack:UIImageView = UIImageView()
            cardBack.contentMode = .scaleAspectFit
            cardBack.image = cardBackImage
            cardStackView.addArrangedSubview(cardBack)
        }
        cardStackView.frame = CGRect(x: cardLeftTopX, y: cardRightTopY, width: viewWidth, height: cardWidth)
        self.view.addSubview(cardStackView)

           
        print(heartQ.description)

    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    var heartQ = PokerCard(suit: .spade, rank: .K)
    
}



