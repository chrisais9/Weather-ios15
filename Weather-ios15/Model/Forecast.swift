//
//  Forecast.swift
//  Weather-ios15
//
//  Created by chris on 2021/11/02.
//

import SwiftUI


struct DayForecast: Identifiable {
    var id = UUID().uuidString
    var day: String
    var celcius: CGFloat
    var image: String
}

var forecast = [
    DayForecast(day: "Today", celcius: 32, image: "sun.min"),
    DayForecast(day: "Wed", celcius: 30, image: "cloud.sun"),
    DayForecast(day: "Tue", celcius: 22, image: "cloud.sun.bolt"),
    DayForecast(day: "Thu", celcius: 31, image: "sun.max"),
    DayForecast(day: "Fri", celcius: 29, image: "cloud.sun"),
    DayForecast(day: "Sun", celcius: 28, image: "cloud.sun"),
    DayForecast(day: "Mon", celcius: 32, image: "sun.max"),
    DayForecast(day: "Today", celcius: 34, image: "sun.max"),
    DayForecast(day: "Today", celcius: 30, image: "sun.min"),
]

