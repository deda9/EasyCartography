# EasyCartography
It's just a middleware for [Cartography](https://github.com/robb/Cartography) framework to wrap the cartography code to simple syntax

in Cartography, you can set width = 100 & height = 100 by
```Swift
constrain(view) { view in
    view.width  == 100
    view.height == 100
}
````

but by easyCartography, you can write this syntax
````Swift
view.setConstraint(.width(100) + .height(100))
````


and in Cartography, you can center the view in the superView by
````Swift
constrain(view, self) { view, superView in
    view.center == superView.center
}
````

buy by easyCartography, you can write this syntax:
````Swift
view.center(in: self)
````

and soon

````Swift
constrain(view, self) { view, superView in
    view.lef == superView.lef + 20
}
````

to 
````Swift
view.left(of: self, offset: 20)
````
