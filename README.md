# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common issue in Dart asynchronous programming: using a generic `Exception` type when handling errors, and provides a solution for improved error handling.

## Bug

The `bug.dart` file contains Dart code that fetches data from a remote API. The `try-catch` block handles exceptions during the API call. However, it uses a generic `Exception` type, which makes it difficult to handle different types of errors specifically. 

## Solution

The `bugSolution.dart` file shows the improved code. It uses more specific exception types, such as `HttpException` for HTTP errors, allowing for better error handling and easier debugging.