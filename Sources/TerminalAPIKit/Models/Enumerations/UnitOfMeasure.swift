//
//  UnitOfMeasure.swift
//  TerminalAPIKit
//
//  Copyright (c) 2022 Adyen N.V.
//

import Foundation

public enum UnitOfMeasure: String, Codable {
    case `case` = "Case"
    case foot = "Foot"
    case ukGallon = "UKGallon"
    case usGallon = "USGallon"
    case gram = "Gram"
    case inch = "Inch"
    case kilogram = "Kilogram"
    case pound = "Pound"
    case meter = "Meter"
    case centimetre = "Centimetre"
    case litre = "Litre"
    case centilitre = "Centilitre"
    case ounce = "Ounce"
    case quart = "Quart"
    case pint = "Pint"
    case mile = "Mile"
    case kilometre = "Kilometre"
    case yard = "Yard"
    case other = "Other"
}
