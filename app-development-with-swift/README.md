## App Development with Swift

---

### Index

- [Playground Basics](#lesson-1-playground-basics)
- [Naming and Identifiers](#lesson-2-naming-and-identifiers)
- [How to deal with text information in Swift](#lesson-3-strings-how-to-deal-with-text-information-in-swift)
- [Hello, World!](#lesson-4-hello-world)
- [First App](#lesson-5-first-app)
- [Functions](#lesson-6-functions)
- [Boogiebot](#lesson-7-boogiebot)
- [Constants and Variables](#lesson-8-constants-and-variables)
- [Types](#lesson-9-types)
- [Parameters and Results](#lesson-10-parameters-and-results)
- [Making Decisions](#lesson-11-making-decisions)
- [Instances, Methods, and Properties](#lesson-12-instances-methods-and-properties)
- [QuestionBot](#lesson-13-questionbot)
- [Arrays and Loops](#lesson-14-arrays-and-loops)
- [Defining Structures](#lesson-15-defining-structures)

## lesson 1 (Playground Basics)

---

results sidebar
`//` —> comments
calculations: `+, -, *, /`
에러가 있으면 results sidebar에 결과값이 표기 x

## lesson 2 (Naming and Identifiers)

---

“It is important to use clear names when writing code”

1. 내 코드의 의도를 드러내줌
2. 다른 프로그래머와 협업도 쉬움
3. 디버그하기 더 쉬울 것임

a line of code=statement
constant
identifier(name) / camel case(lowercase, no space, Capital instead of space)
declaration=making a constant (let)
autocompletion
keyword(let과 같은 함수? name으로 사용할 수 없음)
constant (= 101)——> ‘assigning’ ‘value’
하나의 값으로 고정하는 것이 constant, 그곳에 부여하는 값이 value, 부여하는 행위를 assignment
`=` —> assignment operator

binary operator: 작업을 하기 위해 2개의 값이 필요 - 곱하기, 덧셈, 뺄셈, 나누기 등
unary operator: 1개의 값이 필요(단항연산자) - NOT, 역수(inverse), FFT, integral, differentiation
operand: 연산자에 입력으로 들어가는 값들

type inference(타입 유추) —> string(문자열), int(정수), Float, Double
initializer(생성자): type을 인위적으로 변경 가능

`var`: vary able, variable
`let`: constant

## lesson 3 (Strings) How to deal with text information in Swift

---

스위프트를 포함한 대부분의 프로그래밍 언어에서 텍스트값은 string이라 불림(a single letter is not useful by itself)
strings are made up of characters(letters, punctuation marks, numbers, symbols, invisible characters(spaces, tabs))
defining strings: let = “~~”

유니코드가 있어서 다양한 언어 사용 가능
Unicode is an international standard that can represent almost any character from any language in a standard way / Swift are fully Unicode-compliant / you can create strings that contain the text of different languages
emoji: command-control-space
name / value 모두 사용 가능

Combination by Addition(+)
Combining Strings: A + “ “ + B / 이처럼 사이에 “ “라는 space를 붙여줘야 띄어쓰기를 함
Hello Tara, welcome to Paris!
—> “Hello “ + firstName + “, welcome to “ + city + “!”

하지만 띄어쓰기는 까먹기 쉬움 —> 단순 요소들의 combination말고 fill-in-the-blank 방법은 어떨까?
—> string interpolation
`\(name)` —> name의 value는 string, number 모두 가능
`\(name1 + name2)`와 같이 calculation도 가능

quicklook / show result

Escape Character
string 정의말고, 내용 자체에 “”를 넣고 싶다면?
escape character: `\`
이러한 backslash는 스위프트로 하여금 뒤에 오는 것을 특별하게 취급하도록 함(normal behavior에서 ‘escape’하도록 함)
그러므로 `\”`를 하면 “가 string definition의 경계로 취급되지 않음

Escape Sequences: The pattern of an escape character followed by something that’s treated specially is called an escape sequence.
`\”`
`\(~~)`
`\n` - newline character, 나타나는 결과가 새로운 줄로 시작하게 함

## lesson 4 (Hello, World!)

---

Configuring Xcode Environemnt

Colors - Preferences —> Themes
Hide the Results Sidebar - 드래그하면됨 (옛날에는 이것이 없었음) —> 하지만 콘솔이 있다!

Console: you still have a powerful tool for investigating the state of your program. In programming, the console is a message center that can show details about the way a program is running

Hello
print command: tells a Swift program to send a message to the console

print("Testing, one two three.")

Most programmers, whether learning their first programming language or their fiftieth, choose to start with a friendly “hello.” But not just a generic hello. For their first hello, programmers typically go for the grander gesture and greet the whole world. This is the long-standing tradition you learned about earlier in this lesson.

Messages from Programmers
Why would you want to print to the console when you have a perfectly good results sidebar? - results sidebar는 playground용. XCode로 앱 만들 때는 results sidebar 없음. - results sidebar는 single line, 적은 양의 정보만 보여줌. - If you’re using code that was written by other people, the console is where you’ll see their direct messages about their code.

What Can You Print? (what can you send to the console?)
strings
numbers and calculations 이처럼 results sidebar에 입력할 수 있는 것들은 콘솔로도 print 가능
string expressions
constants
The `\n` you see in the results sidebar for the print statements is because print adds a new line at the end of the string. Otherwise the console would have everything printed on the same line.

Next, find out a common use for the console.

Logging
You may have heard of a captain’s log, where a seafaring (or spacefaring) captain records all the day-to-day info about the running of the ship.
But did you know that apps can have logs, too?
When coders print messages to the console, it’s usually to record, or to log, information about a program as it runs.
Printing messages to the console is known as logging
the messages are sometimes called log messages.
Programmers often use log messages to indicate that something has gone wrong or that something unexpected has happened. As you’ll see below, messages can provide warnings and help diagnose problems.

Wrapup
⁃ console은 코더가 자기 프로그램에 대한 정보를 나타낼 수 있는, 기록할 수 있는 곳(a tool programmers use to display all kinds of information in a program)
⁃ 다른 사람이 코드 가져다 쓸 때 메세지를 볼 수도, 프로그램 중 무엇이 잘못되었는지 등을 알려줄 수 있음.
⁃ 더불어, 앱을 만들 때는 results sidebar가 없으므로 print() 형태+콘솔 출력을 통해 어떠한 결과가 만들어지고 있는지 확인할 수 있음.
⁃ 고로, Debugging의 용도도 있음. 결과 확인을 통해 제대로 출력되는지 알 수 있기 때문. Sometimes, you’ll add temporary print statements to figure out why your program isn’t working. Tracking down code issues, or bugs, is one of the most common uses of the console.

정리하자면, Console은 프로그램이 어떻게 돌아가고 있는지 보여주는 곳. 여기 적혀있는 기록을 log라 한다. 이는 1. 사용의 측면: 기본적으로 프로그래머가 print하도록 결정한 정보를 보여주고 제공하는 용도가 있다. 이를 사용하는 프로그래머들은 그러므로 이를 통해 정보를 얻을 수 있다. 실제로 mac의 콘솔 앱을 들어가보면 맥의 프로그램들의 로그를 확인할 수 있음. 2. 코딩의 측면: 앱을 만들 때 print()를 통해 결과를 확인할 수 있음. 이 값들을 관찰함을 통해 버그를 발견. 디버깅을 하고자 할 수 있음.

console = logging & debugging

‘When developers log messages to the console, they usually include extra details about what the app was doing at the time of the problem.’

console = behind the stage
You’ve seen how developers use the console to log messages about an ​app’s status or with extra details about problems.

## lesson 5 (First App)

---

5.1 New Project

app = code + design

Xcode includes several built-in app templates
Most of these templates have a preconfigured interface and source code files

Build means “Assemble all the parts into an app.” Run means “Start the app,” as if you’d tapped its icon on the Home screen. Follow the steps below to build and run your app.
You’ll use “Build and Run” a lot while developing your app, not just when you’re done.

- Product Name: 프로젝트 이름
- Team: Apple Developer account로 로그인 후, device에 app을 build할 수 있도록 함 // 없다면 iOS Simulator를 사용
- Organization Name
- Organization Identifier: 임의로 com.example 사용
- Bundle Identifier: Organization Identifier.Product Name
- Language: Swift / Objective-C

- If you’re running an app for the first time, Xcode asks whether you’d like to enable developer mode on your Mac. Developer mode gives Xcode access to certain debugging features without requiring you to enter your password each time.

- If you can’t see the whole simulator because of the screen size, go to Window > Minimize / Zoom to fit the whole simulator on the screen.

5.2 Explore Your Project (Xcode에 대한 전반적 설명)

To get started building apps in Xcode, it’s enough to:
⁃ Find your code and interface files
⁃ Edit them
⁃ Add more files
⁃ Build and Run

Toolbar: You’ll use this to check the project’s status, to hide and show the other window areas and, most importantly, start running your app from the giant “Play” button! If you don’t see the toolbar, you can bring it back by selecting "Show Toolbar" from the View menu at the very top of the screen. (View > Show Toolbar)

Navigator: Explore the Project! You’ll use this to move around your project; this is where you select which file to open in the editor with a single click. (A double-click will open the file in a new window instead of the current editor.)

Editor: Edit the codes and interface files! This is where you’ll edit your code, whether source code or user interface items. Most people always keep the editor visible while they’re working. (This screenshot is showing the project overview, where you can choose things like whether your app supports Landscape orientation.)

Inspectors: You’ll use this to find out more details about the item currently selected or displayed in the editor; you’ll use this area especially when you’re editing user interface files in Interface Builder.

Navigator에 나타나는 파일명: A.B
A: Launchscreen, Main, ViewController와 같이 파일의 identity를 나타냄
B: file extension // 파일의 종류를 나타냄

- .swift files: tell your app what to do, and when and how to do it. 앱에 명령하는 것. code.
- .storyboard files: tell your app where to display information on the screen. Xcode에서 이를 보여주는 환경을 Interface Builder라 부름.
- .xcassets: holds all the images for your app, including the ​app icon.
- .plist: manage your app’s setup information.
- Project File: display name under your app icon on the Home screen, portrait/landscape orientation 지원 여부 등

5.3 Edit the Storyboard

1. Add an image to your project
2. Add an image view to the view controller
3. Tell the image view to display your image

- Assets.xcassets에 추가하고자 하는 사진 파일 드래그
- 기존의 View 삭제(Delete 버튼) —> View > Show Library —> ‘Image View’ 검색 —> View Controller에 드래그
- 추가된 ‘Image View’ —> Attritbutes Inspector —> Image 선택 // Content Mode: Scale To Fill은 화면 크기에 맞춰서 사진을 늘림(깨짐 발생 가능), Aspect Fit은 stretching or squashing 없이 이미지를 view 안에 맞춤

Summary

- The project navigator shows a list of all your code, interface, and configuration files.
- You can change the editor’s contents by choosing different files in the project navigator.
- When you select different files in the project navigator, you see different options in the utilities area.
- You can show and hide the navigation and utilities areas as you like.

## lesson 6 (Functions)

---

Building blocks(=functions) of code!
Practice calling functions and learn how to define functions of your own

Any identifier followed by parentheses is a function

Abstraction
- a fundamental idea in software development
- the idea of taking something complex and defining a simpler way to refer to it
- ‘get dressed’라는 말 안에는 여러 step이 있지만 우리는 이를 ‘get dressed’라 표현함
- this is how programmers keep from getting overwhelmed by details and complexity

Functions
- one of the most fundamental ways to define abstraction in code
- 가령 print( )라는 function을 호출할 때(calling a function), 우리는 그 안에서 벌어지는 세부 단계들을 일일이 명령하지 않고, print( )라는 명령어 하나로 쉽게 할 수 있는 것임

A Single Piece of Work
- 코드를 어떻게 묶는가!

Function declare 하는 법 (you can wrap up the code you want to use more than once)

```swift
func ~~~() {
print()
print()
}
```

이렇게 delcare 한 뒤(안에 있는 code line들은 ‘body’라 부른다)

Breaking it Down - 하나의 큰 코드라인들의 덩어리를 어떤 묶음으로 분해할 것인가!
유의미한 작은 단위들로, func A(), func B(), func C() 와 같이 나누어 묶자

이것을 decomposition이라 부른다

Functions Within Functions
이러한 재료들을 합쳐 새로운 함수도 만들 수 있음

```swift
func X() {
	A()
	B()
}

X()
```

주의할 점: Infinite Loops! function 내에 그 function 스스로를 정의하면 무한루프가 되버림. `func X() { func A() func B() func X() } —> X()` 호출 시 무한루프 발생.

그렇다면 이러한 function이 왜 중요한가?
- Hiding Complexity!
- The point of using functions is to break things down into understandable, reusable parts. Each part does a very clear piece of work. When working on an app, you’re never looking at every single line of code. You’ll call a function knowing what it does, but not necessarily how it does it.

- Making your programs Easier to Change
- print할 내용이 달라지면 일일이 고칠 필요없이 최소 단위 부분만 바꾸면 됨.

- Functions = A Powerful Example of Abstraction

## lesson 7 (Boogiebot)

---

Live Views 기능: a playground feature that let you see instant updates to your work, without having to add inline results as you did in the Strings playground. Live views also allow you to play with animation.

Editor -> Live View 선택 (Editor가 하나에서 Assistant Editor를 포함하여 2개로 쪼개짐).

APIs (Application Programming Interface): API란, 기능을 사용하기 위해 요청 / 응답하는 소프트웨어 간 중간체계. App developers always work with code provided by others. An API is a specific set of functionality that can be used by a software developer to accomplish a task.

Routines!
하지만 API에서 차용하는 function들을 일일이 사용하는 것은 미련함. 마찬가지로 `func X() { A() B() }` 와 같이 정의하여 block들을 만들자.

BoogieBot API를 통해 연습
부기봇 API가 제공하는 기능 - 로봇 움직임 및 색깔 제공 - Personalization(타이틀 달 수 있음) - 레코딩 기능(gif로 저장 및 공유 가능)

이렇게 만든 routines를 우리는 알고리즘이라 부른다.

When you develop an algorithm, you’re defining a series of steps to be performed. They don’t have to be dance steps, of course; any self-contained step-by-step series of operations is an algorithm.
Defining algorithms is a large part of programming. There are complex mathematical algorithms that do things like compress video so it can be sent efficiently over the Internet. There are algorithms that don’t involve mathematics at all, like an algorithm to check if an app user has any new messages and to present a notification if they do.

a preplanned sequence of moves, in repeating patterns
functions made up of functions (made up of functions, and so on…)

## lesson 8 (Constants and Variables)

---

A large part of programming is making up things, giving them names, and then calling those things by name to use them.

Constants & Variables (Name-Value를 연결하는 방식)

- constant: assign된 값이 항상 똑같기에(constant) constant라 부른다. names that always refer to the same value.
- variable: 값이 vary-able. names where the value can change over time. 아이디어는 그대로 존재하지만, 이에 해당하는 값이 변하는 것.

Declare 방법

constant: `let A =` —> A는 이제부터 constant라 선언!
variable: `var A` = —> A는 이제부터 variable이라 선언!

Variable은 그럼 언제 어떻게 사용하는가?

You use variables in places where a value in your program needs to change over time. An example of this would be the score of a game. As the player scores more points, your code would update the value of a variable keeping track of the score.

- variable 선언 // var score = 0 // 다음 assignment가 있기까지 계속 0
- 새로운 value assign // score = 10 // 이 때부터 score의 value는 10
- assign이 없는 단순 calculation은 value를 바꾸지 않음 // score+5 // 15라는 값이 출력되지만, 여전히 score의 value는 10
- score=score+10 // 이러한 방식도 가능 // 이 때부터 score의 value는 20
- 이처럼 Up에서 Down까지 내려가며 variable의 value는 다음 assignment가 있기 전까지만 유지됨

`score = score + 10` —> (1) take the current value of ‘score’ (2) add 10 (3) assign the result to ‘score’ as its new value

이것을 합쳐서 한번에 하게 해주는 것이
`+=`
- compound assignment operator
- combines addition (+) and assignment (=) into one combined operation.
- `score = score + 10`, `score += 10`은 동일
- 숫자말고 string에도 동일하게 적용

Constants or Variables?

프로그램 중 바뀌어도 되는 부분, 바뀔 수 있는 부분을 mutable(able to ‘mutate’), 바뀌지 않을 부분, 바뀔 수 없는 부분을 immutable이라 한다.
constant의 장점은 값을 고정시키기에 confusion이 발생하지 않는다. 그러므로 프로그램 상 immutable이라 판단될 떄에는 value 설정을 constant로 하자.
you should only use a variable when the value absolutely needs to change over time!

Xcode의 Fix-it 기능

error 표시에 !대신에 하얀 점이 있을 시 Xcode가 error 해결 방법을 제시해줌. 하지만 이는 단순한 suggestion이므로 잘 고려해서 받아들일지 말지 스스로 의사결정을 해라

Safer Code vs. Varying, Unexpected World

Variable이 그냥 내 마음대로 바꿀 수 있는 것이니까 더 좋다고 생각하는 것은 금물이다. 때로는 Constant로 확정 짓는 것이 중요할 때가 있다. Variable로 value를 지을 시, 해당 value와 관련하여 연결된 여러 code들, 작업들이, 실수나 사고로 인하여 value가 변경될 시 전부 영향을 받게 된다. (마치 ‘친구가 원하는 음료=커피’ 이어서 커피 기계를 샀는데, 친구가 원하는 음료의 값이 바뀌면 낭패에 빠지는 것처럼). 그러므로 각 코드의 부분들이 어떤 역할을 하는지 명확히 이해를 하고, 확정해야 될 부분은 constant로, 그리고 정말 프로그램에 걸쳐 변화한 필요한 값일 경우에만 variable을 적용한다.

Wrapup

- Values declared with let are constants, and can’t be changed once a value is assigned. These values are called immutable.
- Values declared with var are variables, and can be assigned new values over time. These values are called mutable.
- A mutable value can be used as part of an assignment statement to itself: score = score + 10.
- Compound assignment operators allow mutable values to be updated: score += 10.
- Using constants and variables in the correct places helps make your code safer and easier to understand.

## lesson 9 (Types)

---

Features and Capabilities / Properties and Behaviors (용도와 특징)

Types describe:

- What a value is.
- What a value can do.
- Where you can use a value.

Type은 어떤 개념인가?
어떠한 Idea(좋아하는 과일)에 특정 Thing(바나나)를 연결시키듯이, Swift keeps track of the type of value associated with constants and variables. 각각의 type들은 공구함의 각 공구들처럼 프로그래밍에 쓰이는 tool이라 이해하자.

Types of Value in Swift

- Every Value has a Type.
- Option키 누른 상태에서 identifier 클릭하면 해당 type 확인 가능.
- String: 문자열
- Int (Integer): 정수(whole number) / 양수, 음수, 0
- Double: a number with a decimal point // “Double-precision floating point” number. A Float type also refers to a number with a decimal point, but the default Double is twice as precise.
- Float: a number with a decimal point

Why would you ever want to use less precise decimal numbers?

If you have a huge amount of data, the Float type will save space because it occupies half as much memory. If your calculations only require accuracy to the nearest hundredth, then there's no reason to store all those extra digits. Swift's default is Double because typical programs don't work with enough numeric data to cause issues with memory, and more accuracy makes your code less prone to subtle errors.

**Type Safety**

Swift won’t let you write code that uses types incorrectly or unexpectedly. This is called type safety — and prevents you from making all sorts of errors in your code.

The value of a variable can change, but the type of the variable can’t change.

42 = Int
“42” = String

Another instance of type safety would occur if you tried to add values of different types.

String + Int —> 성립 불가

binary operator: 작업을 하기 위해 2개의 값이 필요. 곱하기, 덧셈, 뺄셈, 나누기 등.
unary operator: 1개의 값이 필요(단항연산자). NOT, 역수(inverse), FFT, integral, differentiation.
operand: 연산자에 입력으로 들어가는 값들. Operands are the things the operator works with.

You can‘t mix and match Double and Int types in Swift because of type safety.

**Type Inference**

Swift에서 제공하는 강력한 기능으로 변수나 상수를 만들 때에 데이터 type을 생략하게 되면 Swift 컴파일러가 변수의 값을 확인하고 그 값에 맞는 타입을 추론하여서 타입을 자동으로 정해줌. 즉, 일일이 데이터 타입 선언 없이도 값에 의해서 데이터 형이 정해지는 것이다.

- Type Inference from Literal Context // 리터럴(literal)이란? 값(value)이 생긴 형태
    - `let string = 42`
    - string type: Int
- Type Inference from Assignment
    - `let anotherString = string`
    - anotherString type: Int

**Type Annotation** (데이터형을 명시적으로 선언하는 법)

Type annotation is entered right after the name declaration, using a colon and the name of the type:
Upper Camel Case: type 명은 functions, variables, constants의 이름들과 구분하기 위해 lower camel case가 아닌 upper camel case 사용(ex. TrainingShoe, RacingBike)

`let annotatedDouble: Double = 20` 
- Correct
- 20이라는 Int 값을 Double로 지정함
- Int —> Double

`let twenty: String = 20`
- Wrong
- 20이라는 Int 값을 String으로 지정하는 것은 불가함
- Cannot convert value of type 'Int' to specified type 'String’

**Swift Standard Library**

Swift has built-in types that represent the basic building blocks of all programs. You have spent a lot of time with String and Int, there are also many more.

- Array
- Dictionary
- Set
- Sequence
- Error
- Bool

They’re part of the Swift standard library. All programming languages have something similar — the basic set of capabilities required to do fundamental programming tasks.

쉽게 말해, 프로그래밍을 하는데 있어 사용되는 다양한 type이라는 ‘도구’들이 모여있는 하나의 표준 공구함, 하나의 표준 ‘라이브러리’이다.

**Beyond the Standard Library**

Programmers can also create their own types by combining and adding to the types and capabilities in the standard library. Take one of your made-up types from the experiment on the previous page, and imagine what types it might depend on. For example, a TrainingShoe might use an Int for a size, a String for a brand name, a Date for its release date, and another Int for its price in dollars.

Types and capabilities can be grouped together into collections called frameworks or libraries. When making apps, you can draw from frameworks included within Xcode. One very important framework is the Foundation framework.

The Foundation framework introduces lots of types used to represent more specific things than just strings or numbers from the Swift standard library. For example, there are types for dates, distances, and files on a computer.

These extra frameworks aren't added automatically to your programs, because you might not need them. It would be like taking everything you own on a quick trip to the mall.

How to Add Frameworks to your Programs?

To use a framework in your program, you have to import it. That's done like this:
import Foundation

이렇게 import하고 난 뒤, Foundation Framework가 제공하는 여러 type들을 사용 가능. 그 중 하나의 예시로 Date가 있음. a specific moment in time을 represent할 때 사용함.

To create a Date representing right now, you simply use Date():

`let today = Date()`

- You will see today’s date and time in the results sidebar.
- Unlike with strings and numbers, there’s no way to create a Date from a literal.
- Without importing the framework, Swift will not recognize the code Date() and will give you an error.

이해한 바를 남기자면, 프로그래밍에 있어서 사용되는 여러 값들은 type들을 가지고, 각 type들이 할 수 있는 역할들이 각각 있다. 가령, String은 텍스트값을 나타내는데 주로 사용될 것이고, Int, Double과 같은 넘버들은 여러 calculation에 사용이 많이 될 터이고 이외에도 Swift 표준 라이브러리에서 제공하는 Array, Sequence, Dictionary 등 다양한 type들을 통해 프로그래밍 상 여러가지를 만들어낼 수 있을 것이다. 즉, 우리는 라이브러리라는 공구함에서 여러 type이라는 공구를 꺼내서 사용하는 것이다.

반대로, 스위프트 역시 우리가 지정한 여러 변수, 상수, 함수 등에서 사용되는 값들의 type을 1. 리터럴 형태를 통해서 or 2. assignment를 통해서, 계속 추적하면서 각 type들이 사용될 수 있는 분야에 사용되고 있는지, 그렇지 않다면 에러 표시를 해준다.

프레임워크의 경우 라이브러리와 비슷하게 개발에 있어 용이하게 사용할 수 있는 일종의 코드 뼈대를 제공한다. 하지만 import 명령을 해야 한다. 이후 Date()와 같이 제공되는 코드를 사용할 수 있다. 이는 표준 라이브러리에서 리터럴 형태를 통해 쉽게 알 수 있는 type이 아니다. 사용 빈도가 높고, 더 specific한 것을 더욱 편리하게 represent하기 위해 따로 프레임워크로 제공되는 type이다. Xcode에 내재된 프레임워크.

프레임워크와 라이브러리는 유사하지만, Flow에 있어 차이가 있다. 라이브러리는 단순 활용 가능한 도구들의 집합으로, 사용자가 FLOW를 만들며, 라이브러리는 가져다 쓰는 개념이지만, 프레임워크는 FLOW(제어흐름), 주도성에 있어 프레임워크가 지니고 있다. 이를 ‘제어의 역전’이라 한다. 앱 코드가 프레임워크에 의해 사용되는 느낌이다. 프로젝트 당 하나의 프레임워크만 사용할 수 있다.

## lesson 10 (Parameters and Results)

---

```swift
func helloJohnny() {
	let name = “Johnny”
	print(“Hello “ + name)
}

helloJohnny()
```

- specific한 함수. 다른 이름을 print하고 싶으면 새로운 함수를 만들어야 함. repititive함.

```swift
func hello(name: String) {
	print(“Hello “ + name)
}

hello(name: “Maria”)
hello(name: “Vikram”)
```

- general한 함수. 이 함수는 ‘name이라 불리고, String 타입인’ parameter(매개변수)를 가진 함수이다. name은 이제 위의 함수처럼 constant처럼 기능할 수 있다. 그리고 Maria, Vikram과 같이 이 함수의 parameter에 부여하는 value(값)을 argument(전달인자)라 한다. 그리고 parameter에 argument를 부여하는 행위를 passing in a value라 한다.

parameter의 name과 type을 정의할 것.

Passing More Values? (매개변수를 둘 이상으로 하고싶다면?)

comma로 parameter list를 만들자!

```swift
func hello(firstName: String, lastName: String) {
print(“Hello \(firstName) \(lastName)”)
}

hello(firstName: “Jon”, lastName: “Snow”)
hello(firstName: “Johnny”, lastName: “Appleseed”)
```

- each parameter is a pair of one name and one type and that the commas separate each parameter.
- Tab Key를 통해 편리하게 다음 패러미터로 이동 가능.

**Returning Values**

패러미터를 통해 결과값을 직접 입력하는 함수를 넘어, 리턴값을 주는 함수는 어떻게 만드는가?

함수가 종료되었을 때 결과값을 돌려주는 것을 returning a value라 한다. 이 때 parameter list 뒤에 1. `->` 2. 받고자 하는 리턴값의 type 2가지를 추가로 정의해주어야 한다.
그리고 함수의 body에 return statement를 정의하자.

```swift
func spaceAvailableMessage(eachVideoDuration: Int, numberOfVideos: Int) -> String {
let currentSpace = 10000
let megabytesPerSecond = 3
let spaceAvailable = currentSpace - eachVideoDuration _ numberOfVideos _ megabytesPerSecond

    return “If your \(numberofVideos) videos are \(eachVideoDuration) seconds each, you’ll have \(spaceAvailable) MBs remaining”
}

spaceAvailable(eachVideoDuration: 10, numberOfVideos: 50)
```

- 돌아오는 리턴값은 `If your 50 videos are 10 seconds each, you’ll have 8500 MBs remaining`

이 때 parameter는 2개, 돌아오는 리턴값은 1개이다.

무엇은 let으로 constant 설정을 하고, 무엇은 parameter로 설정하는지 어떻게 결정? —> 직관적으로 자주, 그리고 쉽게 변경해서 넣을 값들을 패러미터로 설정.

- 패러미터에 입력되는 값, 함수가 리턴하는 값 역시 직접 입력하는 것 외에 선언된 constant, variable 역시 사용될 수 있다 (Variables and constants can also be used as the arguments)!

```swift
let desiredVideoDuration = 40
let holidayVideoCount = 100
let videoMessage = spaceAvailableMessage(eachVideoDuration : desiredVideoDuration, numberOfVideos: holidayVideoCount)
let namedVideoMessage = “Hey Micah! \(videoMessage)”
```

- 이 결과는 `Hey Micah! If your 100 videos are 40 seconds each, you’ll have -2000 MBs remaining`

- 결국, return을 하는 함수는 하나의 값으로 최종적으로 귀결되는 함수이다. 함수를 통해 어떠한 value를 받고자 하며, 이러한 value를 더 나아가 활용하고자 한다면, 리턴 함수를 쓰는 것이 좋다. 가령 위에서 `let videoMessage = spaceAvailableMessage(eachVideoDuration : desiredVideoDuration, numberOfVideos: holidayVideoCount)` 같이 함수 이후 리턴값을 constant로 설정할 수 있다. 함수를 변수, 상수 등에 할당이 가능하다.

**Kinds of Function**

When you write functions, you now have four possible combinations of parameters and return values. Here’s a summary that describes when you might use each type of function:

❌ Parameters, ❌ Return value

- `paintAndHangPicture()`

When you call a function that doesn’t have any parameters and doesn’t return a value, it’s like saying “I want something to happen, but I don't particularly care how it's done or what happens to it later.”

Imagine you ask an artist to create a painting for you. If you use a function like paintPicture(), the artist will create whatever they want, then permanently hang the finished piece on whichever wall they like, maybe even in another city.

Calling this kind of function can save you the work of making decisions but can also require a lot of trust. The function does the work on its own and doesn’t give back any information, but it might have an impact on something that you have no control over.

The BoogieBot dance moves are an example of this type of function. The function name tells BoogieBot which move to do. The “work” is the move itself.

✅ Parameters, ❌ Return value

- `paintAndHangPicture(width: Int, height: Int, dominantColor: UIColor)`

These functions do work that changes depending on the arguments, but don't give anything back.

Now you can ask the artist to make a painting of a certain size, perhaps using a particular color scheme or featuring your favorite scenery. You take more control of the work performed, but the artist still has full control over the painting, and will hang it wherever they like.

The hello(name:) function is an example of this. You control the names, and the “work” is printing the string to the console.

❌ Parameters, ✅ Return value

- `paintPicture() -> Painting`

This kind of function returns a value without needing any extra information.

Imagine that you haven't given the artist any input parameters, so they create something entirely from their own vision. After they're done with the work, they’ll hand the finished painting over to you directly. Now you can hang, sell, or maybe even add to the painting yourself.

So far in this course, you haven‘t seen a function with this combination. Examples might be functions that give you a random number or tell you the current date and time.

✅ Parameters, ✅ return value

- `paintPicture(width: Int, height: Int, dominantColor: UIColor) -> Painting`

This kind of function gives a value back based on the information passed in. It takes all your input suggestions and transforms them into a new output value.

In this case, you give the artist input about what you'd like them to create and are handed back a finished product that you can use exactly as you like.

The spaceAvailableMessage(eachVideoDuration:, numberOfVideos:) function is an example of this type of function.

- When a function does some kind of work that’s unrelated to a return value, like printing to the console, or making BoogieBot dance, the work is called a side effect. When you name a function, it’s good to somehow include the side effect in the name, like `leftArmUp()`. If a function has no return value, all of its work is considered a side effect. That's why the functions that don't return a value on this page are named paintAndHangPicture.

Functions can:

- Group tasks together as a building block for a larger program
- Take information in
- Do work
- Return information
- Function의 장점은 Hiding Complexity!

**Naming**

직관적인 Function을 만들기 위해, 정의할 때 이름은 다음과 같은 테스트를 마음 속으로 생각하자.

- side effect test: A function that has a side effect should have a verb in the name. 예를 들어, print를 하는 함수라면, hello()가 아닌, printHello()로 할 것.
- function-as-a-sentence: Functions in Swift should read as much like a sentence as possible. 예를 들어, func printHello(name: String)가 아닌, func printHello(to: String)으로 하는 것이 훨씬 직관적이다.

**Parameters Names and Argument Labels**

잠시 매개변수(parameter)와 전달인자(argument)를 복습해보자.

- 매개변수(Parameter): 함수를 정의할 때 외부로부터 받아들이는 전달 값의 이름.
- 전달인자(Argument): 함수를 실제로 호출할 때 전달하는 값.

자, 위의 Naming에서 만든 함수를 다시 보자.

```swift
func printHello(to: String) {
print(“Hello “ + to)
}

printHello(to: “Maya”)
```

매개변수의 이름을 ‘to’라고 지정했는데, 함수가 취할 행동을 직관적으로 보여주기는 하나, 이름 자체가 직관적이지 않다. 코드가 복잡해질 경우 헷갈릴 수 있다.

그래서 사용하는 것이 전달인자 레이블(Argument Label)이다. 전달인자 레이블을 별도로 지정할 시 함수 외부에서 매개변수의 역할을 더 명확히 할 수 있다.

- 매개변수 이름(Parameter Name): 함수를 정의할 때 사용하는 이름.
- 전달인자 레이블(Argument Label): 함수를 호출할 때 사용하는 이름.
- 함수 내부에서는 전달인자 레이블 사용 불가, 함수 호출 시에는 매개변수 이름 사용 불가.
- 매개변수 이름과 전달인자 레이블은 같은 이름으로 사용할 수 있음.

```swift
func 함수 이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입) -> 반환 타입 {
실행 구문
return 반환 값
}

func greeting(from myName: String, to yourName: String) -> String {
return “Hello \(yourName)! I’m \(myName)”
}

print(greeting(from: “Jinwoo”, to: “Maya)) // Hello Maya! I’m Jinwoo
```

여기서 ‘myName’, ‘yourName’은 매개변수 이름(Parameter Names)이고 함수 내부에서 정의할 때만 쓰였다. ‘from’, ‘to’는 전달인자 레이블(Argument Labels)이고, 함수를 호출, 즉 사용할 때 쓰였다. 확실히 함수를 사용(호출)할 때 훨씬 직관적임을 알 수 있다.

**The Argument Without a Name**

패러미터 이름=전달인자 레이블인 경우가 아닌, 패러미터 이름은 있지만, 전달인자 레이블은 없는 경우를 declare하고 싶을 때는?

argument label이 들어갈 자리에 `\_`라는 밑줄(underscore)을 넣어준다. In Swift, the underscore means "I don't care about this item because I'm not going to use it".

```swift
func printHelloTo(\_ name: String) {
print(“Hello “ + name)
}

printHelloTo(“Maya”) // Hello Maya
printHelloTo(“Hiro”) // Hello Hiro
```

- 함수 정의 시에는 argument label 자리에 `\_`를 넣어주었고, 이에 따라 함수 호출 시에 `argument label: 전달값`이 아닌, argument label없이 전달값만 입력하면 됨을 확인할 수 있다.

Wrapup

- Functions take in information / do things with it / pass information out! (함수가 하는 일)
- Functions should read like sentences when you call them! Carefully choose names for your parameters and functions! (함수의 네이밍)
- Apps are built from many functions, passing information back and forth and working with it, and you now have the power to make these important building blocks!

## lesson 11 (Making Decisions)

---

True and False

**Boolean Values**

- true and false are special values in Swift: true, false는 숫자나 스트링처럼 하나의 값이다.
- The values true and false are known as Boolean values: 이러한 것을 Boolean이라 부른다.
- 19세기 수학자 George Boole에서 따온 이름임.

그렇다면 Boolean 값들을 답으로 도출하는 코드들에는 어떠한 것들이 있을까?

**Comparison Statement**

Give Boolean Results
Comparison Operator(비교 연산자)를 사용한 코드를 의미한다. 비교 연산자에는 다음과 같은 것들이 있다.

- `==`
    - equal
    - string 값 역시 적용 가능
- `!=`
    - not equal
- `<`
    - less than
- `>`
    - more than
- `<=`
    - less than or equal to
- `>=`
    - more than or equal to

**Conditional Statement**

Give Boolean Results + Do different things depending on the results

if statement

```swift
if ~~~ {
~~~~~~
}
```

- ~~~는 true or false 값을 가지는 code
- ~~~ 값이 true라면, 그 안에 있는 ~~~~~~라는 code를 실행
- ~~~ 값이 false라면, 그 안의 code를 실행하지 않음

if/else statement

```swift
if ~~A~~ {
~~B~~
} else {
~~C~~
}
```

- else 키워드 사용
- ~~A~~라는 code가 true 값이라면 ~~B~~ 실행
- ~~A~~가 false 값이라면 ~~C~~ 실행

else if statement

```swift
if ~~X~~ {
~~A~~
} else if ~~Y~~ {
~~B~~
} else if ~~Z~~ {
~~C~~
} else {
~~D~~
}
```

- else if 키워드를 통해 복수의 condition을 추가할 수 있음
- X가 false, Y가 true, Z가 true일 시, 1. X는 false이므로 다음 condition으로 이동, 2. Y가 true이므로 결과 도출, 3. Z는 true이기는 하나 이미 Y에서 종료되므로 결과 도출되지 않음
- 즉, 하나의 결과만 도출됨(true이면서 + 순서가 먼저인 것)
- 그러므로 조건문에서 코드의 순서도 매우 중요!

**Functions and Decisions**

if의 condition을 직관성을 높이기 위해 함수로 묶어줄 수 있다!

```swift
let bandMemberCount = 5
let gearWeight = 600
let weightPerPerson = 50
let maximumTripCount = 2

if gearweight < bandMemberCount _ weightPerPerson _ maximumTripCount {
“Rock on.”
} else {
“Everyone quits! Looks like you’ve got a solo show.”
}

// 밑줄 친 부분의 직관성이 떨어짐 // 그러므로 함수로 묶어주어 naming 하자
```

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

**Remainder Operator**

나머지 연산자

- `%`
- Swift에서 나눗셈의 나머지를 알려주는 연산자
- 다른 언어에서는 모듈로 연산자(modulo operator)라고 하며, Swift에서는 음수에도 동작함
- 엄밀히 말하면, 모듈로 연산하기보다 나머지(remainder)가 된다는 것을 의미
- `a % b`에 대한 해답을 얻기 위해 `a = (b * some multiplier) + remainder`라는 공식을 계산하고 출력으로 remaider를 반환함(some multiplier는 a안에 b가 들어갈 수 있는 최대 갯수)
- `9 % 4`
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

if 문에서 condition 자리에서 도출되는 boolean 값은 return하는 값이 아니라, 해당 코드를 실행할지(if true), 말지(if false)를 결정하는 값이다.

## lesson 12 (Instances, Methods, and Properties)

---

**Type과 Instance**

- 타입이란 단순히 어떠한 value가 어떠한 종류인지를 알려주는 것(label)을 넘어서, 공구함의 각 공구들처럼 프로그래밍에 쓰이는 tool, 즉 각 타입별로 여러 capabilities가 있다.
- 타입에는 String, Int와 같이 단순한 것부터 시작하여 // Swift Standard Library에서 제공하는 built-in 타입들 // 그리고 import 명령을 통해 사용할 수 있는 Foundation과 같은 Framework에서 제공하는 여러 타입들이 있다.
- types, functions 모두 프로그래밍에 있어서 building blocks이다.
- types = the basic set of capabilities (required to do fundamental programming tasks)
- libraries, framworks = groups of types and capabilities
- Framework에서는 Date() 와 같이 더 specific한 목적과 관련된 type을 제공한다.
- 라이브러리, 프레임워크를 차용하는 것 외에도 프로그래머는 create their own types by combining and adding to the types and capabilities.
- 인스턴스 = 타입의 실례

인스턴스(Instance)는 이러한 type들이 가지는 기본적인 속성, capabilities에 특정 값이 들어간 여러 다른 개체들을 뜻한다.

`let hello = “hello” // let aDifferentHello = “hello”`

- 여기서 인스턴스는 hello, aDifferentHello 2개이다.
- 2개의 인스턴스가 동일한 데이터를 hold하고 있는 것이다.

- 그렇다면 인스턴스를 어떻게 Create하고
- 어떻게 Use(Accessing Values and Behaviors)할까?

**Creating Instance**

- Literal을 통해 직접 value 입력
    - Only a few types, like String, Bool, and Int, can be created using literals, but every type has at least one initializer.

- Initializer
    - You use an initializer to create a new instance of a particular type. 새로운 인스턴스를 create, initialize한다!
    - 간단한 타입들을 제외하고는 모든 타입들은 최소 1개의 이니셜라이저를 가진다고 보면 됨
    - 리터럴을 통해 생성될 수 있는 간단한 타입(String, Int, Boolean 등)도 이니셜라이저 사용 가능
        - let A = String() // let B = Bool() // let C = Int()
    - 패러미터를 포함할 수 있음
    - import Foundation
    - let rightNow = Date()
    - let oneHourLater = Date(timeIntervalSinceNow: 3600)

- Initializers vs Functions
    - 공통점
        - () 형태를 가짐
        - 정의 시에 패러미터를 가질 수도, 가지지 않을 수도 있음
        - 호출 시에 필요한 argument 값을 전달함으로써 호출함
    - 차이점
        - () 앞의 이름에서 함수는 lowerCamelCase, 이니셜라이저는 UpperCamelCase
        - 즉, 이니셜라이저에서는 타입 이름을 사용함
        - 그리고 함수는 어떠한 값을 반환하지만, 이니셜라이저는 해당 타입의 새로운 인스턴스를 반환함

**Methods**
- Instance Method, 혹은 Method 는 특정 타입과 관련된 함수를 말함
- String 타입과 관련된 hasPrefix()와 같은 함수도 메서드, 그리고 클래스에서 선언된 함수도 메서드
- `인스턴스+점(.)+메서드`를 통해 호출
- `let introduction = “It was a dark and stormy night”`
- `func hasPrefix(\_ prefix: String) -> Bool`
- `introduction.hasPrefix(“It was”) // true`
- This is known as calling a method on the instance

You don’t need to pass in the value of introduction. The method is being performed by the instance assigned to introduction, so the value is already available to it.

- `hasPrefix()`라는 함수 자체가 String 타입들의 인스턴스 내에서만 기능하는 것
- 즉 위의 예에서는 introduction이라는 인스턴스 내에서 동작할 수 있는 것이기에
- 따로 introduction이라는 인스턴스의 값을 다시 전달할 필요가 없음

**Methods and Type Safety**

메서드란

- 특정 타입의 인스턴스 내에서만 정의되는 함수이기에
- 해당 타입과 관련된 인스턴스가 없는 경우
- 인스턴스가 있더라도 해당 타입이 아닌 경우

사용할 수 없다.

**Properties**

- a property is a constant or variable built in to each instance of a type.
- 특정 타입과 관련한 값을 뜻함
- `var isEmpty: Bool {get}`
    - String 타입의 인스턴스들에 적용되는 프로퍼티
    0 isEmpty라는 이름을 가지고 있고, Bool 타입이며, String 인스턴스들에 따라 다른 값을 도출할 것이므로 var로 선언
    - {get} indicates you can only get the value of this property, but you can’t set it
        - This is also called read-only property.
- 인스턴스+점(.)+프로퍼티 네임을 통해 호출
- let something = “It was the best of times”
    - something.isEmpty —> false 반환
- let nothing = “”
    - nothing.isEmpty —> true 반환

**Properties and Type Safety**

프로퍼티 역시 특정 타입의 인스턴스 내에서 정의되는 값이기에

- 해당 타입과 관련된 인스턴스가 없는 경우
- 인스턴스가 있더라도 해당 타입이 아닌 경우

사용할 수 없다.

**Properties VS Methods**

- Properties
    - Getting values from an instance
    - Setting values on an instance

- Methods
    - Providing behavior specific to an instance
    - If the work you want to perform needs extra information, then it must be a method
    - 즉, 전달인자(arguments)가 필요한 경우는 메서드
    - side effects(값을 반환하는 것 외의 기능)에 관한 것은 메서드
    - var magic = “Now you see it” // magic.removeAll() // magic —> “”

- When you’re building an app, almost all of code you write is in the form of instance methods or properties on types. And they’re often on types that you create. An app is made of many instances of different types, all working together.

**APIs**

잠시 API(Application Programming Interface)가 무엇인지 짚고 넘어가자 - API는 우리가 직접 짠 코드가 아닌, 프로그래밍하는데 있어 다른 곳에서 주어지는 코드 정도로 이해하자 - An API is a specific set of functionality that can be used by a software developer to accomplish a task - String 타입의 여러 인스턴스 메소드, 프로퍼티 역시 String 타입의 API라고 할 수 있다!

그렇다면 이처럼 Type이 제공하는 API를 확인하는 방법은?

- Autocompletion Popover
    - 해당 메서드, 혹은 프로퍼티의 이름을 대충이라도 알고 있으면 autocompletion 기능을 통해 찾을 수 있다.

- Option-click a type, method or property
    - One of the most important skills you'll develop as a programmer is how to find and understand things in documentation.
    - Learning this skill is much more valuable than remembering a list of instance methods or properties.

- Utilities -> Inspectors -> Quick Help
    - 코드 커서가 있는 곳의 메서드, 프로퍼티 등에 대한 정보를 띄워줌

- 1, 2, 3에서 제공하는 것들의 Full Version, 즉 Full Documentation을 보고싶다면?
  - Open in Developer Documentation 클릭
  - Window -> Developer Documentation 클릭 후 검색

타입과 관련된 여러 API들 확인 가능!

**Classes and Structs**

- Both provide a way to define types in Swift
- Both have instances
- Instances are created with an initializer
- Both can have methods
- Both can have properties
- When you create and use instances, you’ll write the same Swift code whether a type is a struct or class
- 이후 스스로 struct, class를 define하는 법도 배울 것

Why Methods and Properties?

- Methods and properties help to break down the complexity of a large program by putting related pieces of information (properties) and work to be done (methods) together in a single self-contained package (an instance).
- type 속에 정의된 함수(method)가 아닌 function을 top-level function이라 한다.
- top-level function이나 variable을 사용하는 것 대신, method나 property를 사용하는 것 다음과 같은 장점이 있다.

- 프로그램을 여러 type들의 인스턴스로 객체화함에 따라 complexity를 줄이고, 코드를 더 이해하기 쉽게 만들어준다.
- 앞서 함수의 의의가 naming을 통해 해당 기능들의 직관성을 높이는 것처럼, 인스턴스 역시 이러한 역할의 연장선이라 할 수 있다.
- 인스턴스 속의 복잡한 과정들은 가린 채, 메서드와 프로퍼티를 호출하기만 하면 된다.
- 더불어, autocompletion에서도 도움이 된다. 타입과 인스턴스를 설정할 시, autocompletion은 해당 타입에서만 가능한 메서드를 제안하지만, 만약 이러한 설정 없이 top-level function들만 있다면 autocompletion에 모든 function들을 제안할 것이다.
- 또한 API 문서 역시 여러 타입들로 쉽게 구성할 수 있고, 또한 이에 따라 찾아보기도 쉽다.

- 인스턴스들이 서로 ‘같은 value’를 가지더라도, 각각의 value들은 각각의 인스턴스들에 해당하는 별개의 것들이다.

```swift
var myPlans = “eat dinner, run 5km”
var friendPlans = myPlans
// myPlans라는 인스턴스에 있는 값을 복사해서, 별개의 friendPlans라는 인스턴스에 그 값을 저장
// 이 시점에서는 myPlans, friendPlans 두 인스턴스들은 동일한 value인 “eat dinner, run 5km”를 갖는다. 하지만 ‘myPlans 인스턴스’에 속하는 값, 그리고 ‘friendPlans 인스턴스’에 속하는 값 2개의 값은 별개의 것이다.

myPlans += “ , go to cafe”
// 이후 myPlans의 값을 업데이트할 경우, myPlans만 “eat dinner, run 5km, go to cafe”로 업데이트되며, friendPlans의 경우 별개의 인스턴스에 저장되어 있는 것이므로 그대로 “eat dinner, run 5km”이다.
```

## lesson 13 (QuestionBot)

---

App을 만드는 과정은 다수의 인원들(designers, developers)의 협업으로 이루어지며, 앱의 다른 파트들이 동시에 진행될 수 있음.
이번 레슨에서는 QuestionBot이라는 챗 앱에서 질문에 답을 하는 brain기능을 담당한다고 가정하자.

이번 레슨의 포인트: - Playground에서 코드 작성 - Xcode에서 알맞은 부분에 적용하기 - if 조건문과 관련하여 String에 대한 팁 - App을 Build할 때 여러 개의 코드(.swift 파일)들이 각각 서로에게 영향을 미치지 않고 독립적인 일들을 하도록 한 뒤, 이후 합치는 것이 이상적이다. - Making a change —> Building and Running —> Testing the change - Change를 테스팅하기 위해서 앱을 rerun할 필요없이, playground에서 코드를 실험하고, 이를 swift파일에 paste할 수 있다.

I Playground를 통해 QuestionBot의 ‘QuestionAnswerer’ 파트에 해당하는 코드 짜기

- String의 Case를 통일하기

```swift
“where” == “where” // true
“where” == “Where” // false
“where” == “WHERE” // false
```

String의 Case(대문자, 소문자)가 다를 경우, 다른 String으로 인식함.
조건문에서 이러한 차이를 해결하기 위해 String Type의 메서드인 lowercased()를 활용할 수 있음(소문자로 변환시키는 메서드).

```swift
let question = “WHERE ARE THE COOKIES?”
let lowerQuestion = question.lowercased() // “where are the cookies?”
```

- Remainder Operator를 통해 Default Answer를 세분화하기

조건문에 있어서 특정 조건들이 모두 해당하지 않는 나머지 기본 상태를 default라 한다. if 조건문에서는 else가 여기에 해당한다.

특정 조건들에 부합하지 않는 String을 2가지 경우로 나눌 수 있다.

- count 메서드를 통해 String을 숫자로 변환
  - “hello”.count = 5
- count 값을 2로 나누었을 경우 나머지가 0인 경우, 1인 경우로 나눔
  - “hello”.count % 2 = 1
    —2가지 default 경우가 생김
3가지 default 경우를 원할 경우 String의 count를 3으로 나눈 경우
- "~~~”.count % 3

```swift
func responseTo(question: String) -> String {

    let lowerQuestion = question.lowercased()

    if lowerQuestion == "where are the cookies?" {
        return "In the cookie jar!"
    } else if lowerQuestion.hasPrefix("hello") {
        return "Why, hello there!"
    } else if lowerQuestion.hasPrefix("where") {
        return "To the North!"
    } else {

        let defaultNumber = question.count % 3

        if defaultNumber == 0 {
            return "Of Course"
        } else if defaultNumber == 1 {
            return "Yes Indeed"
        } else {
            return "Sure, why not?"
        }
    }

}
```

- As you’ve seen, playgrounds are useful for working on a single function without distraction.

Playground에서 작성한 코드를 Xcode에 옮기기

- 복사할 function의 opening brace를 double-click하면 해당 function을 highlight해줌.
- copy-paste the function

자주 하는 실수 2가지

- Pasting the function into the wrong file
    - “Invalid redeclaration of responseTo(question:)”

- Pasting the function in the wrong place in the file
    - “Invalid redeclaration of responseTo(question:)”

Customizing the interface

Main Storyboard 파일의 Interface Builder를 통해서(오른쪽 inspector 활용): - Background color 바꾸기 - Emoji 바꾸기(ctrl-command-space) - Text 바꾸기(새로운 줄로 이동하고 싶으면 ctrl-enter)

## lesson 14 (Arrays and Loops)

---

In Swift, a list is called an array.

이전에 배운 list는 `let shoppingList = “Eggs” + “\n” + “Tomatoes” + “\n” + … `와 같이 newline character를 이용해 display하는 것이었음

하지만 list와 관련해서 다음과 같은 생각이 들 수 있음:

- How could you call a function on each member of the list without needing to retype them all?
- How could you double-check whether you've already added something to the list?
- If your list has grown to hundreds of items, could you easily remove the one that says “Tomatoes”?
- What if your list isn't made of String values, but something else, like a list of prices that you'd like to add up?
- What's the first thing? The last thing? The 24th thing?
- How many things are there?
- How can you rearrange the list?

**Array Literals & Indices**

- Array Literal: [a, b, c, d, e, f, …]
    - square brackets으로 묶어주고, 안에 item들은 comma로 구분
- Index: 배열의 항목들은 index라 불리는 number를 가짐
    - index는 배열에서 항목이 갖는 위치를 뜻함
    - 0에서 시작 - 배열이름[인덱스 넘버]를 통해 해당 배열 인덱스에 해당하는 항목을 부를 수 있음
    - 이를 subscript라 부름
    - `devices[0] = “iPhone”`
    - Array를 constant로 선언할 시
        - 해당 배열에 해당하는 항목
        - 항목들의 순서(인덱스)가 변하지 않음을 의미
- subscript: array, dictionary 등 collection 타입과 관련하여 특정 member elements에 간단하게 접근할 수 있는 문법 
    - `array[index]`, `dictionary[key]`
    - 서브스크립트는 별도의 getter(접근자), setter(설정자) 등의 메서드를 구현하지 않아도 인덱스를 통해 값을 설정하거나 가져올 수 있다.

**Count**

- 배열이름.count
- array의 항목 수를 알려줌
- `let chores = [“Vacuuming”, “Dusting”, “Laundry”, “Feed the dragons”]`
- `let numberOfChores = chores.count`
- `var count: Int { get }`

**Types**

- Array의 타입은 `[String]`, `[Int]`와 같이 그 자체로는 array 타입, 그리고 그 안의 각 요소들의 type으로 나뉜다.
- `[SomeType]`: “This array is a collection of SomeType instances.”
- `let grades = [“A”, “B”, “C”, “D”, “E”]`
    - `grades[0]: String = “A”`
    - 이처럼 array안의 element를 추출하면 type inference를 한다.

**Processing Arrays**

```swift
let friends = [“Name”, “Name2”, “Name3”, “Name4”, “Name5”]

func invite(friend: String) [
print(“Hey, \(friend), please come to my party on Frinday!”)
}

invite(friend: friends[0])
invite(friend: friends[1])
invite(friend: friends[2])
```

이러한 경우 문제는 1. 반복작업을 해야 한다는 점, 2. 반복작업 중 실수가 나올 수 있다는 점 등 비효율적이다. 이를 어떻게 해결할까?

**Loops**

- 배열을 다룸에 있어 반복작업을 자동적으로 하는 것을 looping through the array라 한다.
- When the code is finished with all the items in the collection, the loop stops automatically and the code continues executing through the rest of the program.
- for…in loop
- for 매개변수 in 범위 {각 item들에 적용할 함수}

```swift
let friends = [“Name”, “Name2”, “Name3”, “Name4”, “Name5”]

for friend in friends {
let sparklyFriend = “✨\(friend)✨”
print(“Hey, \(sparklyFriend), please come to my party on Friday!”
}
print(“Done, all friends have been invited.”)

//

Hey, ✨Name✨, please come to my party on Friday!
Hey, ✨Name2✨, please come to my party on Friday!
Hey, ✨Name3✨, please come to my party on Friday!
Hey, ✨Name4✨, please come to my party on Friday!
Hey, ✨Name5✨, please come to my party on Friday!
Done, all friends have been invited.
```

friend라는 상수는 for…in 구문에서 String Constant로 선언되기는 했으나, 해당 함수 내에서만 선언된 것이며, 함수 외의 부분에서는 선언된 것이 아니다!

**Mutable Arrays**

- let 키워드를 통해 constant로 선언한 배열은 해당 item과 item들의 순서가 고정됨을 의미한다. (immutable arrays)
- var 키워드를 통해 variable로 선언한 배열은 속하는 item들의 value를 자유롭게 바꿀 수 있다. (mutable arrays)
- 단, variable이 type이 아닌 value만을 바꿀 수 있듯이, var로 선언한 배열 역시 항목들의 type을 바꿀 수는 없다!

**Adding Items**

- Mutable Arrays에 적용
- `.append(추가하고자 하는 value)`
    - array 맨 끝 인덱스에 value 추가
- `.insert(추가하고자 하는 value, at: 인덱스)`
    - array의 해당 인덱스에 value 추가 // 삽입하고자 하는 index는 배열 범위 내
- `someArray += [추가하고자 하는 배열`]`
    - array의 끝부분에 해당 value 추가

```swift
var list = [String]() // string value를 가지는 배열 인스턴스 생성

list.append(“Banana”)
list += [“Kiwi”, “Strawberry”, “Plum”]
list.insert(“Blueberry”, at: 3)
```

“Banana”
“Kiwi”
“Strawberry”
“Blueberry”
“Plum”

**Removing Items**

- Mutable Arrays에 적용
- `.remove(at: 인덱스)`
    - 해당 인덱스 value를 추출하여 반환함 + 기존의 배열은 해당 인덱스 value를 뺀 상태로 업데이트
- `.removeFirst()`
    - 배열 첫 번째 value를 추출하여 반환함 + 기존의 배열은 첫 value를 뺀 상태로 업데이트
- `.removeLast()`
    - 배열 마지막 value를 추출하여 반환함 + 기존의 배열은 마지막 value를 뺀 상태로 업데이트
- `.removeAll()`
    - 배열의 value를 모두 제거

```swift
var numbers = [0, 1, 2, 3, 4]
let someNumber = numbers.remove(at: 2) // 2
numbers = [0, 1, 3, 4]
let firstNumber = numbers.removeFirst() // 0
numbers = [1, 3, 4]
let lastNumber = numbers.removeLast() // 4
numbers = [1, 3]
numbers.removeAll() // []
```

**Replacing Items**

- Mutable Arrays에 적용
- subscript를 활용하여 해당 인덱스의 값을 새로 선언
- 배열의 index 범위를 초과하는 index는 사용할 수 없음
- 그러므로 subscript를 통해 배열 내 특정 index의 값 replacing만 가능하며, adding or removing은 불가

```swift
var flavors = [“Chocolate”, “Vanilla”, “Strawberry”, “Pistachio”, “Rocky Road”]
let firstFlavor = flavors[0] // “Chocolate”
flavors[0] = “Fudge Ripple”
let newFirstFlavor = flavors[0] // “Fudge Ripple”
firstFlavor // “Chocolate”
newFirstFlavor // “Fudge Ripple”
```

위의 인덱스 범위는 0~4이므로
- 새로운 맛을 추가하고자 `flavors[5] = “Monster”`와 같은 선언은 불가함
- 추가하고자 하면 `flavors.append(“Monster”)`, `flavors.insert(“Monster”, at: 5)`, `flavors += [“Monster”]` 중에 하나 사용

Wrapup

You can use arrays to hold lists of items. Arrays have two key features:

- The items in the array are all of the same type.
- The items in the array are in a specific order.

Because of these two features, you can access items from specific points in the array using the index, and you’ll always get back a value of a known type.

Here are some other things you’ve learned about arrays:

- The first index of an array is zero, not one.
- Accessing arrays using the index can be dangerous. If the index used is outside the bounds of the array, your program will crash.
- You can find out the number of items in an array using the count property.
- You can use for…in loops to safely access each item in the array in order, without needing to know how many items the array contains.
- Mutable arrays allow you to add, remove, and replace items.

- array의 항목 수가 많을 시, Swift가 모든 항목을 체크하여 type inference하는 데에 시간이 많이 걸릴 수 있음
- type annotation을 통해 playground가 느려지는 것을 방지할 수 있음.
    - 가령, let shoudMascotChangeVotes = [false, true, true, false, ………………………..]는 type inference가 오래 걸릴 수 있으므로,
    - `let shouldMascotChangeVotes: [Bool] = [false, true, true, false, ………………………..]`와 같이 미리 `[Bool]`이라 타입 선언해줄 수 있음.

- for…in 구문을 반복해서 사용해야 하는 상황이라면, function 속에 포함시켜 쉽게 재사용할 수 있게 만들자!

```swift
let kilometersRun = [4.5, 4, 6, 10, 5, 5, 6, 7, 3, 4, 5, 5.1, 3.5, 5]

func dailyProgress(dailyNumber: Double) -> String {

    let dailyGoal: Double = 5

    if dailyNumber == dailyGoal {
        return "Congratulations! You're right on the goal!"
    } else if dailyNumber < dailyGoal - 1 {
        return "You've under-reached your goal. Hope better next time!"
    } else if dailyNumber < dailyGoal {
        return "You were close to your goal. Keep up the pace!"
    } else if dailyNumber > dailyGoal + 1 {
        return "Astounding! Would you like to re-set your goal?"
    } else {
        return "You've over-reached your goal. Great job!"
    }

}

for runDistance in kilometersRun {
let runMessage = dailyProgress(dailyNumber: runDistance)
print(runMessage)
}
```

## lesson 15 (Defining Structures)

---

Modeling Data

    - App을 만드는데 있어서 중요한 것은 how your app is going to represent the information that it needs를 고려하는 것이다.
    - 즉, 앱이 포함하는 정보에는 String, Int, Array와 같은 단순한 타입으로 표현될 수 있는 정보도 있지만 // 음악 앱의 경우 tracks, artists, albums, playlists // 쇼핑 앱의 경우 products, shopping carts, customers, orders와 같은 정보들을 통해 // 실제 세계와 같은 software model을 구현해야 한다.
    - 이처럼 앱이 다루는 data들의 type들을 통상적으로 model, 혹은 data model이라 칭한다.
    - In general, the types of data that an app deals with are known collectively as its model, or sometimes more verbosely, its data model.
    - 이와 같이 ‘정보를 모델링’하는 것이 중요하고, 또한 이를 가능하게 하는 것이 새로운 데이터 타입을 만드는 것이다!

```swift
let songTitles = [“Ooh yeah”, “Maybe”, “No, no, no”, “Makin’ up your mind”]
let artists = [“Brenda and the Del-chords”, “Brenda and the Del-chords”, “Fizz”, “Boom!”]
let durations = [90, 200, 150, 440]
let song3 = “\(songTitles[2]) by \(artists[2]), duration \(durations[2])s” // “No, no, no by Fizz, duration 150s”
```

- 작업하기 매우 번거로움
- Song이라는 type이 있다면 어떨까?

Custom Types

    - struct 키워드를 통해 새로운 타입을 만들 수 있음
    - 기존의 타입들을 활용하여 struct 키워드를 통해 structure, 구조체를 만들 수 있음
    - struct을 통해 형성한 것은 새로운 ‘타입’이므로 UpperCamelCase를 사용
    - 그 안의 properties는 lowerCamelCase를 사용
    - every type has at least one initializer
    - initializer 중 각 멤버 프로퍼티를 매개변수로 갖는 initializer를 memberwise initializer라 한다

```swift
struct Song {
let title: String
let artist: String
let duration: Int
}
```

- title, artist, duration이라는 3개의 constant property를 가지는 structure

```swift
Song(title: “Leave the Door Open”, artist: “Silk Sonic”, duration: 243)
// 3개의 멤버 프로퍼티를 매개변수로 가지는 Initializer이므로 memberwise initializer
// title “Leave the Door Open”
// artist “Silk Sonic”
// duration 243
//
```

Struct Properties

    - struct을 통해 만든 타입의 인스턴스 프로퍼티에 접근하는 방법 역시 점(.)을 통해 접근
    - song.title // “Leave the Door Open”
    - song.artist // “Silk Sonic”
    - song.duration // 243
    - 타입인 Song은 각각의 인스턴스가 어떤 것을 포함할지, 즉 instance member만 정의(title, artist, duration)
    - 실제 인스턴스인 song에 instance member의 프로퍼티 value가 있는 것(“Leave the Door Open”, “Silk Sonic”, 243)

Mutable Properties

custom structs를 mutable하게 만들기 위해서는 다음 2가지가 필요하다: - struct 정의 시, 변할 수 있는 프로퍼티를 var 키워드를 통해 선언 - struct 인스턴스 생성 시, constant가 아닌 variable로 선언

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

Calculated Properties - 단순히 상수, 변수 값을 저장하는 것 외에 연산된 값을 저장하는 calculated property도 생성할 수 있음 - Array에서 count 프로퍼티 역시 calculated property

    - var로 선언 // A calculated property is declared a var, since it could change depending on the rest of the struct
    - var선언, name, type annotation, 연산code, 해당 type return 값으로 구성
    - 인스턴스에서 프로퍼티로 접근할 때는 점(.)+name이 필요하지만, struct 정의 내에서 프로퍼티에 접근할 때는 점 없이 name으로만 접근함

```swift
var name: type {
code
code
…
return 해당 type의 value
}
```

Example

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

Functions - 다른 타입들과 마찬가지로 custom type에 역시 function이 활용될 수 있음

```swift
struct Rectangle {
let width: Int
let height: Int
}

func isRectangle(\_ rectangle: Rectangle, biggerThan rectangle2: Rectangle) -> Bool {
let areaOne = rectangle.width _ rectangle.height
let areaTwo = rectangle2.width _ rectangle2.height
return areaOne > areaTwo
}

let rectangle = Rectangle(width: 10, height: 10)
let anotherRectangle = Rectangle(width: 10, height: 30)

isRectangle(rectangle, biggerThan: anotherRectangle) // false
```

하지만 다음과 같은 문제가 있다: - 함수를 호출할 때 argument가 2개로, 무엇이 기준인지 모호하며 직관성이 떨어짐 - 해당 function은 rectangles와 관련하여 사용할 것인데, 프로그램 전체에서 사용 가능하도록 설정됨 - autocompletion에서 찾기 힘들 수 있음

Instance Methods - type definition의 body에서 function을 생성하여 instance method를 만들 수 있음 - 프로퍼티와 마찬가지로 type 정의 내부에서는 다른 프로퍼티에 점 없이 접근 - 인스턴스 생성 후에는 마찬가지로 점을 통해 접근

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

- isBiggerThan function이 Rectangle 타입의 인스턴스 메서드가 되었고
- 넣어야 하는 argument 수도 2개에서 1개로 줄어 직관성이 높아짐

Wrapup - Every app has a model that represents the data it uses. - You can define your own types in Swift to organize data in a way that makes sense for your app. - One way to create custom types is by defining structs. - A struct is a type that can group together properties and methods. - Some properties hold data, like variables or constants. Others return a calculated value. - You create and use instances of your custom types the same way as any other type in Swift. - You use your custom types like any other types, including as function parameters and return types.

My Type

```swift
struct IceBox {
let color: String
let width: Double
let length: Double
let height: Double

    var isClosed: Bool

    var size: Double {
        return width * length * height
    }

    func warnOpenCover() -> String {
        if isClosed == false {
            return "PROTECT YOUR ICE!"
        } else {
            return "YOUR ICE IS SAFE❄️"
        }
    }

    func fullCapacity(iceSize: Double) -> String {
        let availableIceNumber = size / iceSize

        if availableIceNumber >= 1 {
            return "YOU CAN STORE \(availableIceNumber) ICES!"
        } else {
            return "SORRY YOUR ICE IS TOO BIG!"
        }
    }

}
```

Placeholder Type

- placeholder types: types that have empty implementations // 우선 전체적인 코드가 돌아갈 수 있도록 타입은 생성했지만 아직 타입의 내용은 설정하지 않은 상태 // 전체적인 코드 흐름부터 우선적으로 짜고 싶은 경우 사용

```swift
struct Shoelaces {

}

struct TrainingShoe {
let size: Int
var isTied: Bool
var laces: Shoelaces

    func squeak() {
        // Make a loud noise like rubber squealing on a gym floor
    }

    func warnAboutLaces() {
        // If laces are untied, print a reminder to tie them
    }

}

// Create an instance of the placeholder type
let newLaces = Shoelaces()

// Use the instance of the placeholder type to create an instance of your new type
let newShoe = TrainingShoe(size: 39, isTied: true, laces: newLaces)
```

---

### lesson 16 (QuestionBot 2)

다음 항목들을 보여주는 ChatBot에 관해 알아보자: - A list of messages forming a conversation - Messages entered by the user that look different from those given by the app - A “thinking” indicator - An entry area where the user can type a question

Table View? Cell? - a scrolling list of items를 a table view라 부른다. - 해당 list에서 각 item들을 a cell이라 부른다.

- MVC

  - Model + View + Controller
  - app을 구현함에 있어 app에 맞게 사용할 수 있는 data의 type을 설정하는 Model 파트, app을 user에 보여주는 design 측면을 설정하는 View 파트, 그리고 data model과 view 사이에서 업데이트 및 관리를 담당하는 Controller 파트로 보통 구현한다.

- Protocol & Extension

  - Protocol은 특정 역할을 수행하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진으로, 프로토콜을 채택한 타입은 프로토콜이 요구하는 기능을 구현하여 프로토콜을 준수(conform)하여야 한다.
  - Extension은 기존 타입의 기능을 ‘확장’한다. // 프로토콜 지향 프로그래밍: 구조체에서 주로 사용한다. 클래스의 경우 상속을 통해 해당 클래스의 타입은 기능을 상속받는다. 이는 한계점이 있다. 반대로 프로토콜로 기본적인 타입의 속성을 설정해놓고, 익스텐션을 통해 해당 프로토콜에서 사용 가능한 기능을 정의해놓으면, 보다 쉽게 접근할 수 있다.

- 열거형(Enum)
  - 구조체, 클래스와 같이 하나의 타입
  - Switch문과 주로 많이 호응
  - UpperCamelCase로 정의, 각 case는 lowerCamelCase로 정의
  - 각 case 그 자체가 고유의 값임 // 각 케이스는 한 줄에 개별로도, 한 줄에 여러 개도 정의할 수 있음
  - EnumName.caseName을 통해 case 호출, 타입이 명확한 경우 .caseName으로도 호출 가능

```swift
enum Weekday {
case mon
case tue
case wed
case thu, fri, sat, sun
}

var day = Weekday.mon // mon
day = .tue // tue
```

Exploring The Project

UI (V) - Main.storyboard: 앱의 메인 화면이 어떻게 보일지? // The interface of the app, including the layout of the screens - LaunchScreen.storyboard: 앱의 시작 화면이 어떻게 보일지? // The screen displayed when the app is first launched - an empty white screen - ThinkingCell.swift: ThinkingCell은 어떻게 보일지? // A specialized cell for showing the app is thinking - ConversationCell.swift: ConversationCell은 어떻게 보일지? // A specialized cell for showing a message in the conversation - AskCell.swift: AskCell은 어떻게 보일지? // A specialized cell for allowing the user to type in a question - Assets.xcassets: 앱에서 사용되는 이미지 저장 // The asset catalog holding all of the images used in the app

Controllers (C) - ConversationViewController.swift: Data Models를 바탕으로 View에 listing 및 업데이트를 담당 // This class is responsible for the list view and handling updates when the user asks questions

Model (M) - Message.swift: 앱에 사용될 여러 메세지와 관련된 타입 모델을 설정 - QuestionAnswerer.swift: 질문에 답해주는 기능과 관련된 타입 모델을 설정 - ConversationDataSource.swift: 메세지와 기능을 통해 만들어진 대화 정보에 관한 타입 모델

Support Files - AppDelegate.swift: Part of the standard app template, normally used to handle events such as the app being launched - Info.plist: Part of the standard app template, holding information about the app itself

```swift
// Message.swift

import Foundation

// 메세지에는 어떤 종류가 있는지?

enum MessageType {
case question
case answer
}

// 메세지는 어떻게 구성되어 있는지?

struct Message {
let date: Date
let text: String
let type: MessageType
}

// 대화 시작할 때 띄우는 메세지 설정

let openingLine = Message(date: Date(), text: “Hello, I’m ChatBot.\nPlesae ask me a question”, type: .answer)

// QuestionAnswerer.swift
// conversation view controller가 이를 사용해서 대답을 도출해냄
// The conversation view controller owns the question answerer and uses it to get answers from questions the user enters

struct QuestionAnswerer {

    func responseTo(question: String) -> String {
    	let lowerQuestion = question.lowercased()

    	if lowerQuestion.hasPrefix(“hello”) {
    		return “Why, hello there!”
    	} else if lowerQuestion == “where are the cookies?” {
    		return “In the cookie jar!”
    	} else if lowerQuestion.hasPrefix(“where”) {
    		return “To the North!”
    	} else {
    		let defaultNumber = question.count % 3

    		if defaultNumber == 0 {
    			return “That really depends”
    		} else if defaultNumber == 1 {
    			return “I think so, yes”
    		} else {
    			return “Ask me again tomorrow”
    		}
    	}
    }

}

// ConversationDataSource.swift
// 현재 대화의 정보를 hold하고 update하는 역할 // 이를 conversation view controller가 가져다 씀
// The conversation view controller owns the data source
// The view controller gives orders based on the user’s actions in the app // showing things onscreen, dealing with what the user types
// The data source doesn’t deal with anything other than the information about the conversation

ConversationDataSource().messageCount // ConversationViewController —> messageCount에 맞게 cell 생성

// question 입력 —> data source에 저장 —> view controller —> 오른쪽 cell에 question 보여줌
// 그에 맞는 answer —> data source에 저장 —> view controller —> 왼쪽 cell에 answer 보여줌
// message의 index —> data source에 저장 —> view controller —> cell 중 해당 cell에 위치하도록 함
```

```swift
import Foundation
class ConversationDataSource {

    /// The number of Messages in the conversation
    var messages = [openingLine]
    var messageCount: Int {
        return messages.count
    }

    /// Add a new question to the conversation
    func add(question: String) {
        print("Asked to add question: \(question)")
        let message = Message(date: Date(), text: question, type: .question)
        messages.append(message)
    }

    /// Add a new answer to the conversation
    func add(answer: String) {
        print("Asked to add answer: \(answer)")
        let message = Message(date: Date(), text: answer, type: .answer)
        messages.append(message)
    }

    /// The Message at a specific point in the conversation
    func messageAt(index: Int) -> Message {
        print("Asking for message at index \(index)")
        return messages[index]
    }

}
```

- array는 ordered storage of values of same type을 제공하기에 적합하다.
- data source와 같이 ‘a type that exists just to provide information to another part of your app’은 자주 사용되는 아이디어다.
- actions, outlets은 your own custom interactions in an app을 구현하기 위해 사용한다.

---

### 클래스(class)와 상속(Inheritance)

    - class는 자식클래스(Subclass)와 부모클래스(Superclass)로 나뉨
    - 상속(Inheritance): 기반클래스를 다른 클래스에서 물려받는 것을 의미 // Subclass는 Superclass의 메서드, 프로퍼티, 서브스크립트를 사용 및 재정의할 수 있음 // 프로퍼티 감시자를 구현할 수 있음

```swift
class 자식클래스 이름: 부모클래스 이름 {
// 클래스 내용 구현
}
```

    - 재정의(Override): 부모클래스의 메서드, 프로퍼티, 서브스크립트 등을 그대로 사용하지 않고 변경하여 사용하는 것을 의미(키워드로 override 사용)
    - super 키워드: 자식클래스에서 부모클래스의 속성을 사용하고 싶을 때 사용
        - 메서드 부모버전 호출
            - super.메서드이름()
        - 프로퍼티 부모버전 호출
            - super.프로퍼티이름
        - 서브스크립트 부모버전 호출
            - super[index]

#### 메서드 재정의(Method Override)

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

#### 프로퍼티 재정의(Property Override)

- 저장 프로퍼티로 재정의는 불가
- 프로퍼티를 재정의한다는 것은 접근자(Getter), 설정자(Setter), 프로퍼티 감시자(Property Observer)를 재정의하는 것
- 부모클래스 읽기 전용 프로퍼티 —> 자식클래스에서 읽고 쓰기 가능하게 변경 가능
- 부모클래스 읽기, 쓰기 가능한 프로퍼티 —> 자식클래스에서 읽기 전용으로 재정의 불가
- 설정자(Setter)만 따로 재정의할 수 없고, 접근자(Getter), 설정자(Setter)모두 재정의해야 함

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

#### 서브스크립트 재정의(Subscript Override)

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

---

### View Controller Lifecycle

View Controller는 생명주기를 갖는다. 일종의 ‘보여졌다’ ‘사라지는’ 주기를 뜻한다. View는 ‘init —> loadView —> viewDidLoad —> viewWillAppear —> viewDidAppear —> viewWillDisappear —> viewDidDisappear —> viewDidUnload’와 같은 주기를 갖는다 (UIViewController Lifecycle).

    - loadView()는 컨트롤러가 관리하는 뷰를 ‘만드는’ 역할을 한다. 뷰를 만들고 메모리에 올린다.
    - viewDidLoad()가 이후 호출됨. Called after the controller’s view is loaded into memory. ——> 뷰의 추가 초기화를 수행하려면 여기서 수행!!! (If you want to perform any additional initialization of your views, do so in the viewDidLoad() method).

```swift
class ViewController: UIViewController {
override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view, typically from a nib.
}
```

- UIViewController라는 상위 클래스에서 상속받은 것에 앞서 수행될 함수(override func)를 viewDidLoad() 이후, 즉 뷰가 메모리에 로드된 후 설정하라는 뜻.

  - viewDidLoad() 메서드는 뷰의 로딩이 완료되었을 때 시스템에 의해 자동으로 호출 // 일반적으로 리소스를 초기화하거나 초기 화면을 구성하는 용도로 주로 사용됨 // 화면이 처음 만들어질 때 한 번만 실행되므로 처음 한 번만 실행해야 하는 초기화 코드가 있을 경우 이 메서드 내부에 작성

  - viewWillAppear()는 뷰가 이제 나타날 것이라는 신호를 컨트롤러에게 알리는 역할 // 뷰가 나타나기 직전에 호출 // 다른 뷰로 갔다가 다시 돌아오는 상황에서는 viewDidLoad()는 적용x, viewWillAppear()만 적용 // 그러므로 앱의 초기화 작업은 viewDidLoad()에서 해도 되겠지만, 다른 뷰에서 갔다가 다시 돌아오는 상황에서 해주고 싶은 처리는 viewWillAppear()에서 함

  - viewDidAppear()는 뷰가 나타났다는 것을 컨트롤러에게 알리는 역할 // 화면에 적용될 애니메이션을 그려줌 // 뷰가 화면에 나타난 직후에 실행

  - viewWillDisappear()는 뷰가 사라지기 직전에 호출되는 함수 // 뷰가 삭제되려 하고 있는 것을 컨트롤러에 통지

  - viewDidDisappear()는 뷰가 제거되었음을 컨트롤러에게 알림

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

🧐: View A는 네비게이션 컨트롤러에서 rootView이므로 viewDidLoad()를 처음 실행 시 한 번만 수행(나머지 뷰는 스택에서 사라질 시 pop, 메모리에서 사라지므로, 다시 viewDiDLoad()가 필요!)

    - 네비게이션 컨트롤러의 동작은 자료구조에서의 ‘스택(stack)’과 같다.
    - 스택은 새로운 뷰가 해당 스택 메모리 위에 push되어 해당 스택의 top이 된다. push 연산과 반대로 pop 연산은 현재 화면을 사라지게 하고, 스택 메모리 밑에 있는 화면이 스택의 top이 되면서 top 화면을 보여준다.
    - pop을 하면 스택에서 빠져나간 뷰는 메모리에서 사라진다. (🧐와 연관)

---

### lesson 17 (Actions and Outlets)

    - Action과 Outlet은 code——storyboard를 연결하기 위한 수단
    - 이를 통해 app이 run하는 동안 storyboard의 요소들이 code를 통해 user actions에 반응할 수 있도록 함
    - Outlet // storyboard에 있는 사물(objects)들을 code의 variable로 연결해줌 // code—>storyboard로 갈 수 있는 ‘배출구’(outlet) // 이를 통해 app이 돌아갈 때 스토리보드의 사물로부터 정보를 얻거나, 반대로 변화를 줄 수 있음
    - Action // storyboard에 가해지는 특정 동작(controls)들을 (ex. switches, buttons) 코드화할 수 있음 // storyboard의 동작—>Action을 통해—>코드의 method로 연결 // 이를 통해 app이 돌아갈 때 해당 동작이 특정 메서드를 작동시킴
    - Action과 Outlet Connections를 만드는 3가지 방법: 1)object를 code로 control-drag 2)code의 ◉를 object로 drag 3)Connections Inspector 사용

#### Creating Outlets (a variable in code — an object in the storyboard)

- Outlet: An outlet connects a variable in source code to an object in the storyboard. This connection allows the code to access those objects and get information or make changes when the app is running.

  - ColorMix 파일 생성
  - Main.storyboard 접근
  - Library를 통해 ‘View’ 추가(View > Show Library)
  - 추가된 ‘View’를 잘 보이기 위해서 Editor > Canvas > Bounds Rectangles 선택(to display an outline of everything on the scene)
  - Assistant Editor 열기 —> ViewController.swift 파일을 볼 수 있음
  - ‘View’를 Assisant Editor에 있는 ViewController.swift 파일에 control-drag하여 outlet 연결

- ◉ @IBOutlet wear var colorView: UIView!

  - ◉: 이러한 filled circle은 해당 outlet이 connected되었음을 나타냄 // 연결되지 않을 시, empty circle이 됨
  - @IBOutlet weak: This signals to Xcode that the property on this line is an outlet
  - var colorView: declaration of a property
  - UIView!: 해당 프로퍼티의 타입이 UIView! // UIView is the basic view type used in all iOS apps. Almost everything you see on the screen is a kind of UIView // 느낌표는 if the outlet is not connected and you try to access this property, your app will crash라는 뜻

  - 중요한 것은 ViewController.swift 파일에 생성된 colorView라는 프로퍼티는 스토리보드에 추가된 ‘View’에 연결된 것이라는 점!

- viewDidLoad()
  - this function is called when your view controller is ready to appear on the screen // 처음 storyboard의 화면이 앱에서 나타날 때의 설정을 하는 곳

```swift
class ViewController: UIViewController {

    @IB Outlet weak var colorView: UIView!

    override func viewDidLoad() {
    	super.viewDidLoad()
    	// Do any additional setup after loading a view.
    	colorView.backgroundColor = .black // 처음 해당 ViewController가 앱에서 보이게 될 때 colorView를 검은색으로 표시하게 함
    }

}
```

#### Creating Actions (a method in code — a control in the storyboard)

- Action: An action connects a method in source code and a control in Interface Builder. This connection allows particular code to run when a user interacts with the app’s controls. For example, a certain method may be associated with an action, such as a button tap or a switch change.
  - buttons, sliders, switches와 같은 여러 스토리보드의 controls를 코드의 특정 메서드와 연결
  - 유저가 control 작동 시, 앱에서 해당 메서드를 실행하도록 함
  - Switch(UI): A switch control in your app’s user interface acts like an on / off button, for example, for Airplane Mode and Bluetooth in the Settings app
  - Slider(UI): A slider control in your app’s user interface allows a user to select a single value between a minimum and maximum number

#### Event

- Switch 관련 Event: Value Changed
- Slider 관련 Event: Value Changed
- Button 관련 Event: Touch Up Inside

  - Main.Storyboard 접근
  - Library를 통해 switch 추가
  - Attributes Inspector에서 Value를 Off로 설정
    - 스위치의 초기 값을 꺼진 상태로 설정하는 것
  - Assistant Editor에 control-drag
  - Action 선택
    - 타입은 ‘UISwitch’
      - action 이름은 switchChanged로 설정

```swift
◉ @IBAction func switchChanged(\_ sender: UISwitch) {
}
```

    - ◉: connected
    - @IBAction: This signals to Xcode that the method on this line is an action connected to a control in Interface Builder
    - sender: The sender argument is the instance that sent the action (function의 sender를 통해 control에 action method를 ‘send’함)

```swift
@IBAction func switchChanged(\_ sender: UISwitch) {
colorView.backgroudColor = .red
}
```

- 스위치의 on/off가 바뀔 때마다, 즉 ‘Value Changed’ event가 발생할 때마다 해당 action method가 호출됨. on/off할 때마다 항상 빨강으로 바꿔줌

```swift
@IBAction func switchChanged(\_ sender: UISwitch) {
if sender.isOn {
colorView.backgroundColor = .red
} else {
colorView.backgroudColor = .black
}
}
```

- 스위치(sender)가 on이면 빨강, 스위치가 off이면 검정으로 colorView를 바꿔줌

#### isOn

- A Boolean value that determines the off/on state of the switch.
- Declaration // var isOn: Bool { get set }
- This property allows you to retrieve and set (without animation) a value determining whether the UISwitch object is on or off.
- value 얼마? (get) —> on true / false (set)

#### Multiple Actions and Outlets

여러 개의 스위치를 만들어보자. - Main.Storyboard 접근 - cmd + D를 통해 스위치 duplicate - 3개의 스위치를 code에 control-drag하여 outlet 생성(redSwitch, greenSwitch, blueSwitch) - 가령 redSwitch는 ViewController.swift에서 ‘redSwitch’라는 outlet / ‘switchChanged’라는 action method에 연결된 것처럼 // 하나의 object는 outlet과 action에 둘 다 연결될 수 있음 - 즉, Sent Events / Referencing Outlets를 확인해보면 됨 (스위치의 경우 Value Changed Event is sent when a switch is switched) - object를 duplicate할 경우, duplicate된 object 역시 기존의 object가 연결되어 있던 action에 연결됨 - 하나의 object - 하나의 outlet // 여러 개의 objects - 하나의 action 연결 가능!

Action에 연결되어 있는 object들을 확인하고 싶다면?

- code에 있는 ◉에 커서를 대면 연결된 object들이 하이라이트됨

Action을 object에 연결하고 싶다면?

- code에 있는 ◉를 클릭 후 드래그하여 연결하고자 하는 object에 연결

viewDidLoad()나 action method에 일일이 color를 설정하는 code를 쓰지 말고, 하나의 function을 만들어놓자
코드의 반복도 피하고, 코드의 수정도 용이

```swift
func updateColor() {
var red: CGFloat = 0 —> ※CGFloat: core graphic float // 그래픽을 float 형태의 value로 나타내는 것
var green: CGFloat = 0
var blue: CGFloat = 0

    if redSwitch.isOn {
    	red = 1
    }
    if greenSwitch.isOn {
    	green = 1
    }
    if blueSwitch.isOn {
    	blue = 1
    }

    let color = UIColor(red: red, green: green, blue: blue, alpha: 1) —> red 값에 ‘red’라는 CGFloat 값을(green, blue도 마찬가지로 각각의 CGFloat 값을) 갖는 UIColor 인스턴스
    colorView.backgroundColor = color

}
```

- CGFloat: Like a Double, CGFloat is a type of number that can have a decimal point, like 3.5, 7.0, or -5.5. However, they aren’t implemented in exactly the same way, and some types(like UIColor) will only interact with CGFloat numbers.

해당 function을 각각 viewDidLoad()와 switchChanged 메서드에 적용

```swift
override func viewDidLoad() {
super.viewDidLoad()
updateColor()
}
```

- 앱의 초기 화면 구성에서 해당 color에 맞춘 색깔을 보여줌

```swift
@IBAction func switchChanged(\_ sender: UISwitch) {
updateColor()
}
```

- 스위치가 바뀔 때마다 해당 color에 맞춘 색깔을 보여줌

#### Sliders

Why Sliders?

- object value에 대한 세밀한 control이 가능(brightness, volume, color sliders…)
  - 드래그 혹은 Shift + click을 통해 스위치 3개 모두 선택
  - 스위치들 왼쪽으로 이동
  - 스위치의 간격이 좁으면 원하는 스위치를 터치하기 어려우므로 Shift + arrow up, down키를 통해 일정하게 이동하여 간격 벌려줌
  - 각각의 스위치 옆에 Library로부터 슬라이더 배치
  - 슬라이더 3개 선택
  - Attributes Inspector 클릭
  - slider는 가능한 value의 범위(minimum, maximum value), 그리고 시작 value가 있음
  - Value를 1로 설정 // 초기 구성에서 slider가 최대로 올려진 상태로 시작
  - 각각의 slider를 ViewController.swift에 control + drag하여 outlet 생성(redSlider, greenSlider, blueSlider)
  - redSlider를 control + drag하여 sliderChanged라는 action 생성

```swift
◉ @IBAction func sliderChanged(\_ sender: UISlider) {
updateColor()
}
```

- 마찬가지로 slider의 value를 변경하면 (Value Changed Event), updateColor()에 맞춰 색깔을 업데이트
  - 해당 action 옆의 ◉를 클릭하여 각각 greenSlider와 blueSlider에 연결
    - 하지만 현재 updateColor()는 switch의 value값에 관해서만 정의됨
    - slider 값 역시 반영하도록 updateColor() 수정 필요

```swift
func updateColor() {
var red: CGFloat = 0
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

    let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
    colorView.backgroundColor = color

}
```

- ‘red’는 CGFloat type이고, redSlider.value는 Float type이므로 red = redSlider.value는 불가
  - redSlider.value를 값으로 갖는 CGFloat 인스턴스 생성 필요
- redSlider.value returns a value of type Float, which is a kind of decimal number
  - But to make a UIColor, you need something called a CGFloat // The code above creates a new CGFloat from the Float value of the slider and assigns it to red

#### Reset Button

Why Buttons?

- One of the most common controls used in iOS apps is a button. A button can contain text, an image, or a mix of both. When the user taps the button, something happens.
  - Main.Storyboard 접근
  - Library를 통해 Button 추가
  - Title을 ‘RESET’으로 설정 (Attributes Inspector 혹은 더블 클릭)
  - ViewController.swift에 control + drag하여 ‘reset’이라는 이름의 action 생성
  - Connections Inspector를 확인해보면 Touch Up Inside Event에 연결되어 있음을 확인 가능
  - Touch Up Inside Event is the standard event used for most buttons

```swift
◉ @IBAction func reset(\_ sender: Any) {
redSlider.value = 1
greenSlider.value = 1
blueSlider.value = 1

    redSwitch.isOn = false
    greenSwitch.isOn = false
    blueSwitch.isOn = false

    updateColor()

}
```

- 각각의 슬라이더들을 초기값으로 설정했던 1로 다시 바꾸고, 각각의 스위치들을 off 상태로 바꿈
- 그리고 스위치가 모두 꺼지고, 슬라이더들의 값이 1인 상태에서 색깔을 업데이트 해줌

#### Polishing the Interface

문제점 및 수정

A. 모든 스위치와 슬라이더가 똑같이 보인다 // 각각의 control들이 무엇을 하는지 직관성이 떨어짐

TINTING THE SWITCHES / SLIDERS

    - Switch의 경우 onTintColor와 thumbTintColor 2개의 tinting options가 있음
    - onTintColor // 켜졌을 때 막대 부분
    - thumbTintColor // 스위치의 circle 부분
    - switch 선택 —> Attirbutes Inspector —> On Tint 선택 및 color picker를 통해 색 설정

    - Slider의 경우 minTrackTintColor, maxTrackTintColor, thumbTintColor 3개의 tinting options가 있음
    - minTrackTintColor // 슬라이더 값을 올릴 때 왼쪽 부분
    - maxTrackTintColor // 슬라이더 값을 내릴 때 오른쪽 부분
    - thumbTintColor // 슬라이더의 circle 부분
    - slider 선택 —> Attributes Inspector —> Min Track 선택 및 color picker를 통해 색 설정

B. 모든 스위치가 켜지고, 슬라이더가 최대일 때, colorView는 하얀색이 되어 background와 구분하기 어려워짐

ADDING A BORDER

    - viewDidLoad()에서 colorView 추가 설정

UIView의 layer property를 활용!

- colorView.layer.borderWidth = 5
  - UIView의 인스턴스인 colorView의 layer 프로퍼티인 borderWidth를 5로 설정
    - 두께가 5인 border를 갖게 됨
- colorView.layer.cornerRadius = 20
  - UIView의 인스턴스인 colorView의 layer 프로퍼티인 cornerRadius를 20으로 설정
    - 둥근 코너를 갖게 됨
- colorView.layer.borderColor = UIColor.black.cgColor
  - UIView의 인스턴스인 colorView의 layer 프로퍼티인 borderColor를 검정으로 설정
    - 검정 border를 갖게 됨

C. 스위치가 꺼진 상태에서, 슬라이더가 여전히 작동은 되나 어떠한 변화도 일으키지 않기에, 유저에게 혼동을 줄 수 있음

DISABLING SLIDERS

- All controls have a property, isEnabled
- This allows the control to be activated or deactivated
- The status of a control is accompanied by a change in its appearance of the control, such as a dimming effect

isEnabled

- A Boolean value indicating whether the control is in the enabled state.
- Declaration // var isEnabled: Bool { get set }
- Set the value of this property to true to enable the control or false to disable it. An enabled control is capable of responding to user interactions, whereas a disabled control ignores touch events and may draw itself differently. Setting this property to false adds the disabled flag to the control’s state bitmask; enabling the control again removes that flag.
- The default value of this property is true for a newly created control. You can set a control’s initial enabled state in your storyboard file.

Enabled = the control is available for interaction
Disabled = the user can still see the user interface elemet, but touching or otherwise trying to activate the control will have no effect on the app

A disabled control will usually have a slightly dimmed appearance - 해당 슬라이더들이 스위치에 따라 enabled 여부를 업데이트하는 function을 만들자

```swift
func updateControls() {
redSlider.isEnabled = redSwitch.isOn —> redSwitch가 꺼져 있다면(isOn = false), redSlider 역시 disabled됨(isEnabled = false)
greenSlider.isEnabled = greenSwitch.isOn
blueSlider.isEnabled = blueSwitch.isOn
}
```

    - 해당 function은 switch 값이 변함에 따라 slider의 enabled 여부가 바뀌는 것이므로 // switch 값이 바뀌는 모든 곳에 추가
    - switchChanged() action에 추가
    - viewDidLoad()에 추가
    - reset() action에 추가

TROUBLESHOOTING

DISCONNECTED OUTLET OR ACTION - Build and run your app with no errors, but the app immediately crashes on launch? - 에러가 없어 보임에도 device / simulator에서 돌렸을 때 Home Screen만 보여주고, console에 다음과 같은 에러 표시가 나타날 수 있음 - `\*\*\* Terminating app due to uncaught exception 'NSUnknownKeyException', reason: '[<YourApp.ViewController 0x7f8378f05b00> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key someNameFromYourApp` - 해당 에러에서 Interface Builder의 view에 문제가 있다고 명시하지 않지만, Interface Builder에 에러가 발생한 것임 - Select View Controller - Open the Connections Inspector - 여기서 outlet과 action connections 확인 가능 - ◉ or ○ - 이런 표시들이 있어야 함 - !(느낌표)가 있다면, that’s the source of the crash

이러한 에러는 왜 발생할까?

스토리보드의 slider에 대하여 outlet 생성

- 이름을 bleuSlider라고 지음
  - bleuSlider(code)
    - Bleu Slider(storyboard의 슬라이더) 연결 생성

typo 인지

- 코드에서 이름을 blueSlider라고 바꿈

  - blueSlider(code)
    - 기존의 Bleu Slider(storyboard)와 연결

- 하지만 여전히 bleuSlider와 Bleu Slider의 연결은 남아있음
- 그러나 스토리보드의 Bleu Slider는 코드의 blueSlider외에도 bleuSlider에도 접근하려 할 것임
- 하지만 bleuSlider는 이제 코드에 존재하지 않아 crash
- 그러므로 View Controller의 connections inspector에서 bleuSlider와 Bleu Slider의 connection을 제거해줘야 함

COMMON PROBLEMS W/ ACTIONS AND OUTLETS

이처럼 ViewController의 code에서 변화가 있다면, 해당 변화와 관련하여 storyboard에서도 직접 수정해줘야 한다!!

- When you create an action or outlet, you’re making changes in two places
- In Swift, you add the @IBOutlet or @IBAction line
- In Storyboard, you add information that links the view with the outlet or the control event with the action

- action이나 outlet에 해당하는 code를 지웠다고 하자
- 여전히 storyboard는 app이 run할 때 해당 action이나 outlet에 접근하려 할 것임
- 하지만 해당 action이나 outlet이 없음
- 결국 app will crash
- 그러므로, code를 지우는 것 뿐만 아니라
- 스토리보드에서도 you must disconnect unwanted actions and outlets

---

### lesson 18 (Adaptive User Interfaces)

    - Asset catalog: The asset catalog in Xcode is the best place to keep all the images used in your app. Its file extension is .xcassets, and you can access it from the project navigator
    - Auto Layout: You use Auto Layout to build adaptive interfaces, so your user interface elements maintain the same relative positions, no matter the screen’s size or orientation. For example, you can add one rule that a button must always be a certain distance above an image view and another rule that the image view must always be centered at the bottom of the screen. By defining this rule in Auto Layout, the two elements will follow those rules - whether the screen is large or small, in portrait or in landscape mode
    - Constraint: A constraint is a rule in Auto Layout that defines how views should be laid out or sized / ‘set’ or ‘pin’ some aspect of the layout of the view to a desired value
    - Stack View: You use a stack view to set up elements in your user interface in a column from top to bottom or in a row from left to right

Adaptive User Interface는

    - devices with different screen sizes
    - different orientations

에 UI가 ‘adapt’할 수 있도록 하는 것이다

#### SimpleCenter

    - View as: button // 현재 보고 있는 스토리보드, 즉 interface builder의 canvas size가 어느 기기를 기준으로 하고 있는지를 보여줌
    - 가장 작은 기기를 선택하는 것이 좋음
    - label 추가
    - devices / orientations에 따라 위치가 달라짐

Why?

- 해당 view가 갖는 프레임(frame)이 기기마다 다른 곳에 나타나기 때문

  - 스토리보드에 view를 생성하면 해당 view에 대한 frame이 생성됨
  - Frame: the size and the location // size: width, height // location: a certain distance from the top, a certain distance from the left
  - 해당 view가 현재 canvas에서 가지는 일종의 ‘좌표’임
  - 해당 프레임은 특정 기기에서 중앙에 위치할 수 있지만, 기기의 사이즈에 따라 각 기기마다 다른 곳에 위치할 것임

- 그러므로 각각의 기기에 알맞게 adapt할 수 있는 Auto Layout을 설정해야 함

- Constraints는 설정하는 Auto Layout에서 how views will be laid out을 define해주는 rules임

  - label 클릭
  - Align button 클릭
  - Horizontally in Container: 0, Vertically in Container: 0 2개 박스 클릭 —> Add 2 constraints 클릭

- 현재 interface builder에서의 프레임에 상관없이 constraints에 의해 모든 기기에서 label이 각 기기에 맞춰 정중앙에 위치

  - blue lines: the constraints you’ve set up == the current frame of a view
  - orange lines: the constraints you’ve set up != the current frame of a view // 점선으로 된 orange box는 label이 constraint에 따라 있어야 할 위치를 알려주고, 오렌지선의 숫자는 label이 x, y축으로 얼마나 이동해야 하는지를 알려줌

- orange lines?
- Update Frame(to match the constraints) or Update Constraints(to match the frame)
  - Frame을 constraints에 맞추고자 한다면 Update Frames 클릭
  - Constraints를 frame에 맞추고자 한다면 Resolve Auto Layout Issues Button —> Update Constraints

#### ElementQuiz

    - UI Elements 생성
    - Configure
    - Action / Outlet 생성
    - code 작성

원소기호 사진을 보여주고 유저가 해당 원소의 이름을 맞추고 답을 확인할 수 있는 앱을 만들어보자

main user interface는 a stack or list of views로, UIStackView를 통해 views를 top to bottom, 혹은 left to right으로 arrange하는 연습도 하자

해당 앱에서 필요한 요소:

- chemical element의 image를 보여줄 Image View
- 물음표 / 정답을 보여줄 Label
- 정답을 보여주도록 하는 Button
- 다음 원소로 넘어가도록 하는 Button

IMAGE VIEW SIZE

- Image View는 기본적으로는, adjust its size to fit the size of the image함
- 해당 Image View를 fixed size로 고정시키고 싶으면 constraints를 사용할 수 있음

이처럼 view의 location에 대한 constraints를 Align에서 설정할 수 있던 것처럼, view의 size에 대해서도 Add New Constraints에서 constraints를 설정할 수 있음

- Size Inspector에서 width: 140, height: 140으로 설정하는 것은 현재 Interface Builder에만 적용되는 것
- Add New Constraints —> width: 140, height: 140 —> Add Constraints

Red Lines❓

- The red lines mean you haven’t defined enough constraints for Auto Layout
- to figure out the position and the size of the image view
- In this case, you’ve defined the size, but you haven’t defined the position of the view

CONFIGURING LABEL AND BUTTONS

    - Label 생성
    - Attributes Inspector —> Font
    - Font에서 Style은 Bold, Size는 24로 설정
    - Label Text를 ‘Answer Label’로 변경

    - Button 2개 생성
    - Title을 각각 ‘Show Answer’, ‘Next Element’로 설정

ADDING A STACK VIEW

    - 생성한 Image View / Label / Button(Show Answer) / Button(Next Element)를 묶기(Shift-click 혹은 드래그)
    - Embed In > Stack View
    - UIStackView 인스턴스 생성됨

CENTERING THE STACK VIEW

    - 해당 Stack View 선택(Document Outline에서 선택하면 편함)
    - Align
    - Horizontally in Container, Vertically in Container
    - 2개의 constraints 생성됨
    - Update Frames

CONFIGURING THE STACK VIEW

Stack View와 관련하여 2가지를 설정할 수 있음 (Attributes Inspector)

    - Alignment: Stack View 내부 요소들의 정렬 // How the views are arranged within the stack
    - Spacing: Stack View 내부 요소들 간 간격 // How much space is between each view in the stack

ADDING IMAGES

    - Assets.xcassets에 Image View에 사용될 이미지 추가

ADDING OUTLETS AND ACTIONS

    - @IBOutlet weak var imageView: UIImageView!
    - @IBOutlet weak var answerLabel: UILabel!

    - @IBAction func gotoNextElement(_ sender: Any) {}
    - @IBAction func showAnswer(_ sender: Any) {}

ADDING CODE

    - 필요한 DATA MODEL?

해당 앱은 a list of chemical elements를 한 번에 하나씩 보여줄 것임 // a list of items of same type —> ‘array’ // an array of element names가 필요할 것임!

    - ViewController.swift에 추가

```swift
let elementList = [“Carbon”, “Gold”, “Chlorine”, “Sodium”]
var currentElementIndex = 0 // 현재 어떠한 element가 사용되고 있는지 추적하기 위함
```

    - 앱의 behavior에 맞는 function 추가

```swift
func updateElement() {
answerLabel.text = “?” // 앱이 시작하거나 다음 화면으로 넘어갈 때 answerLabel에 ?가 뜨도록 함
let elementName = elementList[currentElementIndex]
let image = UIImage(named: elementName) // 새로운 UIImage 인스턴스 생성(asset catalog에 해당 이름이 있는 image를 기반으로)
imageView.image = image // imageView의 image에 새로 생성된 UIImage 인스턴스를 set
}
```

viewDidLoad()에 추가

gotoNextElement()에 추가

    - showAnswer()

현재 인덱스에 맞는 element 이름을 보여줘야 함

```swift
@IBAction func showAnswer(\_ sender: Any) {
answerLabel.text = elementList[currentElementIndex]
}
```

    - gotoNextElement()

다음 element로 넘어가야 하므로 currentIndexNumber에 1을 추가해줘야 함

```swift
@IBAction func gotoNextElement(\_ sender: Any) {
currentElementIndex += 1 // 이렇게만 해두면 해당 button을 누를 때마다 index가 늘어나고, 가능한 인덱스 범위(0, 1, 2, 3)를 넘어가 app will crash
updateElement()
}
```

‼️fatal error: Index out of range‼️라는 오류를 유발할 것임

```swift
@IBAction func gotoNextElement(\_ sender: Any) {
currentElementIndex += 1
if currentElementIndex >= elementList.count {
currentElementIndex = 0
}
updateElement()
}
```

💯

---

### Code Review

```swift
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!

    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0

    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
    }

    @IBAction func gotoNextElement(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }

    @IBAction func showAnswer(_ sender: Any) {
        answerLabel.text = elementList[currentElementIndex]
    }

}
```

- 해당 앱은 사용되는 image의 이름과 answerLabel에 나타나는 이름이 같아서, 즉 같은 string value를 가지고 있어서 단순한 array가 DATA MODEL로 필요했음

- 만약 다음과 같은 DATA MODEL을 사용한다면?

```swift
struct ChemicalElement {
let symbol: String
let name: String
let atomicWeight: Int
let imageName: String
}
```

1)조금 더 복잡한 quiz를 만들 수도 있고, 2)그리고 굳이 element의 name이 image name과 같을 필요도 없다.

💡 When building apps, developers often need to make decisions like this. In this case, there’s a trade-off between the simplicity of a single string and the structure and functionality of a custom type.

#### AnimalSounds

You gotta know:

    - Nesting Stack View
    - Target Membership

다음 앱을 만들어보자:

    - 고양이, 개, 소 모양의 버튼을 누르면(buttons)
    - 각각 텍스트로 울음소리를 나타내고(label)
    - Tap an animal이라는 안내(label)
    - 해당 소리를 내주는 앱(SimpleSound API)

USER INTERFACE

    - Button 생성
    - title은 🐱 // font > size는 72로 설정
    - cmd + = // resize the button to fit the content (Editor > Size to Fit Content)
    - cmd + D (Duplicate) —> Button 3개 생성
    - 각각 🐱, 🐶, 🐮

    - Stack View 생성
    - Alignment: Center
    - Spacing: 18

    - label 생성
    - text는 “Animal Sounds”
    - font > size > 24

    - label 생성
    - text는 “Tap an animal”

    - 새로운 Stack View 생성 // Stack View + label(Animal Sounds) + label(Tap an animal)
    - Alignment: Center
    - Spacing: 10
    - Align > Horizontally in Container, Vertically in Container > Add 2 Constraints
    - Update Frames

이처럼 관련 있는 것을 stack view로 묶어주고, 또 해당 stack view를 포함하여 다른 것들과 더 큰 stack view를 만들어주는, Stack View를 Nesting할 수 있다.

ADDING CODE

    - @IBOutlet weak var animalSoundLabel: UILabel!
    - @IBAction func catButtonTapped(_ sender: Any) {}
    - @IBAction func dogButtonTapped(_ sender: Any) {}
    - @IBAction func cowButtonTapped(_ sender: Any) {}

각각의 버튼을 누르면 animalSoundLabel에서 해당 울음소리가 나오도록 설정

```swift
@IBAction func catButtonTapped(\_ sender: Any) {
animalSoundLabel.text = “Meow!”
}

@IBAction func dogButtonTapped(\_ sender: Any) {
animalSoundLabel.text = “Woof!”
}

@IBAction func cowButtonTapped(\_ sender: Any) {
animalSoundLabel.text = “Moo!”
}
```

SimpleSound라는 Swift 클래스를 추가해보자(API)

    - Simplesound.swift 파일 드래그
    - sound files도 드래그해서 추가
    - 추가 시, “Copy items if needed”와 “Add to targets” 중 AnimalSounds에 체크!

Target Membership: 리소스를 추가할 때 어떠한 ‘target’에 해당 리소스를 포함시킬 것인지에 대한 것! 여기서 target은 AnimalSounds와 같이 현재 작업하고 있는 앱 등을 의미함

- Target Membership이 있으면 해당 target에서 작업 가능

SimpleSound 인스턴스 생성 (using the name of the sound file)

```swift
let meowSound = SimpleSound(named: “meow”)
let woofSound = SimpleSound(named: “woof”)
let mooSound = SimpleSound(named: “moo”)
```

SimpleSound 메서드 호출

```swift
// 각각의 action에
meowSound.play()
woofSound.play()
mooSound.play()
// 호출
```

### Code Review

```swift
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalSoundLabel: UILabel!
    let meowSound = SimpleSound(named: "meow")
    let woofSound = SimpleSound(named: "woof")
    let mooSound = SimpleSound(named: "moo")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func catButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Meow!"
        meowSound.play()
    }

    @IBAction func dogButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Woof!"
        woofSound.play()
    }

    @IBAction func cowButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Moo!"
        mooSound.play()
    }

}
```

TIPS For Building Adaptive User Interfaces 😈 - Design for the smallest device // This will ensure your design will fit on other(larger) devices - Use constraints to define the height and width of image views // This will prevent you from needing to resize an image view to accommodate a very large image - Start by adding views and arranging them, then select the views and create a stack view - Use stack view settings, like spacing and alignment, to create a wide variety of interface effects - Nest stack views to create more complex user interfaces // Always try to start with the innermost stack views - Use constraints to center the outermost stack view horizontally and vertically to ensure your UI is centered on all devices - Resolve Auto Layout issues after adding constraints // Select Update Frames to get rid of those wiggly orange lines

---

### lesson 19 (Enumerations and Switch)

- Case: In an enum, the case keyword declares a name for one of the enum’s options. In a switch, the case keyword introduces a pattern to try to match a value against.
- Default: A default option is selected when no other option is available. If none of the other more-specific cases match the input, the code in the default block will run. // In an if statement, the default option is the final else clause. // In a switch statement, the default option is the catch-all option to make the switch comprehensive.
- Enum: The enum keyword declares a type made up of a group of related choices. An instance of an enum will be exactly one of the enum’s choices. The keyword enum comes from the word enumeration, which means listing distinct things one by one.
- Exhaustive: Something that is exhaustive is comprehensive and all-inclusive. An exhaustive list contains every possibility.
- Switch: The switch keyword chooses between different courses of action based on some value’s characteristics. The options for the values are written in case statements. Once the switch statement finds the first match between the value and a case, the block of code next to the case statement is executed. If no case statements match, the default statement’s code is executed. Once one of the blocks has been executed, the program continues running the next code after the end of the entire switch statement.

💡 Review

- 열거형(Enum)
  - 구조체, 클래스와 같이 하나의 타입
  - Switch문과 주로 많이 호응
  - UpperCamelCase로 정의, 각 case는 lowerCamelCase로 정의
  - 각 case 그 자체가 고유의 값임 // 각 케이스는 한 줄에 개별로도, 한 줄에 여러 개도 정의할 수 있음
  - EnumName.caseName을 통해 case 호출, 타입이 명확한 경우 .caseName으로도 호출 가능

```swift
enum Weekday {
case mon
case tue
case wed
case thu, fri, sat, sun
}

var day = Weekday.mon // mon
day = .tue // tue
```

Multiple Choice

학교 식당에서 pasta / burger / soup 이라는 3가지의 options 중에 반드시 하나만 고르는 choice를 하도록 할 때,

    - 다른 옵션들은 고려하지 않아도 됨
    - 이에 따라 신속하고 효율적으로 준비할 수 있음
    - 더불어, 모두가 하나의 점심을 먹었음을 알 수 있음

이라는 장점이 있다.

열거형(enumerations)은 프로그램에 있어서 이와 같이 가능한 value들을 제시하고, Switch문을 통해 고를 수 있다.

#### Making Decisions, Revisited

조건에 따라 결정을 하는데 있어서(making decisions), 다음의 선택지가 있다:

    - if문
    - switch문(w/ enumerations)

if문의 경우 다음과 같은 단점이 있을 수 있다:

```swift
func cookLunch(choice: String) -> String {
if choice == “pasta” {
return “🍝”
} else if choice == “burger” {
return “🍔”
} else {
return “🍲”
}
}
```

    - else의 경우 단순히 soup만 포함하는 것이 아니라, pasta, burger를 제외한 모든 경우를 포함한 것임(피자를 주문해도 수프가 나올 것)
    - cookLunch(choice: String)의 경우 해당 function에 어떠한 option들이 있는지 알려주지 않음

#### Enumerations

열거형(enumerations)은 다음과 같이 정의한다:

```swift
enum LunchChoice {
case pasta
case burger
case soup
}
```

혹은

```swift
enum LunchChoice {
case pasta, burger, soup
}
```

    - enum을 정의 시 case는 각각 한 줄에 개별로도, 혹은 같은 줄에 여러 개도 정의할 수 있다

    - enumeration은 a group of related choices다
    - 각각의 choice를 case라 한다
    - enumeration 역시 하나의 type이다
    - enum의 name은 UpperCamelCase
    - case의 name은 lowerCamelCase
    - enum의 value는 포함하고 있는 case 중 하나만이다
    - 그러므로 enum의 name은 단수형으로 지어주자

    - enum은 limits the choices to one of its cases
    - 그러므로 enum의 case에 없는 값을 value로 설정 불가

enum의 인스턴스는 다음과 같이 생성:

```swift
let choice = LunchChoice.burger // burger
let special = LunchChoice.fish // error! (Type ‘LunchChoice’ has no member ‘fish’)
```

Enums and Type Inference

해당 인스턴스의 type이 특정 enum임이 명확할 때, .caseName 만으로 값을 부여할 수 있다

```swift
var choice: LunchChoice
choice = .burger
```

When to Use Enums

그렇다면 열거형(enums)은 언제 사용하는 것이 좋을까?

    - Whenever you have a restricted group of related values in your code, it might be good to think about using an enum
    - If there are no restrictions on the value, or you have a large number of possible values, enums probably aren’t a good fit
    - 즉, RESTRICTED // RELATED한 value들이 있을 때, ‘열거형’으로 묶어주는 것을 생각해보자!

```swift
struct player {
name: String
skillLevel: Int
team: Team
position: Position
}
```

- enum을 사용하기에 name의 경우 경우의 수가 너무 많고(restricted x), skillLevel은 숫자로 표현하는 것이 더 직관적일 것이다

Comparing Enums

    - enum의 값들은 String, Int처럼 ==를 통해 비교할 수 있다

```swift
enum LunchChoice {
case pasta, burger, soup
}

let myLunch = LunchChoice.burger
let yourLunch = LunchChoice.burger

if myLunch == yourLunch {
“We’re having the same for lunch!”
} else {
“Can I try your lunch?”
}

// “We’re having the same for lunch!”
```

Enums and Functions

    - enum의 값들은 functions의 패러미터나 리턴 값으로 사용될 수 있다

```swift
enum LunchChoice {
case pasta, burger, soup
}

func cookLunch(\_ choice: LunchChoice) -> String {
if choice == .pasta {
return “🍝”
} else if choice == .burger {
return “🍔”
} else {
return “🍲”
}
}

cookLunch(.burger) // 🍔
```

- 함수 호출 시 LunchChoice의 member인 pasta, burger, soup을 제외한 경우는 호출할 수 없다는 장점! // Autocompletion을 통해 호출 값으로 가능한 옵션이 무엇인지 알 수 있음!

The Problem with If

하지만 위의 function은 다음의 문제점이 있다:

    - enum의 case외에 다른 말들이 많이 붙어서, code가 ‘noisy’해서 어떠한 case들이 있는지 직관적이지 못함
    - 마지막 choice는 ‘soup’인데, 이를 else로 표현하고 있어 코드를 읽는 입장에서 직관적이지 못함

그렇다면 enum과 어울리는 조건문은 무엇이 있을까?

Switch

위의 If문 대신 다음과 같은 Switch문을 쓸 수 있다:

```swift
enum LunchChoice {
case pasta
case burger
case soup
}

let choice = LunchChoice.burger

switch choice {
case .pasta:
“🍝”
case .burger:
“🍔”
case .soup:
“🍲”
}

// “🍔”
```

    - switch 키워드를 사용
    - switch 다음 사용되는 enum 인스턴스의 이름
    - 이미 choice라는 인스턴스가 LunchChoice라는 type임을 알고 있으므로 각각의 case에 점(.)만 사용 가능
    - 각 case 옆에 : 표시
    - switch문의 case 중 매치되는 case에 해당하는 code를 실행 후 종료

Exhausting the Possibilities

    - Switch문은 모든 가능성을 ‘exhaust’시켜야 한다
    - 즉, 열거형과 호응할 경우 모든 case를 다루어야 한다
    - Switch must be exhaustive
    - This means a switch statement must exhaust every possibility of the value being checked
    - With an enum, you can use a different case to handle every possible value

```swift
enum LunchChoice {
case pasta
case burger
case soup
case taco
}

let choice = LunchChoice.burger

switch choice {
case .pasta:
“🍝”
case .burger:
“🍔”
case .soup:
“🍲”
}

// error! Switch must be exhaustive

switch choice {
case .pasta:
“🍝”
case .burger:
“🍔”
case .soup:
“🍲”
case .taco:
“🌮”
}

// “🍔”
```

    - 결국 Switch문에서 처리하고자 하는 값은 반드시 하나의 case와 매치할 것이다
    - 즉, Switch문에서 처리하고자 하는 값이 없는 경우를 방지한다
    - 그리고 호응하는 enum의 정의가 달라질 시, Switch문을 그에 맞춰 업데이트하지 않을 경우 경고해준다
    - The fact that switch statements must be exhaustive means that you can be sure that one of the cases will match the value you’re testing
    - This feature prevents you from accidentally missing a value
    - It also alerts you if you update the definition of an enum without updating any switch statements that use it

The Default Case

    - 하지만 enum과 switch문을 호응할 때 모든 case에 관해 실행문을 정의할 필요는 없다
    - 남는 case들은 default 키워드로 커버하면 된다
    - if문에서 else와 비슷하다
    - default는 switch문 마지막에 정의한다
    - default를 사용할 경우 호응하는 enum이 업데이트되어도 에러가 발생하지 않는다(default에 포함되므로)

```swift
enum Quality {
case terrible, bad, poor, acceptable, good, great, fantastic
}

let quality = Quality.acceptable

switch quality {
case .bad:
print(“That really won’t do”)
case .poor:
print(“That’s not good enough”)
case .acceptable:
print(“Hmm, not bad”)
default:
print(“OK, I’ll take it)
}
```

- 코드적으로는 문제가 없지만, .terrible에 대하여 “OK, I’ll take it”이 출력된다는 점에서 문제가 있다

Multiple Cases

    - switch문에서 하나의 case에 대하여 여러 값을 걸 수 있다
    - enum에 값을 추가한다면, 이에 호응하는 switch문에서 알맞은 case에 마찬가지로 값을 추가할 수 있다

```swift
switch quality {
case .terrible, .bad:
print(“That really won’t do”)
case .poor:
print(“That’s not good enough”)
case .acceptable, .good, .great, .fantastic:
print(“OK, I’ll take it”)
}
```

More Than Enums

    - switch문에는 enum type외에 다른 type의 값들에도 적용할 수 있다
    - String, Int 등의 type을 가진 value들에 대하여 exhaustive list를 만드는 것은 불가하므로, default를 사용한다

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

Back to the Cafeteria

    - switch문이 enum과 잘 호응하기에, enum을 argument로 갖는 function을 정의할 시 switch문은 유용하다

```swift
enum LunchChoice {
case pasta, burger, soup
}

func cookLunch(\_ choice: LunchChoice) -> String {
if choice == .pasta {
return “🍝”
} else if choice == .burger {
return “🍔”
} else {
return “🍲”
}
}
```

해당 함수를 switch문으로 바꿔보자

```swift
func cookLunch(\_ choice: LunchChoice) -> String {
switch choice {
case .pasta:
return “🍝”
case .burger:
return “🍔”
case .soup:
return “🍲”
}
}

cookLunch(.burger) // “🍔”
```

이는 이전의 단점들을 보완한다:

    - 코드가 case 별로 깔끔하게 분류되어 읽기 편하다
    - enum의 각 value들에 대한 실행 사항을 각 case별로 명확히 전달한다
    - switch문은 exhaustive하기에, enum에 변화가 생긴다면 switch문이 업데이트 되기 전까지 run하지 않을 것이므로 value를 놓치는 일이 없다

Enum Methods and Properties

    - struct를 정의할 때처럼 enum 역시 프로퍼티와 메서드를 정의할 수 있다
    - self 키워드는 해당 프로퍼티나 메서드를 불러올 인스턴스 자기 자신을 의미한다
    - self 키워드는 methods나 calculated properties에서 사용한다
    - self keyword is used in methods and calculated properties and refers to the instance that is being asked for the property value

ex 1

```swift
enum LunchChoice {
case pasta, burger, soup

    var emoji: String {
    	switch self {
    	case .pasta:
    		return “🍝”
    	case .burger:
    		return “🍔”
    	case .soup:
    		return “🍲”
    	}
    }

}

let lunch = LunchChoice.pasta
lunch.emoji // “🍝”
```

ex 2

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

Wrapup

    - Enumerations are used when you want to represent one of a group of related values // Each possible value is called a case
    - When you create an enum, you’re making a new type // Instances of that type can only have values matching one of the specified cases
    - Using enums can make your code easier to read and write, because it’s always clear what the possible values are and what they mean
    - You can compare enum values with ==, or use a switch statement to test for all possible values
    - Like if statements, switch statements are another way of making decisions in your code
    - Switch statements work very well with enums, but can be used to switch on any type of value
    - Because switch statements must be exhaustive, you must handle every possible value
    - To handle any values that haven’t been specified, you can use a default case
    - Like structs, you can add calculated properties and methods to enums

#### Array

    - 1)Ordered storage of values 2)of Same type

#### Struct

    - Modeling Data!

#### Enum

    - a group of 1)Related 2)Restricted number of values

```swift
enum SchoolMascotOption {
case salamander, marmot, neither
}

let mascotVotes: [SchoolMascotOption] = [.neither, .marmot, .salamander, .neither, .marmot, .neither, .neither, .marmot, .neither, .salamander, .salamander, .marmot, .neither, .neither, .salamander, .neither, .neither, .marmot, .salamander, .neither, .neither, .neither, .marmot, .marmot, .neither, .neither, .marmot, .salamander, .neither, .marmot, .marmot, .marmot, .marmot, .neither, .salamander, .salamander, .salamander, .salamander, .salamander, .salamander, .salamander, .marmot, .neither, .salamander, .salamander, .neither, .salamander, .neither, .salamander, .salamander, .salamander, .salamander, .salamander, .salamander, .marmot, .neither, .neither, .marmot, .salamander, .neither, .neither, .salamander, .salamander, .neither, .salamander, .salamander, .salamander, .salamander, .neither, .salamander, .neither, .salamander, .marmot, .salamander, .marmot, .salamander, .salamander, .marmot, .salamander, .neither, .marmot, .marmot, .marmot, .salamander, .marmot, .salamander, .marmot, .neither, .marmot, .neither, .salamander, .marmot, .marmot, .marmot, .neither, .marmot, .marmot, .salamander, .neither, .neither, .salamander, .neither, .neither, .marmot, .neither, .salamander, .salamander, .salamander, .neither, .neither, .salamander, .salamander, .salamander, .marmot, .salamander, .salamander, .marmot, .salamander, .neither, .marmot, .marmot, .neither, .neither, .salamander, .marmot, .neither, .marmot, .salamander, .salamander, .marmot, .salamander, .neither, .salamander, .marmot, .neither, .salamander, .marmot, .marmot, .salamander, .marmot, .salamander, .marmot, .salamander, .salamander, .marmot, .marmot, .neither, .marmot, .neither, .marmot, .salamander, .salamander, .salamander, .neither, .salamander, .salamander, .neither, .marmot, .neither, .marmot, .marmot, .marmot, .marmot, .neither, .marmot, .neither, .salamander, .marmot, .salamander, .neither, .salamander, .salamander, .marmot, .neither, .marmot, .neither, .salamander, .neither, .salamander, .neither, .neither, .marmot, .salamander, .neither, .marmot, .salamander, .marmot, .neither, .salamander, .neither, .neither, .salamander, .salamander, .salamander, .neither, .salamander, .neither, .marmot, .salamander, .marmot]

func calculateMascotVotes(votes: Array<SchoolMascotOption>) -> String {
var salamanderVotes = 0
var marmotVotes = 0
var neitherVotes = 0

    for vote in votes {
        switch vote {
        case .salamander:
            salamanderVotes += 1
        case .marmot:
            marmotVotes += 1
        case .neither:
            neitherVotes += 1
        }
    }

    return "Vote Result:\n\(salamanderVotes) vote for salamader,\n\(marmotVotes) vote for marmot,\n\(neitherVotes) vote remain undecided"

}

let mascotVoteResult = calculateMascotVotes(votes: mascotVotes)

// Vote Result:
// 78 vote for salamander,
// 60 vote for marmot,
// 62 vote remain undecided
```

---

### lesson 20 (Final Project)

#### M

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

#### V

#### Main.storyboard

    - app이 내는 sign을 나타내는 label
    - gamestate의 message를 나타내는 label
    - 각각 r / p / s button 3개 ——> stack view 생성
    - play again button
    - 위 항목들로 stack view 생성
    - align을 통해 center에 위치시킬 constraints 2개 생성

#### C

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

---

### extension

- 하나의 클래스(혹은 그 외 커스텀 타입) 안에 모든 기능을 정리할 수 있지만, 코드를 따로 정리하고 싶을 때 extension 사용 가능
- extension 클래스네임 {}
- 해당 body 안에 연관된 기능들을 따로 따로 넣어 정리해줄 수 있음
- extension 키워드를 통해 해당 클래스의 기능들을 ‘확장’시키는 개념
- 코드 정리 및 수정 용이

```swift
class ViewController: UIViewController {}

extension ViewController {
…
}

extension ViewController {
…}
```

### final

- 해당 class를 상속 불가한 class로 만들고자 할 때
- 즉, 해당 클래스가 ‘파이널’이다
- 상속하지 않을 클래스에 final을 붙여주면 코드 속도가 빨라짐
- 상속을 하고 싶을 시에는 class SomeClass: SomeSuperClass {}와 같이 선언(SomeClass는 SomeSuperClass의 서브클래스이다)

### Access Control

    - Access Control은 다른 소스파일 및 모듈의 코드에서, 코드의 일부에 대한 액세스를 제한하는 것
    - 이를 통해 코드의 구현 세부사항을 숨기고, 해당 코드를 접근하고 사용할 수 있는 기본 인터페이스를 지정할 수 있음
    - 개별 타입(클래스, 구조체, 열거형) 외에도 해당 타입에 속하는 프로퍼티, 메서드, 이니셜라이저, 서브스크립트 등에 대한 특정 접근 레벨 지정 가능
    - 객체 외부에서 객체 내의 자료로의 접근을 제한하고 데이터를 조작, 수정하는 동작은 내부에 두고 접근(getter), 설정(setter)하는 메서드로 결과만 받는 것
    - private: Access Control(접근 제어)의 level 중 하나

### Module

    - 모듈은 코드 배포(code distribution)의 단일 유닛
    - 시스템(혹은 프로그램)이나 제품 등에서 개별적인 기능이나 역할을 가진 부품 및 요소 등을 칭함(사전적 정의)
    - Framework와 같이 import 키워드를 통해 외부에서 가져오는 것

### Access Levels

#### open

    - 엔티티를 정의하는 모든 소스파일 내, 정의한 모듈을 가져오는 다른 모듈의 소스파일에서 모두 접근 가능
    - 일반적으로 Framework에 공용 인터페이스를 지정할 때 사용
    - 클래스 및 클래스 멤버에만 적용
    - 다른 접근 레벨들과 다르게 정의 모듈 외에 이를 가져오는 외부 모듈에서도 서브클래싱 / override 가능
    - 클래스를 명시적으로 open으로 표시하면, 해당 클래스를 Super Class로 사용하는 다른 모듈에서 가져온 코드의 영향을 고려했으므로, 클래스 코드를 적절히 디자인했음을 나타냄

```swift
// Zac Framework 내부

open class OpenClass {
public init() {}
open func someMethod(){} —> ⚠️만약 public func someMethod(){}로 정의하면?
}

// Zac Framework 외부

import ZacFramework

class A: OpenClass { —> 서브클래싱 가능
override func someMethod() { —> override 가능 // error
print(“Hello, world!”)
}
}
```

#### public

    - 엔티티를 정의하는 모든 소스파일 내, 정의한 모듈을 가져오는 다른 모듈의 소스파일에서 모두 접근 가능
    - 일반적으로 Framework에 공용 인터페이스를 지정할 때 사용

#### internal

    - 정의 모듈의 모든 소스파일 내에서 사용 가능, 해당 모듈 외부의 소스파일에서는 사용 불가!(‘Internal’)
    - 일반적으로 App이나 Framework 내부 구조를 정의할 때 internal 접근 사용
    - 기본적인 접근 수준

```swift
// Zac Framework 내부

open class OpenClass {
public init() {}
func someMethod(){}
}

// Zac Framework 외부

import ZacFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
    	super.viewDidLoad()
    	let openClassInstance = OpenClass()
    	openClassInstance.someMethod() // error! ‘someMethod’ is inaccessible due to ‘internal’ protection level
    }

}
```

#### file-private

    - 정의 소스파일에 엔티티 사용을 제한
    - 해당 세부 정보가 전체 파일 내에서 사용될 때 특정 기능의 구현 세부 정보를 숨길 수 있음
    - file-private 수준의 타입의 서브클래싱이나 인스턴스 생성 시 마찬가지로 접근 수준을 private or file-private으로 설정해야 함

```swift
fileprivate class FilePrivateClass{
public init() {}
}

private var fileprivateInstance = FilePrivateClass()

private class A: FilePrivateClass {}
```

#### private

    - 정의 선언과 해당 선언의 extension에 엔티티 사용을 제한
    - 단일 정의 내에서만 사용되는 특정 기능 조각의 구현 상세 내역을 숨길 수 있음

```swift
private class PrivateClass {
public init() {}
private var name = “Zac”
}

// 클래스 프로퍼티에 접근하기 위해 init은 public으로! / init이 private이면 인스턴스 생성 불가

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

fileprivate class A: PrivateClass {}

// 그러나 override는 불가

open class OpenClass {
private func someMethod() {}
}

class A: OpenClass {
override func someMethod() {} // error!
}
```

---

### lesson 21 (App Design)

    - Brainstorm - Plan - Prototype - Evaluate
    - 어디에 어떤 conding concept가 필요할지 생각
    - Easy to Use + Unique

#### Brainstorm

    - 문제 / 그리고 가능한 솔루션을 생각
    - 어떤 앱을 만들까?
    - App Store에서 조사
    - 개선사항은 없을까? UI가 더 좋아질 수 있을까?
    - User Reviews도 체크

    - 앱을 사용할 만한 가상의 persona 생성
    - 어떤 사람? 직업은? 몇 살? 기기는 얼마나 자주 사용? 사진 / 단어 중 무엇을 선호? 왜 앱을 사용하는가? 인터넷 액세스가 필요? 등등

    - 목적성을 확실히
    - My app will: ___________
    - because: ___________
    - ex) My app wil tell a new student exactly where to be right now and how to get there, because new students often get lost

    - Evaluate 이후 문제 해결을 위한 아이디어 생각

#### Plan

    - 아이디어에 대한 디테일 플랜

    - App Flow를 생각(user experience 기반)
    - GET SPECIFIC
    - 버튼을 누르면 어떻게 되는지? 언제 특정 기능이 작동 가능해지는지?

UI / UX는 어떻게 구성?

    - Good UI —> Good UX
    - navigation, font size, icon shape, placement 등 사소한 것까지
    - UX는 Simple할수록 좋다

디자인은 어떻게 할까?

    - Design통해 개성을 살리되, Simple하게
    - Color? 필요한 Image? Font? Sound?
    - App Icon은 첫인상

어떤 기능을 추가할 수 있을까?

- Basics

  - Keyboard: 무슨 데이터를 입력?
  - Camera and Microphone
  - Touchscreen: tapping, double-tapping, swiping, dragging, button 등 / +스크린 요소가 터치로 interaction 가능한 앱?

- Connection

  - Wi-Fi: 인터넷이 필요한 앱인가?
  - GPS: iOS devices have a built-in GPS
  - Bluetooth: 주변 기기와 연결(스피커, 로봇, 온도 측정기 등)

- Innovation

  - Speech recognition and machine learning: 키보드 사용 대신? 누가 좋아할까? Siri의 학습?
  - Acceleromter and gyroscope: 디바이스가 accelerating / decelerating / zero gravity? 디바이스의 rotation 정도? 합쳐서 현 디바이스가 어떻게 움직이는지 3차원에서 파악 가능 / an app that recognizes if the user is falling? / the Health app and the level tool in the Compass app on iPhone
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

Prototype

    - 아이디어 / 플랜을 모형처럼 만들어보는 것
    - 각 슬라이드를 앱의 스크린이라 생각하고 구상

    - 처음부터 다 설계?(x)
    - 스크린 1-2개에서 시작하여 adding한다는 생각(o)

    - What is the first screen?
    - Which buttons are visible?
    - Then what happens?
    - What kinds of graphics? icons?
    - How many taps?
    - How would users navigate between views?
    - 직관적으로 설명없이 어떤 feature인지 나타낼 수 있을까?

Evaluate

    - 프로토타입을 테스트
    - 주변 지인 + target audience에게 시험
    - Observe + Ask

During: Things to Observe

    - 어떤 버튼을 tap할지 유저가 알았는가?
    - 유저가 혼동한 포인트는?
    - 유저가 즐거워한 포인트는?

Afterwards: Questions to Ask

    - 앱에서 좋았던 부분? 안좋았던 부분?
    - 앱이 유용하다고 생각하는가? 출시된다면 사용할 의향?
    - 앱에서 더 추가됐으면 하는 점?

---

### Code Review

#### Struct

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

#### Enum

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
        case .spades: return "♠️"
        case .hearts: return "❤️"
        case .diamonds: return "♦️"
        case .clubs: return "♣️"
        }
    }

}

let oneSuit = Suit.spades
let otherSuit = Suit.clubs

oneSuit.rank // 4
otherSuit.rank // 1

oneSuit.beats(otherSuit) // true
oneSuit.beats(oneSuit) // false

oneSuit.emoji // "♠️"
otherSuit.emoji // "♣️"
```

---

### lesson 17 revised code

#### ViewController.swift

```swift
import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var colorView: UIView!
    @IBOutlet private weak var redSwitch: UISwitch!
    @IBOutlet private weak var greenSwitch: UISwitch!
    @IBOutlet private weak var blueSwitch: UISwitch!
    @IBOutlet private weak var redSlider: UISlider!
    @IBOutlet private weak var greenSlider: UISlider!
    @IBOutlet private weak var blueSlider: UISlider!

}

extension ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        updateColor()
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        updateControls()
    }

}

extension ViewController {

    private func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0

        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }

        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)

            colorView.backgroundColor = color
    }

}

extension ViewController {

    private func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }

}

extension ViewController {

    @IBAction private func switchChanged(_ sender: UISwitch) {
        updateColor()
        updateControls()
    }

    @IBAction private func sliderChanged(_ sender: UISlider) {
        updateColor()
    }

    @IBAction private func reset(_ sender: Any) {
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1

        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false

        updateColor()
        updateControls()
    }

}

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!

    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0

    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
    }

    @IBAction func gotoNextElement(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }

    @IBAction func showAnswer(_ sender: Any) {
        answerLabel.text = elementList[currentElementIndex]
    }

}
```

#### CaptionChoice.swift

```swift
import Foundation

struct CaptionOption {
let emoji: String
let caption: String
}
```

#### ViewController.swift

```swift
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak private var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak private var topCaptionLabel: UILabel!
    @IBOutlet weak private var bottomCaptionLabel: UILabel!

    private var topChoices = [CaptionOption]()
    private var bottomChoices = [CaptionOption]()

    private let needChoice = CaptionOption(emoji: "👊", caption: "What Do I Need Now?" )
    private let lifeChoice = CaptionOption(emoji: "🌲", caption: "What Is Important in Life?")
    private let mindChoice = CaptionOption(emoji: "🏃🏻", caption: "What Should I Keep in Mind?")
    private let passionChoice = CaptionOption(emoji: "💡", caption: "PASSION")
    private let faithChoice = CaptionOption(emoji: "💎", caption: "FAITH")
    private let loveChoice = CaptionOption(emoji: "💓", caption: "LOVE")

    @IBAction private func tapSegmentedControl(_ sender: UISegmentedControl) {
        updateCaption()
    }

}

extension ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.systemGreen

        topChoices = [needChoice, lifeChoice, mindChoice]
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0

        bottomChoices = [passionChoice, faithChoice, loveChoice]
        bottomCaptionSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0

        updateCaption()
    }

}

extension ViewController {

    private func updateCaption() {
        topCaptionLabel.text = topChoices[topCaptionSegmentedControl.selectedSegmentIndex].caption
        bottomCaptionLabel.text = bottomChoices[bottomCaptionSegmentedControl.selectedSegmentIndex].caption
    }

}
```

---

### Pomodoro

#### M(Models)

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

#### VC(ViewControllers)

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
@IBAction private func tapStudyButton(\_ sender: UIButton) {
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

- 폴더 정리

  - App(AppDelegate, SceneDelegate)
  - Models, ViewControllers(MainViewController, Storyboard)
  - Assets(xcassets, LaunchScreen.storyboard, Info.plist) / Products(Pomodoro.app)
  - Info.plist의 경우 디렉토리 위치가 변경될 때 에러가 뜸
    - 에러가 난 부분 수동으로 디렉토리 설정(Pomodoro/Assets/Info.plist)

- Model에서는 modeling, 해당 모델에 대한 실제 인스턴스 생성은 주로 VC에서
- 직관성 + 수정 용이성을 위해 최대한 반복되는 부분 없이 쪼개서 이름을 붙이자
- VC에서는 최대한 이름을 통해서만 수행할 수 있도록(직관성), Modeling에서 기능의 세세한 사항을 구현하고, 이를 VC에 끌어다 쓰자
- Modeling시 다른 파일에서 사용될 것이라면 internal, 사용되지 않을 것이라면 private

- VC의 경우 화면의 mode를 enum으로 나누어보자
- VC 상단에 Outlet, 그리고 모델 인스턴스 생성
- viewDidLoad 함수의 경우 되도록이면 VC 상단에 위치

- init
  - custom initializer 생성
- String(repeating: count:)
  - count만큼 해당 string을 repeating해라
- mutating func
  - 하나의 인스턴스는 스스로의 저장값을 바꿀 수 없어서, 저장값을 바꿀 수 있도록 mutating func으로 함
- UIImage?
  - Failable, 해당 Image가 있을 수도 없을 수도 있다는 이야기
- configureTimeLabel(timeText: String?){timeLabel.isHidden = timeText == nil, timeLabel.text = timeText}
  - timeText가 nil일 수도 있기에 String?으로 설정, timeText가 nil이라면 timeLabel을 숨기고, 그렇지 않다면 timeText를 보여줘라
- MainViewController{enum Mode{}}
  - MainViewController를 통해 적용할 화면들을 기능, 용도에 따라 mode 설정해보자
- extension MainViewController.Mode{}
  - Mode별 구현 사항 설정
- extension MainViewController{private func update(mode: Mode){switch mode{}}}
  - Mode별 구현 사항을 바탕으로 실제 화면을 업데이트해주는 함수 설정
  - 이 때 또 반복되는 작업이 있다면 이 안에서도 decomposition을 통해 묶어줘라

---
