import UIKit

protocol RotatingCardStyleProvider {
    
    var mainTitleFont: UIFont { get }
    
    var secondaryTitleFont: UIFont { get }
    
    var backgroundColor: UIColor { get }
    
    var mainTitleColor: UIColor { get }
    
    var secondaryTitleColor: UIColor { get }
    
    var cornerRadius: CGFloat { get }
    
}
