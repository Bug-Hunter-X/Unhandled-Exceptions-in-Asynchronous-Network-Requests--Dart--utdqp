# Unhandled Exceptions in Asynchronous Network Requests (Dart)

This repository demonstrates a common error in Dart: failing to properly handle exceptions during asynchronous network operations using the `http` package. The `bug.dart` file contains code that fetches data from a remote API but lacks robust error handling.  The `bugSolution.dart` file provides an improved version with more comprehensive error handling and better exception management. 

## Bug Description

The original code attempts to fetch data from a remote API. However, it only handles the case where the HTTP request returns a status code of 200.  It does not handle network errors, server errors (non-200 status codes), or JSON decoding exceptions. This can lead to application crashes or unexpected behavior.

## Solution

The solution demonstrates how to correctly handle exceptions using `try-catch` blocks and providing more specific error handling for different scenarios. It also demonstrates how to rethrow the exception to handle the exception at a higher level.
