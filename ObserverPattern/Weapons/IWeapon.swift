//
//  IWeapon.swift
//  ObserverPattern
//
//  Created by Görkem Oktay on 19.02.2019.
//  Copyright © 2019 Görkem Oktay. All rights reserved.
//

class IWeapon {
    
    var mType: String
    var type: String {
        set { mType = newValue}
        get { return mType }
    }
    
    var mDamage: Int
    var damage: Int {
        set { mDamage = newValue }
        get { return mDamage }
    }
    
    var mBehaviour: IWeaponBehaviour
    var behaviour: IWeaponBehaviour {
        set { mBehaviour = newValue }
        get { return mBehaviour }
    }
    
    init(type: String, damage: Int, behaviour: IWeaponBehaviour) {
        mType = type
        mDamage = damage
        mBehaviour = behaviour
    }
    
    func calculateDamage() -> Int {
        return behaviour.calculateDamage(minimum: damage)
    }
}
