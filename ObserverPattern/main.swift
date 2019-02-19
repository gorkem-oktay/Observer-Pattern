//
//  main.swift
//  ObserverPattern
//
//  Created by Görkem Oktay on 19.02.2019.
//  Copyright © 2019 Görkem Oktay. All rights reserved.
//

let ourKnight: ICharacter = Knight()
ourKnight.name = "Zafiru"
ourKnight.weapon = Dagger()

if let knightsName = ourKnight.name {
    print("\(knightsName), travels across countries to live an adventures life...")
} else {
    print("Our knight, travels across countries to live an adventures life...");
}

let evilGoblin: ICharacter = Goblin()
evilGoblin.weapon = Club()

print("Than suddenly a \(evilGoblin.type) appears.")
print("And attacks \(ourKnight.type)")

evilGoblin.hit(to: ourKnight)

if let knightsName = ourKnight.name {
    print("\(knightsName) tries to fight back")
} else {
    print("Our knight tries to fight back")
}

ourKnight.hit(to: evilGoblin)

print("But he couldn't inflict much damage")
print("then he saw a sword on the ground and grabs it")

ourKnight.weapon = Sword()

print("And fearlessly attack \(evilGoblin.type)")

ourKnight.hit(to: evilGoblin)
