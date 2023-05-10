//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Aigerim Abitayeva on 02.05.2023.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
