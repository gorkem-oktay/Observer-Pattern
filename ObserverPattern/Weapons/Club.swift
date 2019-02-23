//
//  Club.swift
//  ObserverPattern
//
//  Created by Görkem Oktay on 19.02.2019.
//  Copyright © 2019 Görkem Oktay. All rights reserved.
//

class Club: IWeapon {
    
    init() {
        super.init(type: "Club", damage: 8, behaviour: NormalHitBehaviour())
    }
}
