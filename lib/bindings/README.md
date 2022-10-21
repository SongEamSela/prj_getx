# Bindings

The Binding class is a class that will decouple dependency injection, while "binding" routes to the state manager and dependency manager. This allows Get to know which screen is being displayed when a particular controller is used and to know where and how to dispose of it. 

## Implementing

1. Create a class and implemets Binding

```
class HomeBinding implements Bindings {}
```

2. override the "dependencies" method, and insert all the classes that are going to use on that route:

*Each screen should have its own binding*

```
class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.put<Service>(()=> Api());
  }
}

```

3. implement screen binding in route

```
getPages: [
  GetPage(
    name: '/',
    page: () => HomeView(),
    binding: HomeBinding(),
  ),
];

```

## Reference

https://chornthorn.github.io/getx-docs/dependency-management/binding/
