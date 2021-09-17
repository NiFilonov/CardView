import Foundation

enum AnimationDuration {
    case slow
    case normal
    case fast
    case custom(_ time: Double)
    
    var time: Double {
        switch self {
        case .slow:
            return 1.0
        case .normal:
            return 0.5
        case .fast:
            return 0.25
        case .custom(let time):
            return time
        }
    }
}
