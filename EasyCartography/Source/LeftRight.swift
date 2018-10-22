import Cartography

extension ViewConstraintErasure where Self: ViewConstraintProtocol, Self.ViewType: UIView{
    
    // MARK: - This view left = parent right
    public static func leftRight(of parent: UIView, offset: CGFloat)  -> Self{
        return Self { view in
            constrain(view, parent) { _view, parent in
                _view.left == parent.right + offset
            }
            return view
        }
    }
    
    public static func leftRight(of parent: UIView)  -> Self{
        return leftRight(of: parent, offset: 0)
    }
}
