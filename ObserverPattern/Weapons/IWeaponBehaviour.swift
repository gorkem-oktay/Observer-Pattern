//
//  IWeaponBehaviour.swift
//  ObserverPattern
//
//  Created by Görkem Oktay on 19.02.2019.
//  Copyright © 2019 Görkem Oktay. All rights reserved.
//

protocol IWeaponBehaviour {
    
    func calculateDamage(minimum: Int) -> Int
}
