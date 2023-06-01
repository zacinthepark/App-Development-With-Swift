## App Development with Swift

---

### Index

- [Naming and Identifiers](#naming-and-identifiers)
- [How to deal with text information in Swift](#how-to-deal-with-text-information-in-swift)
- [Hello, World!](#hello-world)
- [First App](#first-app)
- [Functions](#functions)
- [Constants and Variables](#constants-and-variables)
- [Types](#types)
- [Parameters and Results](#parameters-and-results)
- [Making Decisions](#making-decisions)
- [Instances, Methods, and Properties](#instances-methods-and-properties)
- [Arrays and Loops](#arrays-and-loops)
- [Defining Structures](#defining-structures)
- [Actions and Outlets](#actions-and-outlets)
- [Adaptive User Interfaces](#adaptive-user-interfaces)
- [Enumerations and Switch](#enumerations-and-switch)
- [Final Project](#final-project)
- [App Design](#app-design)
- [Pomodoro (Self Wrapup Project)](#pomodoro)
- [MVC](#mvc)
- [Protocol & Extension](#protocol--extension)
- [클래스와 상속](#클래스와-상속)
- [View Controller Lifecycle](#view-controller-lifecycle)
- [Access Control](#access-control)

## Naming and Identifiers

- `var`: variable
- `let`: constant
- `=`: assignment operator
- binary operator: 곱하기, 덧셈, 뺄셈, 나누기
- unary operator: NOT, 역수(inverse), FFT, integral, differentiation
- operand: 연산자에 입력으로 들어가는 값들
- type inference(타입 유추): string(문자열), int(정수), Float, Double
- initializer(생성자): type을 인위적으로 변경 가능

## How to deal with text information in Swift

- `""`

- 유니코드가 있어서 다양한 언어 사용 가능

    - Unicode is an international standard that can represent almost any character from any language in a standard way
    - Swift are fully Unicode-compliant
    - you can create strings that contain the text of different languages

- Combination by Addition(+)

- String Interpolation

    - `\(name)`: name의 value는 string, number 모두 가능
    - `\(name1 + name2)`와 같이 calculation도 가능

Escape Character

- `\`
- 이러한 backslash는 스위프트로 하여금 뒤에 오는 것을 특별하게 취급하도록 함(normal behavior에서 ‘escape’하도록 함)
- 그러므로 `\”`를 하면 “가 string definition의 경계로 취급되지 않음

## Hello, World!

- Printing messages to the console is known as logging
- The messages are sometimes called log messages.
- Sometimes, you’ll add temporary print statements to figure out why your program isn’t working. Tracking down code issues, or bugs, is one of the most common uses of the console.

## First App

### 시작

- Build means “Assemble all the parts into an app.”
- Run means “Start the app,” as if you’d tapped its icon on the Home screen.
- Product Name: 프로젝트 이름
- Team: Apple Developer account로 로그인 후, device에 app을 build할 수 있도록 함 (없다면 iOS Simulator를 사용)
- Organization Name
- Organization Identifier: 임의로 com.example 사용
- Bundle Identifier: Organization Identifier.Product Name
- Language: Swift / Objective-C

### Xcode

To get started building apps in Xcode, it’s enough to:

-  Find your code and interface files
-  Edit them
-  Add more files
-  Build and Run

Toolbar

- You’ll use this to check the project’s status, to hide and show the other window areas and, most importantly, start running your app from the giant “Play” button! If you don’t see the toolbar, you can bring it back by selecting "Show Toolbar" from the View menu at the very top of the screen. (View > Show Toolbar)

Navigator

- Explore the Project! You’ll use this to move around your project; this is where you select which file to open in the editor with a single click. (A double-click will open the file in a new window instead of the current editor.)
- `.swift` files: tell your app what to do, and when and how to do it. 앱에 명령하는 것. code.
- `.storyboard` files: tell your app where to display information on the screen. Xcode에서 이를 보여주는 환경을 Interface Builder라 부름.
- `.xcassets`: holds all the images for your app, including the ​app icon.
- `.plist`: manage your app’s setup information.

Editor

- Edit the codes and interface files! This is where you’ll edit your code, whether source code or user interface items. Most people always keep the editor visible while they’re working. (This screenshot is showing the project overview, where you can choose things like whether your app supports Landscape orientation.)

Inspectors

- You’ll use this to find out more details about the item currently selected or displayed in the editor; you’ll use this area especially when you’re editing user interface files in Interface Builder.

### Summary

- The project navigator shows a list of all your code, interface, and configuration files.
- You can change the editor’s contents by choosing different files in the project navigator.
- When you select different files in the project navigator, you see different options in the utilities area.
- You can show and hide the navigation and utilities areas as you like.

## Functions

### 함수

- Functions can:
    - Group tasks together as a building block for a larger program
    - Take information in
    - Do work
    - Return information
- Use functions for:
    - Abstraction
    - Decomposition
- `func () {}`

## Constants and Variables

- `let A =`: constant
- `var A =`: variable
- `+=`: compound assignment operator

### Constant? Variable?

- Values declared with let are constants, and can’t be changed once a value is assigned. These values are called immutable.
- Values declared with var are variables, and can be assigned new values over time. These values are called mutable.
- A mutable value can be used as part of an assignment statement to itself: `score = score + 10`.
- Compound assignment operators allow mutable values to be updated: `score += 10`.
- Using constants and variables in the correct places helps make your code safer and easier to understand.

## Types

Types describe:

- What a value is.
- What a value can do.
- Where you can use a value.

Types of Value in Swift:

- Every Value has a Type.
- `String`: 문자열
- `Int` (Integer): 정수 (whole number)
- `Double`: a number with a decimal point
    - “Double-precision floating point” number. A Float type also refers to a number with a decimal point, but the default Double is twice as precise.
- `Float`: a number with a decimal point
    - Why would you ever want to use less precise decimal numbers?
    - If you have a huge amount of data, the Float type will save space because it occupies half as much memory. If your calculations only require accuracy to the nearest hundredth, then there's no reason to store all those extra digits. Swift's default is Double because typical programs don't work with enough numeric data to cause issues with memory, and more accuracy makes your code less prone to subtle errors.

### Type Safety

- Swift won’t let you write code that uses types incorrectly or unexpectedly. This is called type safety.
- You can‘t mix and match Double and Int types in Swift because of type safety.

### Type Inference

- Type Inference from Literal Context
    - `let string = 42`
    - string type: Int

- Type Inference from Assignment
    - `let anotherString = string`
    - anotherString type: Int

### Type Annotation

- Type annotation is entered right after the name declaration, using a colon and the name of the type

- `let annotatedDouble: Double = 20` 
    - Correct
    - 20이라는 Int 값을 Double로 지정함
    - Int —> Double

- `let twenty: String = 20`
    - Wrong
    - 20이라는 Int 값을 String으로 지정하는 것은 불가함
    - Cannot convert value of type 'Int' to specified type 'String’

### Swift Standard Library

- Swift has built-in types that represent the basic building blocks of all programs. You have spent a lot of time with String and Int, there are also many more.

    - Array
    - Dictionary
    - Set
    - Sequence
    - Error
    - Bool

### Beyond the Standard Library

- Programmers can also create their own types by combining and adding to the types and capabilities in the standard library. Take one of your made-up types from the experiment on the previous page, and imagine what types it might depend on. For example, a TrainingShoe might use an Int for a size, a String for a brand name, a Date for its release date, and another Int for its price in dollars.

- Types and capabilities can be grouped together into collections called frameworks or libraries. When making apps, you can draw from frameworks included within Xcode. One very important framework is the Foundation framework.
    - The Foundation framework introduces lots of types used to represent more specific things than just strings or numbers from the Swift standard library. For example, there are types for dates, distances, and files on a computer.
    - `import Foundation`
    - `let today = Date()`

## Parameters and Results

### Parameters

```swift
func hello(firstName: String, lastName: String) {
    print(“Hello \(firstName) \(lastName)”)
}

hello(firstName: “Jon”, lastName: “Snow”)
hello(firstName: “Johnny”, lastName: “Appleseed”)
```

### Returning Values

```swift
func spaceAvailableMessage(eachVideoDuration: Int, numberOfVideos: Int) -> String {
    let currentSpace = 10000
    let megabytesPerSecond = 3
    let spaceAvailable = currentSpace - eachVideoDuration _ numberOfVideos _ megabytesPerSecond

    return “If your \(numberofVideos) videos are \(eachVideoDuration) seconds each, you’ll have \(spaceAvailable) MBs remaining”
}

spaceAvailable(eachVideoDuration: 10, numberOfVideos: 50)
```

### Kinds of Function

When you write functions, you now have four possible combinations of parameters and return values. Here’s a summary that describes when you might use each type of function:

❌ Parameters, ❌ Return value

- `paintAndHangPicture()`

- When you call a function that doesn’t have any parameters and doesn’t return a value, it’s like saying “I want something to happen, but I don't particularly care how it's done or what happens to it later.”

- Imagine you ask an artist to create a painting for you. If you use a function like paintPicture(), the artist will create whatever they want, then permanently hang the finished piece on whichever wall they like, maybe even in another city.

- Calling this kind of function can save you the work of making decisions but can also require a lot of trust. The function does the work on its own and doesn’t give back any information, but it might have an impact on something that you have no control over.

✅ Parameters, ❌ Return value

- `paintAndHangPicture(width: Int, height: Int, dominantColor: UIColor)`

- These functions do work that changes depending on the arguments, but don't give anything back.

- Now you can ask the artist to make a painting of a certain size, perhaps using a particular color scheme or featuring your favorite scenery. You take more control of the work performed, but the artist still has full control over the painting, and will hang it wherever they like.

- The hello(name:) function is an example of this. You control the names, and the “work” is printing the string to the console.

❌ Parameters, ✅ Return value

- `paintPicture() -> Painting`

- This kind of function returns a value without needing any extra information.

- Imagine that you haven't given the artist any input parameters, so they create something entirely from their own vision. After they're done with the work, they’ll hand the finished painting over to you directly. Now you can hang, sell, or maybe even add to the painting yourself.

✅ Parameters, ✅ return value

- `paintPicture(width: Int, height: Int, dominantColor: UIColor) -> Painting`

- This kind of function gives a value back based on the information passed in. It takes all your input suggestions and transforms them into a new output value.

- In this case, you give the artist input about what you'd like them to create and are handed back a finished product that you can use exactly as you like.

### Parameters Names and Argument Labels

- 매개변수(Parameter): 함수를 정의할 때 외부로부터 받아들이는 전달 값의 이름.
- 전달인자(Argument): 함수를 실제로 호출할 때 전달하는 값.
- 전달인자 레이블을 별도로 지정할 시 함수 외부에서 매개변수의 역할을 더 명확히 할 수 있다.

```swift
func greeting(from myName: String, to yourName: String) -> String {
    return “Hello \(yourName)! I’m \(myName)”
}

print(greeting(from: “Jinwoo”, to: “Maya)) // Hello Maya! I’m Jinwoo
```

### The Argument Without a Name

- `_` (underscore)

```swift
func printHelloTo(_ name: String) {
    print(“Hello “ + name)
}

printHelloTo(“Maya”) // Hello Maya
printHelloTo(“Hiro”) // Hello Hiro
```

## Making Decisions

### Boolean Values

- `true`
- `false`

### Comparison Statement

- Give Boolean Results
- Comparison Operators
    - `==`
    - `!=`
    - `<`
    - `>`
    - `<=`
    - `>=`

### Conditional Statement

- Give Boolean Results + Do different things depending on the results
- if statement
    ```swift
    if A {
    ...
    }
    ```
- if / else statement
    ```swift
    if A {
    ...1...
    } else {
    ...2...
    }
    ```
- else if statement
    ```swift
    if A {
    ...1...
    } else if B {
    ...2...
    } else if C {
    ...3...
    } else {
    ...4...
    }
    ```

### Functions and Decisions

if의 condition을 직관성을 높이기 위해 함수로 묶어주기

```swift
func bandCanCarryGear (bandMemberCount: Int, gearWeight: Int) -> Bool {
    let maximumTripCount = 2
    let weightPerPerson = 50
    let carryingCapacity = bandMemberCount _ weightPerPerson _ maximumTripCount

    return gearWeight < carryingCapacity
}

if bandCanCarryGear(bandMemberCount: 5, gearWeight: 600) {
    “Rock on.”
} else {
    “Everyone quits! Looks like you’ve got a solo show.”
}

// “Everyone quits! Looks like you’ve got a solo show.”
```

### Remainder Operator

- `%`
- `a = (b * some multiplier) + remainder`
- `a % b`와 `a % -b`는 같은 값을 출력함

```swift
func isCandyAmountAcceptable(bandMemberCount: Int, candyCount: Int) -> Bool {
    return candyCount % bandMemberCount == 0
}

if isCandyAmountAcceptable(bandMemberCount: 6, candyCount: 79) {
    “Rock on.”
} else {
    “Everyone quits! This is unacceptable!”
}

// “Everyone quits! This is unacceptable!”
```

## Instances, Methods, and Properties

### Creating Instance

- Literal
    - Only a few types, like String, Bool, and Int, can be created using literals, but every type has at least one initializer.

- Initializer
    - You use an initializer to create a new instance of a particular type.
    - 간단한 타입들을 제외하고는 모든 타입들은 최소 1개의 이니셜라이저를 가진다고 보면 됨
    - 리터럴을 통해 생성될 수 있는 간단한 타입(String, Int, Boolean 등)도 이니셜라이저 사용 가능
        - `let A = String()`
        - `let B = Bool()`
        - `let C = Int()`
    - 파라미터를 포함할 수 있음
    ```swift
    import Foundation
    let rightNow = Date()
    let oneHourLater = Date(timeIntervalSinceNow: 3600)
    ```

- Initializers vs Functions
    - 공통점
        - `()` 형태를 가짐
        - 정의 시에 패러미터를 가질 수도, 가지지 않을 수도 있음
        - 호출 시에 필요한 argument 값을 전달함으로써 호출함
    - 차이점
        - `()` 앞의 이름에서 함수는 `lowerCamelCase`, 이니셜라이저는 `UpperCamelCase`
        - 즉, 이니셜라이저에서는 타입 이름을 사용함
        - 그리고 함수는 어떠한 값을 반환하지만, 이니셜라이저는 해당 타입의 새로운 인스턴스를 반환함

### Methods

- Instance Method, 혹은 Method 는 특정 타입과 관련된 함수를 말함
- String 타입과 관련된 `hasPrefix()`와 같은 함수도 메서드, 그리고 클래스에서 선언된 함수도 메서드
```swift
let introduction = “It was a dark and stormy night”
func hasPrefix(_ prefix: String) -> Bool
introduction.hasPrefix(“It was”) // true
```

### Properties

- a property is a constant or variable built in to each instance of a type.
- 특정 타입과 관련한 값을 뜻함
- `var isEmpty: Bool {get}`
```swift
let something = “It was the best of times”
let nothing = “”

something.isEmpty // false
noting.isEmpty // true
```

### 인스턴스 비교

```swift
var myPlans = “eat dinner, run 5km”
var friendPlans = myPlans
// myPlans라는 인스턴스에 있는 값을 복사해서, 별개의 friendPlans라는 인스턴스에 그 값을 저장
// 이 시점에서는 myPlans, friendPlans 두 인스턴스들은 동일한 value인 “eat dinner, run 5km”를 갖는다. 하지만 ‘myPlans 인스턴스’에 속하는 값, 그리고 ‘friendPlans 인스턴스’에 속하는 값 2개의 값은 별개의 것이다.

myPlans += “ , go to cafe”
// 이후 myPlans의 값을 업데이트할 경우, myPlans만 “eat dinner, run 5km, go to cafe”로 업데이트되며, friendPlans의 경우 별개의 인스턴스에 저장되어 있는 것이므로 그대로 “eat dinner, run 5km”이다.
```

## Arrays and Loops

### Arrays

- Literal
    - `[a, b, c, d, e, f, …]`
- Index and Subscript
    - subscript: array, dictionary 등 collection 타입과 관련하여 특정 member elements에 간단하게 접근할 수 있는 문법 
    - `array[index]`, `dictionary[key]`
    - `devices[0] = "iPhone"`
- Count
    - `var count: Int { get }`
    - `let chores = [“Vacuuming”, “Dusting”, “Laundry”, “Feed the dragons”]`
    - `let numberOfChores = chores.count`

### Loops

- `for … in loop`
```swift
let friends = [“Name”, “Name2”, “Name3”, “Name4”, “Name5”]

for friend in friends {
    let sparklyFriend = “✨\(friend)✨”
    print(“Hey, \(sparklyFriend), please come to my party on Friday!”
}

print(“Done, all friends have been invited.”)

// Hey, ✨Name✨, please come to my party on Friday!
// Hey, ✨Name2✨, please come to my party on Friday!
// Hey, ✨Name3✨, please come to my party on Friday!
// Hey, ✨Name4✨, please come to my party on Friday!
// Hey, ✨Name5✨, please come to my party on Friday!
// Done, all friends have been invited.
```

### Mutable and Immutable Arrays

- `let` 키워드를 통해 constant로 선언한 배열은 해당 item과 item들의 순서가 고정됨을 의미한다. (immutable arrays)
- `var` 키워드를 통해 variable로 선언한 배열은 속하는 item들의 value를 자유롭게 바꿀 수 있다. (mutable arrays)
- 단, variable이 type이 아닌 value만을 바꿀 수 있듯이, `var`로 선언한 배열 역시 항목들의 type을 바꿀 수는 없다!

### Adding Items

- `.append(val)`
- `.insert(val, at: idx)`
- `+=`

```swift
var list = [String]() // string value를 가지는 배열 인스턴스 생성

list.append(“Banana”)
list += [“Kiwi”, “Strawberry”, “Plum”]
list.insert(“Blueberry”, at: 3)
```

### Removing Items

- `.remove(at: idx)`
- `.removeFirst()`
- `.removeLast()`
- `.removeAll()`

```swift
var numbers = [0, 1, 2, 3, 4]
let someNumber = numbers.remove(at: 2) // 2
// numbers = [0, 1, 3, 4]
let firstNumber = numbers.removeFirst() // 0
// numbers = [1, 3, 4]
let lastNumber = numbers.removeLast() // 4
// numbers = [1, 3]
numbers.removeAll() // []
```

### Replacing Items

```swift
var flavors = [“Chocolate”, “Vanilla”, “Strawberry”, “Pistachio”, “Rocky Road”]
let firstFlavor = flavors[0] // “Chocolate”
flavors[0] = “Fudge Ripple”
let newFirstFlavor = flavors[0] // “Fudge Ripple”
firstFlavor // “Chocolate”
newFirstFlavor // “Fudge Ripple”
```

### Type Annotation

- array의 항목 수가 많을 시, Swift가 모든 항목을 체크하여 type inference하는 데에 시간이 많이 걸릴 수 있음
- type annotation을 통해 playground가 느려지는 것을 방지할 수 있음
    - 가령, `let shoudMascotChangeVotes = [false, true, true, false, ………………………..]`는 type inference가 오래 걸릴 수 있으므로
    - `let shouldMascotChangeVotes: [Bool] = [false, true, true, false, ………………………..]`와 같이 미리 `[Bool]`이라 타입 선언해줄 수 있음

## Defining Structures

### Modeling Data

- App을 만드는데 있어서 중요한 것은 how your app is going to represent the information that it needs를 고려하는 것
- 즉, 앱이 포함하는 정보에는 String, Int, Array와 같은 단순한 타입으로 표현될 수 있는 정보도 있지만
    - 음악 앱의 경우 tracks, artists, albums, playlists
    - 쇼핑 앱의 경우 products, shopping carts, customers, orders와 같은 정보들을 통해
- 실제 세계와 같은 software model을 구현해야 함
- 이처럼 앱이 다루는 data들의 type들을 통상적으로 model, 혹은 data model이라 칭함
- 이와 같이 ‘정보를 모델링’하는 것이 중요하고, 또한 이를 가능하게 하는 것이 새로운 데이터 타입을 만드는 것

### Custom Types

- `struct` 키워드를 통해 새로운 타입을 만들 수 있음
- 기존의 타입들을 활용하여 `struct` 키워드를 통해 structure, 구조체를 만들 수 있음
- every type has at least one initializer
- initializer 중 각 멤버 프로퍼티를 매개변수로 갖는 initializer를 memberwise initializer라 한다

```swift
struct Song {
    let title: String
    let artist: String
    let duration: Int
}
```

```swift
Song(title: “Leave the Door Open”, artist: “Silk Sonic”, duration: 243)
// 3개의 멤버 프로퍼티를 매개변수로 가지는 Initializer이므로 memberwise initializer
// title “Leave the Door Open”
// artist “Silk Sonic”
// duration 243
```

### Struct Properties

1. Mutable Properties

- struct 정의 시, 변할 수 있는 프로퍼티를 `var` 키워드를 통해 선언
- struct 인스턴스 생성 시, constant가 아닌 variable로 선언

```swift
struct Song {
    let title: String
    let artist: String
    let duration: Int
    var rating: Int
}

var song = Song(title: “Leave the Door Open”, artist: “Silk Sonic”, duration: 243, rating: 0)
song.rating // 0
song.rating = 4
song.rating // 4
```

2. Calculated Properties

- `var`로 선언
- A calculated property is declared a var, since it could change depending on the rest of the struct

```swift
struct Song {
    let title: String
    let artist: String
    let duration: Int

    var formattedDuration: String {
    	let minutes = duration / 60 // duration에 점 없이 접근
    	let seconds = duration % 60
    	return “\(minutes)m \(seconds)s”
    }

    var formattedTitle: String {
    	return “\(title) by \(artist)” // title, artist에 점 없이 접근
    }
}

let song = Song(title: “No, no, no”, artist: “Fizz”, duration: 150)
song.formattedDuration // “2m 30s”
song.formattedTitle // “No, no, no by Fizz”
```

### Functions

```swift
struct Rectangle {
    let width: Int
    let height: Int
}

func isRectangle(_ rectangle: Rectangle, biggerThan rectangle2: Rectangle) -> Bool {
    let areaOne = rectangle.width * rectangle.height
    let areaTwo = rectangle2.width * rectangle2.height

    return areaOne > areaTwo
}

let rectangle = Rectangle(width: 10, height: 10)
let anotherRectangle = Rectangle(width: 10, height: 30)
isRectangle(rectangle, biggerThan: anotherRectangle) // false
```

### Instance Methods

```swift
struct Rectangle {
    let width: Int
    let height: Int

    var area: Int {
    	return width * height
    }

    func isBiggerThan(_ rectangle: Rectangle) -> Bool {
    	let otherArea = rectangle.area
    	return area > otherArea
    }

}

let rectangle: Rectangle(width: 10, height: 10)
let otherRectangle: Rectangle(width: 10, height: 20)
rectangle.isBiggerThan(otherRectangle) // false
otherRectangle.isBiggerThan(rectangle) // true
```

## Actions and Outlets

- Action과 Outlet은 code와 storyboard를 연결하기 위한 수단
- 이를 통해 app이 run하는 동안 storyboard의 요소들이 code를 통해 user actions에 반응할 수 있도록 함

### Outlet
- storyboard에 있는 사물(objects)들을 code의 variable로 연결해줌
- code —> storyboard로 갈 수 있는 ‘배출구’(outlet)
- 이를 통해 app이 돌아갈 때 스토리보드의 사물로부터 정보를 얻거나, 반대로 변화를 줄 수 있음

### Action
- storyboard에 가해지는 특정 동작(controls)들을 (ex. switches, buttons) 코드화할 수 있음
- storyboard의 동작 —> Action을 통해 —> 코드의 method로 연결
- 이를 통해 app이 돌아갈 때 해당 동작이 특정 메서드를 작동시킴

### Action - Outlet Connections를 만드는 3가지 방법
1. object를 code로 control and drag
2. code의 `◉`를 object로 drag
3. Connections Inspector 사용

### Creating Outlets (a variable in code — an object in the storyboard)

- `◉ @IBOutlet wear var colorView: UIView!`
  - `◉`: outlet이 connected되었음
    - 연결되지 않을 시, empty circle
  - `@IBOutlet weak`: This signals to Xcode that the property on this line is an outlet
  - `var colorView`: declaration of a property
  - `UIView!`: 해당 프로퍼티의 타입이 UIView!
    - `!`: if the outlet is not connected and you try to access this property, your app will crash라는 뜻
- `viewDidLoad()`
  - this function is called when your view controller is ready to appear on the screen
  - 처음 storyboard의 화면이 앱에서 나타날 때의 설정을 하는 곳

```swift
class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!

    override func viewDidLoad() {
    	super.viewDidLoad()
    	// Do any additional setup after loading a view.
    	colorView.backgroundColor = .black // 처음 해당 ViewController가 앱에서 보이게 될 때 colorView를 검은색으로 표시하게 함
    }

}
```

### Creating Actions (a method in code — a control in the storyboard)

- `Switch(UI)`: A switch control in your app’s user interface acts like an on / off button, for example, for Airplane Mode and Bluetooth in the Settings app
- `Slider(UI)`: A slider control in your app’s user interface allows a user to select a single value between a minimum and maximum number

### Event

- `◉`: connected
- `@IBAction`: This signals to Xcode that the method on this line is an action connected to a control in Interface Builder
- `sender`: The sender argument is the instance that sent the action (function의 sender를 통해 control에 action method를 ‘send’함)

```swift
@IBAction func switchChanged(_ sender: UISwitch) {
    if sender.isOn {
        colorView.backgroundColor = .red
    } else {
        colorView.backgroudColor = .black
    }
}
```

### isOn

- `var isOn: Bool { get set }`
- A Boolean value that determines the on / off state of the switch.
- This property allows you to retrieve and set (without animation) a value determining whether the UISwitch object is on or off.

### isEnabled

- `var isEnabled: Bool { get set }`
- A Boolean value indicating whether the control is in the enabled state.

### Multiple Actions and Outlets

- Action에 연결되어 있는 object들을 확인하고 싶다면?
    - code에 있는 `◉`에 커서를 대면 연결된 object들이 하이라이트됨

- Action을 object에 연결하고 싶다면?
    - code에 있는 `◉`를 클릭 후 드래그하여 연결하고자 하는 object에 연결

- `viewDidLoad()`나 action method에 일일이 color를 설정하는 code를 쓰지 말고, 하나의 function을 만들어놓자
코드의 반복도 피하고, 코드의 수정도 용이

### 코드 예시

```swift
◉ @IBOutlet weak var colorView: UIView!
◉ @IBOutlet weak var redSwitch: UISwitch!
◉ @IBOutlet weak var blueSwitch: UISwitch!
◉ @IBOutlet weak var greenSwitch: UISwitch!
◉ @IBOutlet weak var redSlider: UISlider!
◉ @IBOutlet weak var blueSlider: UISlider!
◉ @IBOutlet weak var greenSlider: UISlider!

func updateColor() {
    var red: CGFloat = 0    // CGFloat: core graphic float // 그래픽을 float 형태의 value로 나타내는 것
    var green: CGFloat = 0
    var blue: CGFloat = 0

    if redSwitch.isOn {
    red = CGFloat(redSlider.value)
    }
    if greenSwitch.isOn{
    green = CGFloat(greenSlider.value)
    }
    if blueSwitch.isOn {
    blue = CGFloat(blueSlider.value)
    }

    let color = UIColor(red: red, green: green, blue: blue, alpha: 1)   // red 값에 ‘red’라는 CGFloat 값을(green, blue도 마찬가지로 각각의 CGFloat 값을) 갖는 UIColor 인스턴스
    colorView.backgroundColor = color
}

func updateControls() {
    redSlider.isEnabled = redSwitch.isOn
    greenSlider.isEnabled = greenSwitch.isOn
    blueSlider.isEnabled = blueSwitch.isOn
}

override func viewDidLoad() {
    super.viewDidLoad()
    updateColor()
    updateControls()
}

◉ @IBAction func switchChanged(_ sender: UISwitch) {
    updateColor()
    updateControls()
}

◉ @IBAction func sliderChanged(_ sender: UISlider) {
    updateColor()
}

◉ @IBAction func reset(_ sender: Any) {
    redSlider.value = 1
    greenSlider.value = 1
    blueSlider.value = 1

    redSwitch.isOn = false
    greenSwitch.isOn = false
    blueSwitch.isOn = false

    updateColor()
    updateControls()
}
```

## Adaptive User Interfaces

- Asset catalog
    - The asset catalog in Xcode is the best place to keep all the images used in your app. Its file extension is `.xcassets`, and you can access it from the project navigator
- Auto Layout
    - You use Auto Layout to build adaptive interfaces, so your user interface elements maintain the same relative positions, no matter the screen’s size or orientation
    - For example, you can add one rule that a button must always be a certain distance above an image view and another rule that the image view must always be centered at the bottom of the screen.
    - By defining this rule in Auto Layout, the two elements will follow those rules: whether the screen is large or small, in portrait or in landscape mode
- Constraint
    - A constraint is a rule in Auto Layout that defines how views should be laid out or sized / ‘set’ or ‘pin’ some aspect of the layout of the view to a desired value
- Stack View
    - You use a stack view to set up elements in your user interface in a column from top to bottom or in a row from left to right

### TIPS For Building Adaptive User Interfaces 😈

- Design for the smallest device
    - This will ensure your design will fit on other(larger) devices
- Use constraints to define the height and width of image views
    - This will prevent you from needing to resize an image view to accommodate a very large image
- Start by adding views and arranging them, then select the views and create a stack view
- Use stack view settings, like spacing and alignment, to create a wide variety of interface effects
- Nest stack views to create more complex user interfaces
- Always try to start with the innermost stack views
- Use constraints to center the outermost stack view horizontally and vertically to ensure your UI is centered on all devices
- Resolve Auto Layout issues after adding constraints
- Select Update Frames to get rid of those wiggly orange lines

## Enumerations and Switch

### Enumerations

- a group of related choices
- enum의 name은 UpperCamelCase
- case의 name은 lowerCamelCase

```swift
enum LunchChoice {
    case pasta
    case burger
    case soup
}

enum LunchChoice {
    case pasta, burger, soup
}

let choice = LunchChoice.burger // burger
let special = LunchChoice.fish // error! (Type ‘LunchChoice’ has no member ‘fish’)
```

### Switch

```swift
enum Quality {
    case terrible, bad, poor, acceptable, good, great, fantastic
}

let quality = Quality.acceptable

switch quality {
    case .terrible, .bad:
        print(“That really won’t do”)
    case .poor:
        print(“That’s not good enough”)
    case .acceptable, .good, .great, .fantastic:
        print(“OK, I’ll take it”)
}
```

### More Than Enums

- `switch`문에는 enum type외에 다른 type의 값들에도 적용할 수 있음
- String, Int 등의 type을 가진 value들에 대하여 exhaustive list를 만드는 것은 불가하므로, `default`를 사용함

```swift
func soundFor(animal: String) -> String {
    switch animal {
        case “cat”:
            return “Meow!”
        case “dog”:
            return “Woof!”
        case “cow”:
            return “Moo!”
        case “chicken”:
            return “Cluck!”
        case “snake”:
            return “Shhh!”
        default:
            return “I don’t know that animal!”
    }
}

let animal = “cat”

soundFor(animal: animal) // “Meow!”
soundFor(animal: “dog”) // “Woof!”
soundFor(animal: “snake”) // “Shhh!”
soundFor(animal: “fox”) // “I don’t know that animal!”
```

### Enum Methods and Properties

- `struct`를 정의할 때처럼 `enum` 역시 프로퍼티와 메서드를 정의할 수 있음
- `self` 키워드는 해당 프로퍼티나 메서드를 불러올 인스턴스 자기 자신을 의미
- `self` 키워드는 methods나 calculated properties에서 사용

```swift
enum Suit {
    case spades, hearts, diamonds, clubs

    var rank: Int {
    	switch self {
    	case .spades: return 4
    	case .hearts: return 3
    	case .diamonds: return 2
    	case .clubs: return 1
    	}
    }

    func beats(_ otherSuit: Suit) -> Bool {
    	return self.rank > otherSuit.rank
    }

    var emoji: String {
    	switch self {
    	case .spades: return “♠️”
    	case .hearts: return “♥️”
    	case .diamonds: return “♦️”
    	case .clubs: return “♣️”
    	}
    }
}

let oneSuit = Suit.spades
let otherSuit = Suit.clubs

oneSuit.rank // 4
otherSuit.rank // 1

oneSuit.emoji // “♠️”
otherSuit.emoji // “♣️”

oneSuit.beats(otherSuit) // true
oneSuit.beats(oneSuit) // false
```

### Array, Struct, Enum

- Array
    - Ordered storage of values
    - of Same type

- Struct
    - Modeling Data

- Enum
    - a group of
        - Related
        - Restricted number of values

## Final Project

### M

#### Sign.swift

```swift
import Foundation
import GameplayKit

enum Sign {
case rock, paper, scissors

    var emoji: String {
        switch self {
        case .rock: return "👊"
        case .paper: return "🖐"
        case .scissors: return "✌️"
        }
    }

    func versus(_ sign: Sign) -> GameState {
        switch self {
        case .rock:
            switch sign {
            case .rock: return .draw
            case .paper: return .lose
            case .scissors: return .win
            }
        case .paper:
            switch sign {
            case .rock: return .win
            case .paper: return .draw
            case .scissors: return .lose
            }
        case .scissors:
            switch sign {
            case .rock: return .lose
            case .paper: return .win
            case .scissors: return .draw
            }
        }
    }
}

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}
```

#### GameState.swift

```swift
import Foundation

enum GameState {
case start, win, lose, draw

    var message: String {
        switch self {
        case .start: return "Rock, Paper, Scissors?"
        case .win: return "You've won!"
        case .lose: return "You've lost!"
        case .draw: return "Draw! Try Again!"
        }
    }

}
```

### V

#### Main.storyboard

- app이 내는 sign을 나타내는 label
- gamestate의 message를 나타내는 label
- 각각 r, p, s button 3개: stack view 생성
- play again button
- 위 항목들로 stack view 생성
- align을 통해 center에 위치시킬 constraints 2개 생성

### C

#### ViewController.swift

```swift
import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var appSign: UILabel!
    @IBOutlet private weak var gameStatus: UILabel!
    @IBOutlet private weak var rockButton: UIButton!
    @IBOutlet private weak var paperButton: UIButton!
    @IBOutlet private weak var scissorsButton: UIButton!
    @IBOutlet private weak var playAgainButton: UIButton!
}

extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        updateScreen(.start)
    }
}

extension ViewController {
    @IBAction private func pressRock(_ sender: Any) {
        play(.rock)
    }

    @IBAction private func pressPaper(_ sender: Any) {
        play(.paper)
    }

    @IBAction private func pressScissors(_ sender: Any) {
        play(.scissors)
    }

    @IBAction private func pressPlayAgain(_ sender: Any) {
        updateScreen(.start)
    }
}

extension ViewController {
    private func updateScreen(_ state: GameState) {
        gameStatus.text = state.message

        switch state {
        case .start: view.backgroundColor = UIColor.white
        case .win: view.backgroundColor = UIColor.cyan
        case .lose: view.backgroundColor = UIColor.orange
        case .draw: view.backgroundColor = UIColor.green
        }

        if state == .start {
            appSign.text = "🤖"

            playAgainButton.isHidden = true
            rockButton.isHidden = false
            paperButton.isHidden = false
            scissorsButton.isHidden = false

            rockButton.isEnabled = true
            paperButton.isEnabled = true
            scissorsButton.isEnabled = true
        }
    }
}

extension ViewController {
    private func play(_ playerSign: Sign) {
        let randomSign = randomSign()
        let gameResult = playerSign.versus(randomSign)

        updateScreen(gameResult)

        appSign.text = randomSign.emoji

        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false

        switch playerSign {
        case .rock:
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        case .paper:
            rockButton.isHidden = true
            scissorsButton.isHidden = true
        case .scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
        }

        playAgainButton.isHidden = false
    }
}
```

## App Design

- Brainstorm - Plan - Prototype - Evaluate
- 어디에 어떤 conding concept가 필요할지 생각
- Easy to Use + Unique

### 1. Brainstorm

- 문제, 그리고 가능한 솔루션을 생각
- 어떤 앱을 만들까?
- App Store에서 조사
- 개선사항은 없을까? UI가 더 좋아질 수 있을까?
- User Reviews도 체크

- 앱을 사용할 만한 가상의 persona 생성
- 어떤 사람? 직업은? 몇 살? 기기는 얼마나 자주 사용? 사진 / 단어 중 무엇을 선호? 왜 앱을 사용하는가? 인터넷 액세스가 필요? 등등

- 목적성을 확실히
- My app will: ___________
- because: ___________
- ex: My app wil tell a new student exactly where to be right now and how to get there, because new students often get lost

- Evaluate 이후 문제 해결을 위한 아이디어 생각

### 2. Plan

- 아이디어에 대한 디테일 플랜
- App Flow를 생각 (user experience 기반)
- GET SPECIFIC
- 버튼을 누르면 어떻게 되는지? 언제 특정 기능이 작동 가능해지는지?

### UI / UX는 어떻게 구성?

- Good UI —> Good UX
- navigation, font size, icon shape, placement 등 사소한 것까지
- UX는 Simple할수록 좋다

### 디자인은 어떻게 할까?

- Design통해 개성을 살리되, Simple하게
- Color? 필요한 Image? Font? Sound?
- App Icon은 첫인상

### 어떤 기능을 추가할 수 있을까?

- Basics
    - Keyboard: 무슨 데이터를 입력?
    - Camera and Microphone
    - Touchscreen: tapping, double-tapping, swiping, dragging, button 등 + 스크린 요소가 터치로 interaction 가능한 앱?

- Connection
    - Wi-Fi: 인터넷이 필요한 앱인가?
    - GPS: iOS devices have a built-in GPS
    - Bluetooth: 주변 기기와 연결(스피커, 로봇, 온도 측정기 등)

- Innovation
    - Speech recognition and machine learning: 키보드 사용 대신? 누가 좋아할까? Siri의 학습?
    - Acceleromter and gyroscope: 디바이스가 accelerating, decelerating, zero gravity? 디바이스의 rotation 정도? 합쳐서 현 디바이스가 어떻게 움직이는지 3차원에서 파악 가능
    - an app that recognizes if the user is falling?
    - the Health app and the level tool in the Compass app on iPhone
    - Augmented reality: Blend digital objects and information in real-world environment

- Accessibility
    - Siri와 Dictation 활용
    - 화면 사이즈, 대비 등 스크린 요소 변경
    - VoiceOver screen reader
    - 단순 장애 유저를 넘어 보통 유저들에게도 편리성 제공
    - 직접 체험하라!

- Feature Smash
    - 앱에 필요한 다양한 기능 나열
    - 다양한 combination 생각
    - accelerometer + Bluetooth -> 로봇과 연결하여 디바이스를 리모콘으로 사용

### 3. Prototype

- 아이디어, 플랜을 모형처럼 만들어보는 것
- 각 슬라이드를 앱의 스크린이라 생각하고 구상

- 처음부터 다 설계?: NO
- 스크린 1-2개에서 시작하여 adding한다는 생각: YES

- What is the first screen?
- Which buttons are visible?
- Then what happens?
- What kinds of graphics? icons?
- How many taps?
- How would users navigate between views?
- 직관적으로 설명없이 어떤 feature인지 나타낼 수 있을까?

### 4. Evaluate

- 프로토타입을 테스트
- 주변 지인 + target audience에게 시험
- Observe + Ask

### During: Things to Observe

- 어떤 버튼을 tap할지 유저가 알았는가?
- 유저가 혼동한 포인트는?
- 유저가 즐거워한 포인트는?

### Afterwards: Questions to Ask

- 앱에서 좋았던 부분? 안좋았던 부분?
- 앱이 유용하다고 생각하는가? 출시된다면 사용할 의향?
- 앱에서 더 추가됐으면 하는 점?

## Pomodoro

### M

#### DailyResult.swift

```swift
import Foundation

struct DailyResult {
    private let pomodoros: Int
    private let accomplishmentLevel: AccomplishmentLevel

    init(pomodoros: Int) {
        self.pomodoros = pomodoros
        self.accomplishmentLevel = AccomplishmentLevel(pomodoros: pomodoros)
    }
}

extension DailyResult {
    var message: String {
        switch accomplishmentLevel {
            case .phenomenal: return "You've collected \(pomodoros) 🍅 today. 💎"
            case .verygood: return "You've collected \(pomodoros) 🍅 today. 💡"
            case .good: return "You've collected \(pomodoros) 🍅 today. 😈"
            case .bad: return "You've collected \(pomodoros) 🍅 today. 😵‍💫"
            case .verybad: return "You've collected \(pomodoros) 🍅 today. ⚠️"
            case .terrible: return "You've collected \(pomodoros) 🍅 today. 🧨"
        }
    }
}
```

#### AccomplishmentLevel.swift

```swift
import Foundation

enum AccomplishmentLevel {
    case phenomenal, verygood, good, bad, verybad, terrible

    init(pomodoros: Int) {
        if pomodoros >= 20 {
            self = .phenomenal
        } else if pomodoros >= 16 {
            self = .verygood
        } else if pomodoros >= 10 {
            self = .good
        } else if pomodoros >= 6 {
            self = .bad
        } else if pomodoros >= 2 {
            self = .verybad
        } else {
            self = .terrible
        }
    }
}
```

#### PomodoroBasket.swift

```swift
import Foundation

struct PomodoroBasket {
    private var pomodoros: Int = .zero
    private var breaks: Int = .zero
}

extension PomodoroBasket {
    private var unitStudyTime: Int {
    25
    }

    private var unitBreakTime: Int {
        5
    }

    private var studyTime: Int {
        pomodoros * unitStudyTime
    }

    private var breakTime: Int {
        breaks * unitBreakTime
    }
}

extension PomodoroBasket {
    var emojis: String {
        String(repeating: "🍅", count: pomodoros)
    }

    var timeLabelText: String {
        "StudyTime: \(studyTime)mins BreakTime: \(breakTime)mins"
    }
}

extension PomodoroBasket {
    mutating func addPomodoro() {
        pomodoros += 1
    }

    mutating func addBreakTime() {
        breaks += 1
    }

    mutating func resetBasket() {
        pomodoros = .zero
        breaks = .zero
    }
}

extension PomodoroBasket {
    var dailyResultMessage: String {
        DailyResult(pomodoros: pomodoros).message
    }
}
```

### VC

#### MainViewController.swift

```swift
import UIKit

final class MainViewController: UIViewController {
    @IBOutlet private weak var guideImageView: UIImageView!
    @IBOutlet private weak var pomodoroLabel: UILabel!
    @IBOutlet private weak var timeLabel: UILabel!
    @IBOutlet private weak var studyButton: UIButton!
    @IBOutlet private weak var breakButton: UIButton!
    @IBOutlet private weak var endButton: UIButton!
    @IBOutlet private weak var resetButton: UIButton!

    var pomodoroBasket = PomodoroBasket()
}

extension MainViewController {
    enum Mode {
        case standby
        case counting
        case result
    }
}

extension MainViewController.Mode {
    var backgroundColor: UIColor {
        switch self {
        case .standby, .counting:
            return .green
        case .result:
            return .red
        }
    }

    var guideImage: UIImage? {
        switch self {
        case .standby, .counting:
            return UIImage(named: "pomodoro")
        case .result:
            return UIImage(named: "pomodoro")
        }
    }

    var pomodoroLabelFont: UIFont {
        switch self {
        case .standby, .counting:
            return .systemFont(ofSize: 10)
        case .result:
            return .systemFont(ofSize: 20)
        }
    }
}

extension MainViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        update(mode: .standby)
    }
}

extension MainViewController {
    private func update(mode: Mode) {
        switch mode {
        case .standby:
            enableCounting(isEnabled: true)
            configureTimeLabel(timeText: nil)
            pomodoroLabel.text = ""
        case .counting:
            enableCounting(isEnabled: true)
            configureTimeLabel(timeText: nil)
            pomodoroLabel.text = pomodoroBasket.emojis
        case .result:
            enableCounting(isEnabled: true)
            configureTimeLabel(timeText: pomodoroBasket.timeLabelText)
            pomodoroLabel.text = pomodoroBasket.dailyResultMessage
        }

        view.backgroundColor = mode.backgroundColor
        guideImageView.image = mode.guideImage
        pomodoroLabel.font = mode.pomodoroLabelFont
    }

    private func enableCounting(isEnabled: Bool) {
        studyButton.isEnabled = isEnabled
        breakButton.isEnabled = isEnabled
        endButton.isEnabled = isEnabled
    }

    private func configureTimeLabel(timeText: String?) {
        timeLabel.isHidden = timeText == nil
        timeLabel.text = timeText
    }
}

extension MainViewController {
    private func addPomodoro() {
        pomodoroBasket.addPomodoro()
        update(mode: .counting)
    }
}

extension MainViewController {
    @IBAction private func tapStudyButton(_ sender: UIButton) {
        addPomodoro()
    }

    @IBAction private func tapBreakButton(_ sender: UIButton) {
        pomodoroBasket.addBreakTime()
    }

    @IBAction private func tapEndButton(_ sender: UIButton) {
        update(mode: .result)
    }

    @IBAction private func tapResetButton(_ sender: UIButton) {
        pomodoroBasket.resetBasket()
        update(mode: .standby)
    }

}
```

- `init`: custom initializer 생성
- `String(repeating: count:)`: count만큼 해당 string을 repeating해라
- `mutating func`: 하나의 인스턴스는 스스로의 저장값을 바꿀 수 없어서, 저장값을 바꿀 수 있도록 mutating func으로 함
- `UIImage?`: Failable, 해당 Image가 있을 수도 없을 수도 있다는 이야기
- `configureTimeLabel(timeText: String?){timeLabel.isHidden = timeText == nil, timeLabel.text = timeText}`: timeText가 nil일 수도 있기에 String?으로 설정, timeText가 nil이라면 timeLabel을 숨기고, 그렇지 않다면 timeText를 보여줘라
- `MainViewController{ enum Mode { } }`: MainViewController를 통해 적용할 화면들을 기능, 용도에 따라 mode 설정해보자
- `extension MainViewController.Mode { }`: Mode별 구현 사항 설정
- `extension MainViewController { private func update(mode: Mode) { switch mode { } } }`: Mode별 구현 사항을 바탕으로 실제 화면을 업데이트해주는 함수 설정
    - 이 때 또 반복되는 작업이 있다면 이 안에서도 decomposition을 통해 묶어줘라

## MVC

- Model + View + Controller
- app을 구현함에 있어 app에 맞게 사용할 수 있는 data의 type을 설정하는 Model 파트, app을 user에 보여주는 design 측면을 설정하는 View 파트, 그리고 data model과 view 사이에서 업데이트 및 관리를 담당하는 Controller 파트로 보통 구현한다.

## Protocol & Extension

- Protocol은 특정 역할을 수행하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진으로, 프로토콜을 채택한 타입은 프로토콜이 요구하는 기능을 구현하여 프로토콜을 준수(conform)하여야 한다.
- Extension은 기존 타입의 기능을 ‘확장’한다.
- 프로토콜 지향 프로그래밍: 구조체에서 주로 사용한다. 클래스의 경우 상속을 통해 해당 클래스의 타입은 기능을 상속받는다. 이는 한계점이 있다. 반대로 프로토콜로 기본적인 타입의 속성을 설정해놓고, 익스텐션을 통해 해당 프로토콜에서 사용 가능한 기능을 정의해놓으면, 보다 쉽게 접근할 수 있다.

### `extension`

- `extension SomeClass { }`
- 하나의 클래스(혹은 그 외 커스텀 타입) 안에 모든 기능을 정리할 수 있지만, 코드를 따로 정리하고 싶을 때 extension 사용 가능
- 해당 body 안에 연관된 기능들을 따로 따로 넣어 정리해줄 수 있음
- extension 키워드를 통해 해당 클래스의 기능들을 ‘확장’시키는 개념
- 코드 정리 및 수정 용이

```swift
class ViewController: UIViewController { }

extension ViewController {
    ...
}

extension ViewController {
    ...
}
```

## 클래스와 상속

- 클래스
    - 자식클래스(Subclass)와 부모클래스(Superclass)로 나뉨
- 상속(Inheritance)
    - 기반클래스를 다른 클래스에서 물려받는 것을 의미
- Subclass는 Superclass의 메서드, 프로퍼티, 서브스크립트를 사용 및 재정의할 수 있음
    - 재정의(Override)
    - 부모클래스의 메서드, 프로퍼티, 서브스크립트 등을 그대로 사용하지 않고 변경하여 사용하는 것을 의미(키워드로 `override` 사용)
- `super`
    - 자식클래스에서 부모클래스의 속성을 사용하고 싶을 때 사용

```swift
class SubClass: SuperClass {
    ...
}
```

### final

- 해당 class를 상속 불가한 class로 만들고자 할 때
- 즉, 해당 클래스가 ‘파이널’이다
- 상속하지 않을 클래스에 `final`을 붙여주면 코드 속도가 빨라짐
- 상속을 하고 싶을 시에는 `class SubClass: SuperClass { }`와 같이 선언

### 메서드 재정의(Method Override)

```swift
class Parents {
    func speak() {
        print(“I’m your father”)
    }
}

class Child: Parents {
    override func speak() {
        print(“I’m your daughter”)
    }
}
```

### 프로퍼티 재정의(Property Override)

```swift
class Group {
    var subject: String = “main subject”
}

class Member: Group {
    override var subject: String = “test” // cannot override stored property error!

    var _subject = “”

    override var subject: String {
    	get {
    		return _subject
    	}
    	set(value) {
    		_subject = super.subject + value
    	}
    }
}
```

### 서브스크립트 재정의(Subscript Override)

```swift
class Group {
    var members: [Member] = []
    subscript(number: Int) -> Member {
        return members[number]
    }
}

class Member: Group {
    override subscript(number: Int) -> Member {
        return members[number+1]
    }
}
```

## View Controller Lifecycle

- UIViewController Lifecycle
- `init —> loadView —> viewDidLoad —> viewWillAppear —> viewDidAppear —> viewWillDisappear —> viewDidDisappear —> viewDidUnload`
- `loadView()`
    - 컨트롤러가 관리하는 뷰를 ‘만드는’ 역할
    - 뷰를 만들고 메모리에 올림
- `viewDidLoad()`
    - Called after the controller’s view is loaded into memory
    - If you want to perform any additional initialization of your views, do so in the `viewDidLoad()` method
    - 뷰의 추가 초기화를 수행하려면 여기서 수행

```swift
class ViewController: UIViewController {
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    }
}
```
- `viewDidLoad()`
    - 뷰의 로딩이 완료되었을 때 시스템에 의해 자동으로 호출
    - 일반적으로 리소스를 초기화하거나 초기 화면을 구성하는 용도로 주로 사용됨
    - 화면이 처음 만들어질 때 한 번만 실행되므로 처음 한 번만 실행해야 하는 초기화 코드가 있을 경우 이 메서드 내부에 작성

- `viewWillAppear()`
    - 뷰가 이제 나타날 것이라는 신호를 컨트롤러에게 알리는 역할
    - 뷰가 나타나기 직전에 호출
    - 다른 뷰로 갔다가 다시 돌아오는 상황에서는 `viewDidLoad()`는 적용되지 않음 (`viewWillAppear()`만 적용)
    - 그러므로 앱의 초기화 작업은 `viewDidLoad()`에서 해도 되겠지만, 다른 뷰에서 갔다가 다시 돌아오는 상황에서 해주고 싶은 처리는 `viewWillAppear()`에서 함

- `viewDidAppear()`
    - 뷰가 나타났다는 것을 컨트롤러에게 알리는 역할
    - 화면에 적용될 애니메이션을 그려줌
    - 뷰가 화면에 나타난 직후에 실행

- `viewWillDisappear()`
    - 뷰가 사라지기 직전에 호출되는 함수
    - 뷰가 삭제되려 하고 있는 것을 컨트롤러에 통지

- `viewDidDisappear()`
    - 뷰가 제거되었음을 컨트롤러에게 알림

```bash
실행 —> View A

    A viewDidLoad
    A viewWillAppear
    A viewDidAppear

View A —> View B

    A viewWillDisappear
    B viewDidLoad
    B viewWillAppear
    A viewDidDisappear
    B viewDidAppear

View B —> View A

    B viewWillDisappear
    A viewWillAppear 🧐?
    B viewDidDisappear
    A viewDidAppear
```

- 🧐
    - View A는 네비게이션 컨트롤러에서 rootView이므로 `viewDidLoad()`를 처음 실행 시 한 번만 수행
    - 나머지 뷰는 스택에서 사라질 시 pop, 메모리에서 사라지므로, 다시 `viewDiDLoad()`가 필요
    - 네비게이션 컨트롤러의 동작은 자료구조에서의 스택과 같음
    - 스택은 새로운 뷰가 해당 스택 메모리 위에 push되어 해당 스택의 top이 되며, push 연산과 반대로 pop 연산은 현재 화면을 사라지게 하고, 스택 메모리 밑에 있는 화면이 스택의 top이 되면서 top 화면을 보여줌
    - pop을 하면 스택에서 빠져나간 뷰는 메모리에서 사라짐 (🧐)

## Access Control

- Access Control은 다른 소스파일 및 모듈의 코드에서, 코드의 일부에 대한 액세스를 제한하는 것
- 이를 통해 코드의 구현 세부사항을 숨기고, 해당 코드를 접근하고 사용할 수 있는 기본 인터페이스를 지정할 수 있음
- 개별 타입(클래스, 구조체, 열거형) 외에도 해당 타입에 속하는 프로퍼티, 메서드, 이니셜라이저, 서브스크립트 등에 대한 특정 접근 레벨 지정 가능
- 객체 외부에서 객체 내의 자료로의 접근을 제한하고 데이터를 조작, 수정하는 동작은 내부에 두고 접근(getter), 설정(setter)하는 메서드로 결과만 받는 것
- Access Levels
    - `open`
    - `public`
    - `internal`
    - `file-private`
    - `private`

### open

- 엔티티를 정의하는 모든 소스파일 내, 정의한 모듈을 가져오는 다른 모듈의 소스파일에서 모두 접근 가능
- 일반적으로 Framework에 공용 인터페이스를 지정할 때 사용
- 클래스 및 클래스 멤버에만 적용
- 다른 접근 레벨들과 다르게 정의 모듈 외에 이를 가져오는 외부 모듈에서도 서브클래싱: override 가능
- 클래스를 명시적으로 open으로 표시하면, 해당 클래스를 Super Class로 사용하는 다른 모듈에서 가져온 코드의 영향을 고려했으므로, 클래스 코드를 적절히 디자인했음을 나타냄

```swift
// Framework 내부

open class OpenClass {
    public init() { }
    open func someMethod() { }
}

// Framework 외부

import SomeFramework

class A: OpenClass {
    override func someMethod() {
        print(“Hello, world!”)
    }
}
```

### public

- 엔티티를 정의하는 모든 소스파일 내, 정의한 모듈을 가져오는 다른 모듈의 소스파일에서 모두 접근 가능
- 일반적으로 Framework에 공용 인터페이스를 지정할 때 사용

### internal

- 정의 모듈의 모든 소스파일 내에서 사용 가능, 해당 모듈 외부의 소스파일에서는 사용 불가
- 일반적으로 App이나 Framework 내부 구조를 정의할 때 `internal` 접근 사용
- 기본적인 접근 수준

```swift
// Framework 내부

open class OpenClass {
    public init() { }
    func someMethod() { }
}

// Framework 외부

import SomeFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
    	super.viewDidLoad()
    	let openClassInstance = OpenClass()
    	openClassInstance.someMethod() // error! ‘someMethod’ is inaccessible due to ‘internal’ protection level
    }

}
```

### file-private

- 정의 소스파일에 엔티티 사용을 제한
- 해당 세부 정보가 전체 파일 내에서 사용될 때 특정 기능의 구현 세부 정보를 숨길 수 있음
- `file-private` 수준의 타입의 서브클래싱이나 인스턴스 생성 시 마찬가지로 접근 수준을 `private` or `file-private`으로 설정해야함

```swift
fileprivate class FilePrivateClass{
    public init() { }
}

private var fileprivateInstance = FilePrivateClass()
private class A: FilePrivateClass { }
```

### private

- 정의 선언과 해당 선언의 extension에 엔티티 사용을 제한
- 단일 정의 내에서만 사용되는 특정 기능 조각의 구현 상세 내역을 숨길 수 있음

```swift
private class PrivateClass {
    public init() { }
    private var name = “Bruno”
}

// 클래스 프로퍼티에 접근하기 위해 init은 public으로
// init이 private이면 인스턴스 생성 불가

private let someInstance = PrivateCalss() // ok

// 인스턴스 생성 가능, 생성 시 마찬가지로 private으로 설정

class Test {
    private let someInstance = PrivateClass()
    func someMethod() {
        print(someInstance.name) // error!
    }
}

// PrivateClass 외부에서는 ‘name’을 사용하지 못하도록 private var로 선언했기에 Test라는 클래스에서 사용 불가

extension PrivateClass {
    func someMethod() {
        print(name) // ok
    }
}

// 해당 선언의 extension에서는 사용 가능
// 서브클래싱은 가능, 하지만 접근 수준을 fileprivate이나 private으로 지정

fileprivate class A: PrivateClass { }

// 그러나 override는 불가

open class OpenClass {
    private func someMethod() { }
}

class A: OpenClass {
    override func someMethod() { } // error!
}
```
