import Cartography

extension ViewConstraintErasure where Self: ViewConstraintProtocol, Self.ViewType: UIView{
    
    // MARK: - Width
    public static func width(_ width: CGFloat)  -> Self{
        return Self { view in
            constrain(view) { _view in
                _view.width == width
            }
            return view
        }
    }
}
