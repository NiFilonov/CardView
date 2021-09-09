import UIKit

class BaseCardView: UIView {
    
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startLoadingAnimation() {
        // TODO: - Show loading animation
    }
    
    func stopLoadingAnimation() {
        // TODO: - Stop loading animation
    }
    
    func buildUI() {
        // TODO: - Build base UI
    }
    
}
