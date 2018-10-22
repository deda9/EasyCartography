import Cartography

extension ViewConstraintErasure where Self: ViewConstraintProtocol, Self.ViewType: UIView{
    
    // MARK: - Bottom of
    public static func bottom(of parent: UIView, offset: CGFloat)  -> Self{
        return Self { view in
            constrain(view, parent) { _view, parent in
                _view.bottom == parent.bottom + offset
            }
            return view
        }
    }
    
    public static func bottom(of parent: UIView)  -> Self{
        return bottom(of: parent, offset: 0)
    }
}
