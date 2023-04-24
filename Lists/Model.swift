//
//  Model.swift
//  Lists
//
//  Created by Pierre Juarez U. on 24/04/23.
//

import Foundation

struct Model: Identifiable {
    let id = UUID()
    let emoji: String
    let name: String
    let descriptionModel: String
}

let dataList : [Model] = [
    Model(
        emoji: "🙋🏼‍♂️",
        name: "Mano alzada",
        descriptionModel: "Persona que levanta la mano para preguntar."),
    Model(
        emoji: "🥑",
        name: "Aguacate",
        descriptionModel: "El aguacate es un fruto exótico carnoso que se obtiene del árbol tropical del mismo nombre. En algunas partes de América del Sur se conoce como Palta.."),
    Model(
        emoji: "🍕",
        name: "Pizza",
        descriptionModel: "Comida chatarra creada en Italia."),
    Model(
        emoji: "🧩",
        name: "Pieza de rompecabezas",
        descriptionModel: "Los rompecabezas o puzzles son piezas comúnmente planas que combinadas correctamente forman una figura, un objeto o una escena. ... Por diversión, entretenimiento o como una forma de relajarse"),
    Model(
        emoji: "🗽",
        name: "Estatua de la Libertad",
        descriptionModel: "Estatua ubicada en Nuva York.")
]
