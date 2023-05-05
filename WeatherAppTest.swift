//
//  WeatherAppTest.swift
//  WeatherAppTests
//
//  Created by Cengizhan Tomak on 6.05.2023.
//

import XCTest
@testable import WeatherApp

class WeatherAppTest: XCTestCase {
    
    func testParseWeather() throws{
        let json = """
          {
            "weather": [
               {
                  "id": 500,
                  "description": "light rain",
                      }
            ],
            "main": {
              "temp": 10.11,
            },
            "name": "Kayseri"
          }
         """
        
        let jsonData = json.data(using: .utf8)!
        let weatherModel = try! JSONDecoder().decode(WeatherModel.self, from: jsonData)
        XCTAssertEqual(10.11, weatherModel.main.temp)
    }
    
    func testNoCityName()throws{
        let json = """
          {
            "weather": [
               {
                  "id": 500,
                  "description": "light rain",
                      }
            ],
            "main": {
              "temp": 10.11,
            },
            "name": ""
          }
         """
        
        let jsonData = json.data(using: .utf8)!
        let weatherModel = try! JSONDecoder().decode(WeatherModel.self, from: jsonData)
        XCTAssertEqual("", weatherModel.name)
    }
}
