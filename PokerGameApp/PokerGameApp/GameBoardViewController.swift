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
        
        for _ in 0 ... 6 {
            let cardBack:UIImageView = UIImageView()
            cardBack.contentMode = .scaleAspectFit
            cardBack.image = cardBackImage
            cardStackView.addArrangedSubview(cardBack)
        }
        
        cardStackView.frame = CGRect(x: cardLeftTopX, y: cardRightTopY, width: viewWidth, height: cardWidth)
        self.view.addSubview(cardStackView)
        
        print(heartQ.cardDescription())
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    var heartQ = PokerCard(suit: .spade, rank: .K)
    
}

class PokerCard {
    // 연관된 계층 구조를 깔끔하게 표현하기 위해서 nested Type 사용
    enum Suit: Character {
        case spade = "♠"
        case heart = "♥"
        case diamond = "♦"
        case club = "♣"
    }
    // 카드의 랭크는 추후 승패를 위해 비교해야 하니 Int Type 사용
    enum Rank: Int {
        case A = 1, two, three, four, five, six, seven, eight, nine, ten, J, Q, K
        
        func convert() -> String {
            switch self {
            case.A:
                return "A"
            case.J:
                return "J"
            case.Q:
                return "Q"
            case.K:
                return "K"
            default:
                return String(self.rawValue)
            }
        }
    }
    
    var suit:Suit
    var rank:Rank
    
    init(suit:Suit, rank:Rank) {
        self.suit = suit
        self.rank = rank
    }
    
    func cardDescription() -> String {
        return "\(suit.rawValue)\(rank.convert())"
    }
}

