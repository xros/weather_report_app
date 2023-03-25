Weather Report App written in Dart
==========================

A Command Line Weather Report App Written in Dart Language

[![Dart-Compile-Linux-AMD64](https://github.com/xros/weather_report_app/actions/workflows/dart-linux-amd64.yml/badge.svg)](https://github.com/xros/weather_report_app/actions/workflows/dart-linux-amd64.yml)

[![Dart-Compile-MacOS-AMD64](https://github.com/xros/weather_report_app/actions/workflows/dart-macos-amd64.yml/badge.svg)](https://github.com/xros/weather_report_app/actions/workflows/dart-macos-amd64.yml)

[![Dart-Compile-Windows-AMD64](https://github.com/xros/weather_report_app/actions/workflows/dart-windows-amd64.yml/badge.svg)](https://github.com/xros/weather_report_app/actions/workflows/dart-windows-amd64.yml)

Linux/ARM64[![Dart-Compile-Linux-ARM64](https://circleci.com/gh/xros/weather_report_app/tree/main.svg?style=svg)](https://circleci.com/gh/xros/weather_report_app/tree/main)

Usage
-----
For example, get Weather report of the city Berlin. In console, do `./weather_report.exe Berlin`

```
  City: Berlin
  Weather State: Light Cloud
  Max Temp: 3.73
  Min Temp: -0.29
  Current Temp: 2.96
```
Temperature unit is Celsius.

Build Binary
-----

`dart compile exe bin/main.dart -o weather_report.exe`

Show case
----------
Linux, MacOS, Windows

<img width="975" alt="iShot2022-01-17 04 40 35" src="https://user-images.githubusercontent.com/2342412/149688520-22aaf83a-19cb-473c-a340-290f6134d2bc.png">

<img width="957" alt="iShot2022-01-17 04 47 36" src="https://user-images.githubusercontent.com/2342412/149688536-3533a10b-4b1a-46b3-b310-ba1e31b6a394.png">

## Diagram of this software
![Diagram of weather report app](output-diagram.svg)
