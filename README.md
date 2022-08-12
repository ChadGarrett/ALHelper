![Build](https://github.com/chadgarrett/ALHelper/actions/workflows/swift.yml/badge.svg)

# ALHelper

A simple and lightweight library that adds a few convenience methods when using AutoLayout to construct your views.

## Installation

Available via Swift Package Manager (SPM) or via [Cocoapods](https://www.cocoapods.org)

### SPM

In Xcode, go to File > Add Package, in the upper right hand corner paste the URL to this Github page: `https://github.com/ChadGarrett/ALHelper` and click on add package.

### Cocoapods

Simply add the pod to your Podfile and run `pod install`.

```
pod 'ALHelper'
```

## Requirements

- Swift 5+

- iOS 11+

## Usage

As this library was only a test for setting up Cocoapods + SPM packages, it only includes two very simple (but tested!) helpers at the moment.

You can use `addSubviewAndPinToSuperviewEdges(insets:UIEdgeInsets)` to add a view to a parent view, and pin its top, leading, trailing and bottom edges to the parents edges with the optionally supplied insets.

Alternatively, you can use `pinToSuperviewEdges` directly on a child view if it has already been added to a parent to simply add the constraints and optionally supplied insets.

### Examples

`addSubviewAndPinToSuperviewEdges`
```swift
    let parentView = UIView()
    let childView = UIView()
    let insets = UIEdgeInsets(top: 5)

    parentView.addSubviewAndPinToSuperviewEdges(childView, insets: insets)
```

`pinToSuperviewEdges`
```swift
    let parentView = UIView()
    let childView = UIView()
    parentView.addSubview(childView)
    childView.pinToSuperviewEdges()
```
