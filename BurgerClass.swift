//
//  BurgerClass.swift
//  burgerStore
//
//  Created by STEVEN HOBERG on 10/14/22.
//

import Foundation
public class Burger{
    var ketchup: Bool
    var patty: Int
    var bbqsauce: Bool
    var mushroom: Bool
    var lettuce: Bool
    var tomato: Bool
    var onion: Bool
    var bacon: Bool
    var mayo: Bool
    var cheese: Bool
    init(ketchup: Bool, patty: Int, bbqsauce: Bool, mushroom: Bool, lettuce: Bool, tomato: Bool, onion: Bool, bacon: Bool, mayo: Bool, cheese: Bool){
        self.ketchup = ketchup // self refers to global level varable
        self.patty = patty
        self.bbqsauce = bbqsauce
        self.mushroom = mushroom
        self.lettuce = lettuce
        self.tomato = tomato
        self.onion = onion
        self.bacon = bacon
        self.mayo = mayo
        self.cheese = cheese
    }
    init(){
        ketchup = false
        patty = 1
        bbqsauce = false
        mushroom = false
        lettuce = false
        tomato = false
        onion = false
        bacon = false
        mayo = false
        cheese = false
    }
    
}
