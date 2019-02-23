//
//  SwordBehaviour.swift
//  ObserverPattern
//
//  Created by Görkem Oktay on 19.02.2019.
//  Copyright © 2019 Görkem Oktay. All rights reserved.
//

class CriticalStrikeBehaviour: IWeaponBehaviour {
    
    func calculateDamage(minimum: Int) -> Int {
        
        let isCritical = Int.random(in: 0 ... 100)
        
        if isCritical > 70 {
            print("Critical Strike!!!")
            return minimum * 3
        } else {
            return minimum
        }
    }
}
