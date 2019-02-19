//
//  ICharacter.swift
//  ObserverPattern
//
//  Created by Görkem Oktay on 19.02.2019.
//  Copyright © 2019 Görkem Oktay. All rights reserved.
//

class ICharacter {
    
    private var mName: String?
    var name: String? {
        set { mName = newValue }
        get { return mName }
    }
    
    private var mType: String
    var type: String {
        set { mType = newValue }
        get { return mType }
    }
    
    private var mWeapon: IWeapon?
    var weapon: IWeapon? {
        set { mWeapon = newValue }
        get { return mWeapon }
    }
    
    private var mHealth: Health
    var health: Health {
        set { mHealth = newValue }
        get { return mHealth }
    }
    
    init(type: String, health: Int) {
        mType = type
        mHealth = Health(value: health)
        mHealth.addObserver(observer: HealthBar(name: type))
    }
    
    func hit(to: ICharacter) {
        if let oWeapon = weapon {
            let damage = oWeapon.calculateDamage()
            to.health.decrease(value: damage)
        } else {
            print("No equipped weapon")
        }
    }
}
