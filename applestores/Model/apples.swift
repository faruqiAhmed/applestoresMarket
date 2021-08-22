//
//  apples.swift
//  applestores
//
//  Created by Md Omar Faruq on 8/21/21.
//

import Foundation
 import SwiftUI

struct Applestore: Codable {
    let storeNo, storeName: String
    let addressDetails: AddressDetails
    let openHours: [String: OpenHour]
    let flagshipName: FlagshipName?
    let regionName: RegionName?
    let storePhotoURL: String
    let shoppingCenterName: String
    let timezone: Timezone?
    let geoCode: Int?
    let countryName: CountryName?

    enum CodingKeys: String, CodingKey {
        case storeNo = "store_no"
        case storeName = "store_name"
        case addressDetails = "address_details"
        case openHours = "open_hours"
        case flagshipName = "flagship_name"
        case regionName = "region_name"
        case storePhotoURL = "store_photo_url"
        case shoppingCenterName = "shopping_center_name"
        case timezone, geoCode
        case countryName = "country_name"
    }
}

// MARK: - AddressDetails
struct AddressDetails: Codable {
    let addressLine, cityName: String
    let stateName: String?
    let countryName: CountryName
    let zipCode: String?
    let address2: Address2?
    let stateCode: StateCode?

    enum CodingKeys: String, CodingKey {
        case addressLine = "address_line"
        case cityName = "city_name"
        case stateName = "state_name"
        case countryName = "country_name"
        case zipCode = "zip_code"
        case address2, stateCode
    }
}

enum Address2: String, Codable {
    case calleMeFaltaUnTornillo5 = "Calle Me falta un tornillo, 5"
    case downtown = "Downtown"
    case viaPortico71 = "Via Portico, 71"
}

enum CountryName: String, Codable {
    case canada = "Canada"
    case chinaMainland = "China mainland"
    case france = "France"
    case germany = "Germany"
    case italy = "Italy"
    case singapore = "Singapore"
    case spain = "Spain"
    case turkey = "Turkey"
    case unitedArabEmirates = "United Arab Emirates"
    case unitedKingdom = "United Kingdom"
    case unitedStates = "United States"
}

enum StateCode: String, Codable {
    case wa = "WA"
}

enum FlagshipName: String, Codable {
    case appleStoreCanada = "Apple Store Canada"
    case appleStoreChinaAR183 = "Apple Store China (AR183)"
    case appleStoreChinaAR186 = "Apple Store China (AR186)"
    case appleStoreFrance = "Apple Store France"
    case appleStoreGermany = "Apple Store Germany"
    case appleStoreItaly = "Apple Store Italy"
    case appleStoreSingapore = "Apple Store Singapore"
    case appleStoreSpain = "Apple Store Spain"
    case appleStoreTurkey = "Apple Store Turkey"
    case appleStoreUAE = "Apple Store UAE"
    case appleStoreUSA = "Apple Store USA"
}

// MARK: - OpenHour
struct OpenHour: Codable {
    let startingTime: StartingTime
    let closingTime: ClosingTime
    let notes: String?

    enum CodingKeys: String, CodingKey {
        case startingTime = "starting_time"
        case closingTime = "closing_time"
        case notes
    }
}

enum ClosingTime: String, Codable {
    case the0000 = "00:00"
    case the1700 = "17:00"
    case the1800 = "18:00"
    case the1900 = "19:00"
    case the2000 = "20:00"
    case the2030 = "20:30"
    case the2100 = "21:00"
    case the2130 = "21:30"
    case the2200 = "22:00"
    case the2359 = "23:59"
}

enum StartingTime: String, Codable {
    case the0000 = "00:00"
    case the0900 = "09:00"
    case the1000 = "10:00"
    case the1100 = "11:00"
    case the1200 = "12:00"
}

enum RegionName: String, Codable {
    case americas = "Americas"
    case asiaPac = "Asia/Pac"
    case emeia = "EMEIA"
}

enum Timezone: String, Codable {
    case americaLosAngeles = "America/Los_Angeles"
    case asiaShanghai = "Asia/Shanghai"
    case europeRome = "Europe/Rome"
}

typealias Apple = [Applestore]

