import Cartography

extension ViewConstraintErasure where Self: ViewConstraintProtocol, Self.ViewType: UIView{
    
    // MARK: - This view bottom = parent top
    public static func bottomTop(of parent: UIView, offset: CGFloat)  -> Self{
        return Self { view in
            constrain(view, parent) { _view, parent in
                _view.bottom == parent.top + offset
            }
            return view
        }
    }
    
    public static func bottomTop(of parent: UIView)  -> Self{
        return bottomTop(of: parent, offset: 0)
    }
}
