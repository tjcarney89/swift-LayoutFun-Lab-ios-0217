# Stack the Squares

![](http://i.imgur.com/OYnM6LR.jpg?1)

> The best thing for being sad," replied Merlin, beginning to puff and blow, "is to learn something. That's the only thing that never fails. You may grow old and trembling in your anatomies, you may lie awake at night listening to the disorder of your veins, you may miss your only love, you may see the world about you devastated by evil lunatics, or know your honour trampled in the sewers of baser minds. There is only one thing for it then — to learn. Learn why the world wags and what wags it. That is the only thing which the mind can never exhaust, never alienate, never be tortured by, never fear or distrust, and never dream of regretting. Learning is the only thing for you. Look what a lot of things there are to learn. -[T.H. White](https://en.wikipedia.org/wiki/T._H._White)


# Learning Objectives

* Create constraints in code with multiple `UIView` objects

# Instructions

Here is the finished product:

![](https://s3.amazonaws.com/learn-verified/LayoutFunFinalProduct.png)

You will be building this.. in code. We will not be using Interface Builder to lay out our views here.

Locating the `ViewController.swift` file you will find that there are some instance properties and methods provided to you.

First, lets look at the instance properties provided.

```swift
  let redView = UIView(frame: CGRect.zero)
  let orangeView = UIView(frame: CGRect.zero)
  let yellowView = UIView(frame: CGRect.zero)
  let greenView = UIView(frame: CGRect.zero)
  let blueView = UIView(frame: CGRect.zero)
```

There are five `UIView` objects here. Each one  has no frame, not only that.. each one isn't added to another `UIView` instance which means they aren't displayed anywhere.

The `viewDidLoad()` method has some method calls in it:

```swift
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        turnOffAutoResizingOnAllViews()
        setupTheConstraints()
        setupColors()
    }
```

First, we're setting the `backgroundColor` of the `view` instance to be gray. Then we're calling on the `turnOffAutoResizingOnAllViews()` method which (if you take a look at the implementation) is setting the `translatesAutoresizingMaskIntoConstraints` property on our instance properties to `false`. This will allow us to provide constraints in code (not using Interface builder). As well, we're adding all of these view objects to the `view` instance (which will allow these 5 view objects to be visible on screen). But.. they won't be visible on screen just yet, it's on you to create the constraints!

Take a look at the `setupTheConstraints()` function, you should find a TODO: Comment. It's your job to create all the necessary constraints (in code) for all of these views so that when you run your app, it looks like the screenshot above.

Some hints. Each view must be a perfect square, meaning.. its height equals its width.

The `redView`'s width should be equal to half the width of the iPhone (or `view`). The bottom of the `redView` should sit flush on the bottom of the `view`.

Each view (excluding the `redView`) object should be 75% of the width of the view below it and it should sit flush on top of it.


<a href='https://learn.co/lessons/LayoutFun-Lab' data-visibility='hidden'>View this lesson on Learn.co</a>
