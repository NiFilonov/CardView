import UIKit

final class RotatingCardView: BaseCardView {
    
    // MARK: - Internal types
    
    enum Side: Int {
        case front = 1
        case back = -1
        
        mutating func toggle() {
            self = Side(rawValue: -(rawValue))!
        }
    }
    
    // MARK: - Internal properties
    
    var currentSide: Side = .front
        // TODO: - Return current card side
     
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
        currentSide.toggle()
        
        UIView.transition(with: card,
                          duration: 0.5,
                          options: currentSide == .front ?
                            .transitionFlipFromRight :
                            .transitionFlipFromLeft,
                          animations: nil,
                          completion: {_ in self.updateUI()})
        
    }
    
    func updateUI() {
        // TODO: - update ui of the card
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
