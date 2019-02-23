//
//  Dagger.swift
//  ObserverPattern
//
//  Created by Görkem Oktay on 19.02.2019.
//  Copyright © 2019 Görkem Oktay. All rights reserved.
//

class Dagger: IWeapon {
    
    init() {
        super.init(type: "Dagger", damage: 4, behaviour: DoubleStrikeBehaviour())
    }
}
