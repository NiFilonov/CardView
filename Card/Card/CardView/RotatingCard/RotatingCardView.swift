import UIKit

final class RotatingCardView: BaseCardView {
    
    // MARK: - Internal types
    
    enum Side {
        case front
        case back
    }
    
    // MARK: - Internal properties
    
    var currentSide: Side {
        // TODO: - Return current card side
        return .front
    }
    
    var isFrontSideShown: Bool {
        // TODO: - Check is current side is front
        return false
    }
    
    var isBacksideShown: Bool {
        // TODO: - Check is current side is back
        return false
    }
    
    // MARK: - Internal methods
    
    func flip(card: BaseCardView) {
        // TODO: - Flip animation
        if currentSide == .front {
            UIView.animate(withDuration: 0.5) { [self] in
                // card.text = question
                card.backgroundColor = .red
                UIView.transition(with: card, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            }
        } else {
            UIView.animate(withDuration: 0.5) { [self] in
                //card.text = answer
                card.backgroundColor = .yellow
                UIView.transition(with: card, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
            }
            
        }
        
    }
    
    // MARK: - Initialization
    
    override init() {
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    
    private lazy var mainTitle: UILabel = {
        // TODO: - Create and return mainLabel
        return UILabel()
    }()
    
    private lazy var secondaryTitle: UILabel = {
        // TODO: - Create and return secondaryLabel
        return UILabel()
    }()
    
    private func buildUI(with styleProvider: RotatingCardStyleProvider) {
        // TODO: - Set styles from styleProvider to views
    }
    
}
