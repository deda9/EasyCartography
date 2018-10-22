import UIKit.UIView

extension UIView {
    public func setConstraint(_ constraint: ViewConstraint) {
        _ = constraint.constraint(self)
    }
}
