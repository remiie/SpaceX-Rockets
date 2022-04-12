import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let spaceXRockets = try? newJSONDecoder().decode(SpaceXRockets.self, from: jsonData)

import Foundation

// MARK: - SpaceXRocket

typealias SpaceXRockets = [SpaceXRocket]

// MARK: - SpaceXRocket
struct SpaceXRocket: Codable {
    let height, diameter: Diameter?
    let mass: Mass?
    let firstStage: FirstStage?
    let secondStage: SecondStage?
    let engines: Engines?
    let landingLegs: LandingLegs?
    let payloadWeights: [PayloadWeight]?
    let flickrImages: [String]?
    let name, type: String?
    let active: Bool?
    let stages, boosters, costPerLaunch, successRatePct: Int?
    let firstFlight, country, company: String?
    let wikipedia: String?
    let spaceXRocketDescription, id: String?

    enum CodingKeys: String, CodingKey {
        case height, diameter, mass
        case firstStage = "first_stage"
        case secondStage = "second_stage"
        case engines
        case landingLegs = "landing_legs"
        case payloadWeights = "payload_weights"
        case flickrImages = "flickr_images"
        case name, type, active, stages, boosters
        case costPerLaunch = "cost_per_launch"
        case successRatePct = "success_rate_pct"
        case firstFlight = "first_flight"
        case country, company, wikipedia
        case spaceXRocketDescription = "description"
        case id
    }
}

// MARK: - Diameter
struct Diameter: Codable {
    let meters, feet: Double?
}

// MARK: - Engines
struct Engines: Codable {
    let isp: ISP?
    let thrustSeaLevel, thrustVacuum: Thrust?
    let number: Int?
    let type, version: String?
    let layout: String?
    let engineLossMax: Int?
    let propellant1, propellant2: String?
    let thrustToWeight: Double?

    enum CodingKeys: String, CodingKey {
        case isp
        case thrustSeaLevel = "thrust_sea_level"
        case thrustVacuum = "thrust_vacuum"
        case number, type, version, layout
        case engineLossMax = "engine_loss_max"
        case propellant1 = "propellant_1"
        case propellant2 = "propellant_2"
        case thrustToWeight = "thrust_to_weight"
    }
}

// MARK: - ISP
struct ISP: Codable {
    let seaLevel, vacuum: Int?

    enum CodingKeys: String, CodingKey {
        case seaLevel = "sea_level"
        case vacuum
    }
}

// MARK: - Thrust
struct Thrust: Codable {
    let kN, lbf: Int?
}

// MARK: - FirstStage
struct FirstStage: Codable {
    let thrustSeaLevel, thrustVacuum: Thrust?
    let reusable: Bool?
    let engines: Int?
    let fuelAmountTons: Double?
    let burnTimeSEC: Int?

    enum CodingKeys: String, CodingKey {
        case thrustSeaLevel = "thrust_sea_level"
        case thrustVacuum = "thrust_vacuum"
        case reusable, engines
        case fuelAmountTons = "fuel_amount_tons"
        case burnTimeSEC = "burn_time_sec"
    }
}

// MARK: - LandingLegs
struct LandingLegs: Codable {
    let number: Int?
    let material: String?
}

// MARK: - Mass
struct Mass: Codable {
    let kg, lb: Int?
}

// MARK: - PayloadWeight
struct PayloadWeight: Codable {
    let id, name: String?
    let kg, lb: Int?
}

// MARK: - SecondStage
struct SecondStage: Codable {
    let thrust: Thrust?
    let payloads: Payloads?
    let reusable: Bool?
    let engines: Int?
    let fuelAmountTons: Double?
    let burnTimeSEC: Int?

    enum CodingKeys: String, CodingKey {
        case thrust, payloads, reusable, engines
        case fuelAmountTons = "fuel_amount_tons"
        case burnTimeSEC = "burn_time_sec"
    }
}

// MARK: - Payloads
struct Payloads: Codable {
    let compositeFairing: CompositeFairing?
    let option1: String?

    enum CodingKeys: String, CodingKey {
        case compositeFairing = "composite_fairing"
        case option1 = "option_1"
    }
}

// MARK: - CompositeFairing
struct CompositeFairing: Codable {
    let height, diameter: Diameter?
}







//-------------------------------------------

// MARK: - Test Data
struct RocketData {
    var generalName: String = ""
    var imageName: String = ""
    var launchDate: String = ""
    var countryName: String = ""
    var launchCost: Int = 0
    let firstStage = "ПЕРВАЯ СТУПЕНЬ"
    var firstStageEngines: Int = 0
    var firstStageFuel: Int = 0
    var firstStageBurningTime = 0
    let secondStage = "ВТОРАЯ СТУПЕНЬ"
    var secondStageEngines: Int = 0
    var secondStageFuel: Int = 0
    var secondStageBurningTime = 0
    //var launchList = String
    let rocketLaunchesButton:String = "Посмотреть запуски"
    
    init(generalName: String, imageName: String, launchDate: String, countryName: String, launchCost: Int, firstStageEngines: Int, firstStageFuel: Int, firstStageBurningTime: Int, secondStageEngines: Int, secondStageFuel: Int, secondStageBurningTime: Int) {
        self.generalName = generalName
        self.imageName = imageName
        self.launchDate = launchDate
        self.countryName = countryName
        self.launchCost = launchCost
        self.firstStageEngines = firstStageEngines
        self.firstStageFuel = firstStageFuel
        self.firstStageBurningTime = firstStageBurningTime
        self.secondStageEngines = secondStageEngines
        self.secondStageFuel = secondStageFuel
        self.secondStageBurningTime = secondStageBurningTime
    }

}

class LaunchesData {
    var name: String = ""
    init(name: String) {
        self.name = name
    }
}



