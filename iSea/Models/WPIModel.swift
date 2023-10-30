//
//  WPIModel.swift
//  iSea
//
//  Created by Ilaria Poziello on 30/10/23.
//

import Foundation

class WPICalculator {
    private static func calculateLaundry(input: String) -> Double {
        switch(input) {
            // nel caso di input con "min", usa direttamente: case "5 min" ecc.
        case "1":
            return 0.36 // questi sono i kg associati a un singolo load di laundry
        case "2":
            return 0.72
        case "3":
            return 1.08
        case "4":
            return 1.44
        case "5":
            return 1.80
        case "6":
            return 2.16
            
        default:
            return 0.00
        }
    }
    
    private static func calculateShowering(input: String) -> Double {
        switch(input) {
            // nel caso di input con "min", usa direttamente: case "5 min" ecc.
        case "5 min":
            return 4.00 // questi sono i kg associati a un singolo load di laundry
        case "10 min":
            return 8.00
        case "15 min":
            return 12.00
        case "20 min":
            return 16.00
        case "25 min":
            return 20.00
        case "30 min":
            return 24.00
            
        default:
            return 0.00
        }
    }
    
    private static func calculateDishes(input: String) -> Double {
        switch(input) {
            // nel caso di input con "min", usa direttamente: case "5 min" ecc.
        case "5 min":
            return 0.25 // questi sono i kg associati a un singolo load di laundry
        case "10 min":
            return 0.5
        case "15 min":
            return 0.75
        case "20 min":
            return 1.00
        case "25 min":
            return 1.25
        case "30 min":
            return 1.50
            
        default:
            return 0.00
        }
    }
    
    private static func calculateCleaning(input: String) -> Double {
        switch(input) {
            // nel caso di input con "min", usa direttamente: case "5 min" ecc.
        case "1":
            return 0.36 // questi sono i kg associati a un singolo load di laundry
        case "2":
            return 0.72
        case "3":
            return 1.08
        case "4":
            return 1.44
        case "5":
            return 1.80
        case "6":
            return 2.16
            
        default:
            return 0.00
        }
        
        
        
        
        // Dopo aver implementato tutti e 4 quelli sopra, questo ti calcola in base al nome dell'impact (quello che sta nel DB, tipo "laundry", "dishes" etc.):
        func calculate(impactName: String, impactValue: String) -> Double {
            switch(impactName) {
            case "laundry":
                return calculateLaundry(input: impactValue)
            case "dishes":
                return calculateDishes(input: impactValue)
            case "shower":
                return calculateShowering(input: impactValue)
            case "cleaning":
                return calculateCleaning(input: impactValue)
            default:
                return 0
            }
        }
    }
}
