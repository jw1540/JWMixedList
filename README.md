# JWMixedList

[![CI Status](https://img.shields.io/travis/jw1540/JWMixedList.svg?style=flat)](https://travis-ci.org/jw1540/JWMixedList)
[![Version](https://img.shields.io/cocoapods/v/JWMixedList.svg?style=flat)](https://cocoapods.org/pods/JWMixedList)
[![License](https://img.shields.io/cocoapods/l/JWMixedList.svg?style=flat)](https://cocoapods.org/pods/JWMixedList)
[![Platform](https://img.shields.io/cocoapods/p/JWMixedList.svg?style=flat)](https://cocoapods.org/pods/JWMixedList)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Why?
* ✅ Data agnostic UITableViewControllers
* ✅ Data agnostic UICollectionViewControllers
* ✅ Better abstractions layer of abstraction around data sources
* ✅ Easier to test

If you have ever found yourself writing the following code:

```swift
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

    let cell: UICollectionViewCell

    if indexPath.item == 0 {
        cell = collectionView.dequeue(someCell) as! TypeA
        cell.configure()
    } else if indexPath.item == 2 {
        cell = collectionView.dequeue(someCell) as! TypeB
        cell.configure()
    } else {
        fatalError("This is getting long...")
    }

    return cell
}
```

You might benefit from abstracting out into Item Controllers. You remove all this logic by having some `FeedDataType` enum, and switching over that.

Check the Example project to see how it's implemented, and the benefits you might be able to get from it.

## Contributing

There are a few things this doesn't support, and some challenges it faces. If you have solutions, please raise a PR!

## Installation

JWMixedList is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'JWMixedList'
```

## Author

Joe Williams

## License

JWMixedList is available under the MIT license. See the LICENSE file for more info.
