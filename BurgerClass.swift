//
//  BurgerClass.swift
//  burgerStore
//
//  Created by STEVEN HOBERG on 10/14/22.
//

import Foundation
public class Burger{
    enum btype{
        case cheese,plain,custom,deluxe
    }
    enum burgerDone{
        case blueRare, rare, mediumRare, medium, mediumWell, wellDone
    }
    var ketchup: Bool
    var patty: Int
    var bun: Bool
    var bbqsauce: Bool
    var mushroom: Bool
    var lettuce: Bool
    var tomato: Bool
    var onion: Bool
    var bacon: Bool
    var mayo: Bool
    init(ketchup: Bool, patty: Int, bun: Bool, bbqsauce: Bool, mushroom: Bool, lettuce: Bool, tomato: Bool, onion: Bool, bacon: Bool, mayo: Bool){
        self.ketchup = ketchup // self refers to global level varable
        self.patty = patty
        self.bun = bun
        self.bbqsauce = bbqsauce
        self.mushroom = mushroom
        self.lettuce = lettuce
        self.tomato = tomato
        self.onion = onion
        self.bacon = bacon
        self.mayo = mayo
    }
    init(){
        ketchup = false
        patty = 1
        bun = false
        bbqsauce = false
        mushroom = false
        lettuce = false
        tomato = false
        onion = false
        bacon = false
        mayo = false
    }
    
}
