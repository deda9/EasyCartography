import Cartography

extension ViewConstraintErasure where Self: ViewConstraintProtocol, Self.ViewType: UIView{
    
    // MARK: - This view Top = parent Bottom
    public static func topBottom(of parent: UIView, offset: CGFloat)  -> Self{
        return Self { view in
            constrain(view, parent) { _view, parent in
                _view.top == parent.bottom + offset
            }
            return view
        }
    }
    
    public static func topBottom(of parent: UIView)  -> Self{
        return topBottom(of: parent, offset: 0)
    }
}
