# flutter_app

A new Flutter application.

1. slider.dart

- Uses package [Sleek Circular Slider](https://pub.dev/packages/sleek_circular_slider)

```dart
child: SleekCircularSlider(
        appearance: CircularSliderAppearance(),
        onChange: (value) => print(value),
      ),
```

2. networkLib.dart

- Uses package [http](https://pub.dev/packages/http)
- A sample network call

```dart
void _callNetwork() async {
    var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var itemCount = jsonResponse['totalItems'];
      print('Number of books about http: $itemCount');
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  }
```
