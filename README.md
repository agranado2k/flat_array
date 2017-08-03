## Mission

Write a function that will flatten an array of arbitrarily nested arrays
of integers into a flat array of integers. e.g. [[1,2,[3]],4] →
[1,2,3,4]. If the language you're using has a function to flatten
arrays, you should pretend it doesn't exist.

## How to test

Execute:
```
ruby test/flat_test.rb
```

## How to run

Execute:
```
./bin/flat "[[1,2,[3]],4]"
```

or

```
ruby ./bin/flat "[[1,2,[3]],4]"
```

Yo can pass any array inside **""**.

## Result
```
[1,2,3,4]
