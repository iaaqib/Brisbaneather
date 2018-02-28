# Brisbaneather
A simple app to display yesterday's weather of Brisbane, showing the usage of integrating ReactNative in an iOS Native project.

To run the app. First of all install the node modules by:
```
npm install
```
Then start the node server by:
```
npm start
```

Then go to the ios folder and run the project.

If you want to run the app on an iOS Device, go to the RNCardViewModule.m present at /ios/Brisbaneather/RNModuleView/RNCardView/RNCardViewModule.m.
And change the localhost url string to your <YOUR-MACs-IP>. it will look something like this -> "http://<YOUR-MACs-IP>:8081/index.bundle?platform=ios&dev=true&minify=false". If you don't change the localhost you might end up getting the following error.

![alt text](https://github.com/iaaqib/Brisbaneather/blob/master/screenshot/error.jpg)

The reason of not using the RCTBundleURLProvider was because due to some issues in ReactNative, it only gets the URL for the for the main.jsbundle while running on a simulator, it returns a NULL when the app is run over a iOS Device.


