import Cartography

extension ViewConstraintErasure where Self: ViewConstraintProtocol, Self.ViewType: UIView{
    
    // MARK: - This view right = parent left
    public static func rightLeft(of parent: UIView, offset: CGFloat)  -> Self{
        return Self { view in
            constrain(view, parent) { _view, parent in
                _view.right == parent.left + offset
            }
            return view
        }
    }
    
    public static func rightLeft(of parent: UIView)  -> Self{
        return rightLeft(of: parent, offset: 0)
    }
}
