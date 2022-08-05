//
//  MedalViewModel.swift
//  Medal-Case
//
//  Created by Zenitus on 05/08/22.
//

import Foundation
import UIKit

class MedalViewModel {
    
    var sections = [MedalCategory]()

    func fetchMedalDatas() {
        
        let sectionOne : [MedalItems] = [
            MedalItems(image: "longest_run", medalName: "Longest Run", description: "00:00"),
            MedalItems(image: "highest_elevation", medalName: "Highest Elevation", description: "2095 ft"),
            MedalItems(image: "fastest_5k", medalName: "Fastest 5k", description: "00:00"),
            MedalItems(image: "fastest_10k", medalName: "10k", description: "00:00:00"),
            MedalItems(image: "fastest_half_marathon", medalName: "Half Marathon", description: "00:00"),
            MedalItems(image: "fastest_marathon", medalName: "Marathon", description: "Not Yet")
        ]
        
        let sectionTwo : [MedalItems] = [
            MedalItems(image: "virtual_half_marathon_race", medalName: "Virtual Half Marathon Race", description: "00:00"),
            MedalItems(image: "tokyo_kakone_ekiden", medalName: "Tokyo Hakone Ekiden 2020", description: "00:00:00"),
            MedalItems(image: "virtual_10k_race", medalName: "Virtual 10k Race", description: "00:00:00"),
            MedalItems(image: "hakone_ekiden", medalName: "Hakone Ekiden", description: "00:00:00"),
            MedalItems(image: "mizuno_singapore_ekiden", medalName: "Mizuno Singapore Ekiden 2015", description: "00:00:00"),
            MedalItems(image: "virtual_5k_race", medalName: "Virtual 5k Race", description: "23:07")
        ]
        
        sections = [
            MedalCategory(name:"Personal Records", medalItems: sectionOne),
            MedalCategory(name:"Virtual Races", medalItems:sectionTwo)]
    }
    
}
