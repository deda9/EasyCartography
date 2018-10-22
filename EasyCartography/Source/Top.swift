import Cartography

extension ViewConstraintErasure where Self: ViewConstraintProtocol, Self.ViewType: UIView{
    
    // MARK: - Top of
    public static func top(of parent: UIView, offset: CGFloat)  -> Self{
        return Self { view in
            constrain(view, parent) { _view, parent in
                _view.top == parent.top + offset
            }
            return view
        }
    }
    
    public static func top(of parent: UIView)  -> Self{
        return top(of: parent, offset: 0)
    }
}
