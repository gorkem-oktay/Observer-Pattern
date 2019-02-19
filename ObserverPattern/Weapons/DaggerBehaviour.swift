//
//  DaggerBehaviour.swift
//  ObserverPattern
//
//  Created by Görkem Oktay on 19.02.2019.
//  Copyright © 2019 Görkem Oktay. All rights reserved.
//

class DaggerBehaviour: IWeaponBehaviour {
    
    func calculateDamage(minimum: Int) -> Int {
        
        let isDoubleStrike = Int.random(in: 0 ... 100)
        
        if isDoubleStrike > 30 {
            print("Double Strike!!!")
            return minimum * 2
        } else {
            return minimum
        }
    }
}
