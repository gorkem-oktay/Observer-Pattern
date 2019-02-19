//
//  Sword.swift
//  ObserverPattern
//
//  Created by Görkem Oktay on 19.02.2019.
//  Copyright © 2019 Görkem Oktay. All rights reserved.
//

class Sword: IWeapon {
    
    init() {
        super.init(type: "Sword", damage: 10, behaviour: SwordBehaviour())
    }
}
