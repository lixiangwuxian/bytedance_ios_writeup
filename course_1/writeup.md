##  应用程序生命周期

### APP

1. 点击APP图标；

2. 执行main函数；

3. 执行UIApplicationMain函数；

4. 初始化UIApplication对象并为其设置代理；

5. 在UIApplication对象上监听系统事件；

6. 程序结束并退出；

### ViewController

1. alloc/init
2. loadView
3. viewDidLoad
4. viewWillAppear
5. viewDidAppear
6. viewWillDisappear
7. viewDidDisappear
8. dealloc

## 常用的UI控件

- UIStackView

- UIScrollView

- UITableView

- UICollectionView

- WKWebView

- UIProgressView

亦见[developer.apple.com](https://developer.apple.com/cn/documentation/uikit/views_and_controls/)

## UITableViewDelegate声明方法

- ```objective-c
  @MainActor protocol UITableViewDelegate
  ```

- ```objective-c
  @interface MyViewController () <UITableViewDelegate>
  @property (strong, nonatomic) IBOutlet UITableView *mTableView;
  @end
  ```

- ```swift
  class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  }
  ```

