# healthKitTester
Test project to resolve an issue with healthKit on iOS+WatchKit

Xcode: Version 9.4.1 (9F2000)
MacOS: MacOS High Sierra 10.13.6 (17G65)
Machine: Macbook Pro 15" Mid-2015

I am trying to create a barebones ios+watchkit app. There’s nothing else in this project but just a blank single view ios and watchkit app but I put in a healthkit authorization method in it. But when I run the app I get an error. Below is what is being outputted on the console:

2018-08-06 18:22:43.832072+0800 healthKitTest WatchKit Extension[13954:6948383] [default] containerAppExtensionEntitlementsWithCompletion: failed with error: (null)
2018-08-06 18:22:43.836490+0800 healthKitTest WatchKit Extension[13954:6948383] [default] containerAppExtensionEntitlementsWithCompletion: failed with error: (null)
Authorization successful? true

Note that HealthKit is successfully authorized as indicated by "Authorization successful? true" on the console.
