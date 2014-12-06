# Veector

Basic operators on `CGVector` in Swift.

Because everyone is doing it.

## Usage

Veector is a Swift Framework. Build it and add it to your iOS 8 or Mac OS project. Or 
maybe if anyone wants it I'll release it as a CocoaPod, or configure it so it plays nicely
with Carthage.

```Swift
var a = CGVector(dx: 3, dy: 7)
let b = CGVector(dx: 4, dy: 2)
var c = a - b // c is now <-1, 5>

a -= b // a is now <-1, 5>

a = CGVector(dx: 3, dy: 7)

c = a + b // c is now <7, 9>

let v = CGVector(dx: 3, dy: 4)
magnitude(v) // returns 5
normalize(v) // returns a vector with the same direction as v and a magnitude of 1

a = CGVector(dx: 3, dy: 7)
let p1 = CGPoint(x: 4, y: 2)
let p2 = p + a // p2 is a point at <7, 9>

a = CGVector(dx: 3, dy: 7)
b = CGVector(dx: 3, dy: 7)
a • b // == 58
```

## Author

Fabian Canas, [@fcanas](https://twitter.com/fcanas)

## License

Veector is available under the MIT license.

```
Copyright (c) 2014 Fabian Canas. All rights reserved.

This code is distributed under the terms and conditions of the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```