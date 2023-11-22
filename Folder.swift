import SwiftUI
import UIKit


struct Folder: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let holdGroups: [String]
    var holds: [Hold] = []

    struct Hold: Identifiable {
        let id = UUID()
        let name: String
        let holdType: String
    }

    var holdSubarrays: [String: [Hold]] {
            var subarrays = [String: [Hold]]()
            for group in holdGroups {
                if let numHolds = predeterminedHolds[group] {
                    subarrays[group] = (1...numHolds).map { index in
                        Hold(name: "\(group) \(index)", holdType: "Jug")
                    }
                } else {
                    let imageNames = Bundle.main.paths(forResourcesOfType: "jpg", inDirectory: nil).map { URL(fileURLWithPath: $0).deletingPathExtension().lastPathComponent }
                    let holds = imageNames.filter { $0.contains(group) }.map { imageName in
                        Hold(name: imageName, holdType: "Jug")
                    }
                    subarrays[group] = holds
                }
            }
            return subarrays
        }


    private let predeterminedHolds = [
        //Kingdom Climbing
        "Avalanches": 24,
        "Butcher Blocks": 20,
        "Chickenheads": 24,
        "Chubby Jugs": 15,
        "Cobbles": 33,
        "Contours": 32,
        "Cow Pies": 28,
        "Dragon Balls": 32,
        "DT Wafers": 110,
        "Dual Texture Granites": 33,
        "Erosion Slopers": 7,
        "Erosions": 33,
        "Fat Rolls": 27,
        "Finisters": 23,
        "Flanges": 23,
        "Flintsone Jugs": 27,
        "Flintstones": 23,
        "Fractals": 35,
        "Fragments": 38,
        "Frog Lips": 23,
        "Geo Jugs": 23,
        "Grappling Hooks": 15,
        "Hatchet Wacks": 26,
        "Hobbit Holes": 28,
        "Huecos": 3,
        "Jousting Jugs": 40,
        "Love Handles": 23,
        "Lugs": 24,
        "Plates": 16,
        "Pock Rocks": 24,
        "ROK BLOKS": 41,
        "The Slots": 16,
        "True Tufa": 25,
        "True Tufa Drips": 5,
        "Tugs": 50,
        "Tunnel Limestone": 39,
        "Voids": 23,
        "Wafers": 33,
        //Teknik Handholds
        "Alto": 10,
        "Aphids": 10,
        "Arithmetics": 5,
        "Arnold Muscle": 1,
        "2": 3,
        // more holdGroups
    ]
}


struct FolderList {
    
    static let brands = [
        Folder(imageName: "Kingdom Climbing Logo",
              title: "Kingdom Climbing",
               holdGroups: ["Avalanches", "Butcher Blocks", "Chickenheads", "Chubby Jugs", "Cobbles", "Contours", "Cow Pies", "Dragon Balls", "DT Wafers", "Dual Texture Granites", "Erosion Slopers", "Erosions", "Fat Rolls", "Finisters", "Flanges", "Flintstone Jugs", "Flintstones", "Fractals", "Fragments", "Frog Lips", "Geo Jugs", "Grappling Hooks", "Hatchet Wacks", "Hobbit Holes", "Huecos", "Jousting Jugs", "Love Handles", "Lugs", "Plates", "Pock Rocks", "ROK BLOKS", "The Slots", "True Tufa", "True Tufa Drips", "Tugs", "Tunnel Limestone", "Voids", "Wafers"]),
        Folder(imageName: "Teknik Handholds Logo",
              title: "Teknik Handholds",
               holdGroups: ["Alto", "Aphids", "Arithmetics", "Arnold Muscle"]),
        Folder(imageName: "360 Holds Logo",
              title: "360 Holds",
               holdGroups: ["1", "2", "3"]),
        Folder(imageName: "Blocz Logo",
              title: "Blocz Climbing",
               holdGroups: ["1", "2", "3"]),
        Folder(imageName: "Blue Pill Logo",
              title: "Blue Pill",
               holdGroups: ["1", "2", "3"]),
        Folder(imageName: "Capital Climbing Logo",
              title: "Capital Climbing",
               holdGroups: ["1", "2", "3"]),
        Folder(imageName: "Cheeta Logo",
              title: "Cheeta",
               holdGroups: ["1", "2", "3"]),
        Folder(imageName: "Decoy Climbing Holds Logo",
              title: "Decoy Climbing Holds",
               holdGroups: ["4", "5", "6"]),
        Folder(imageName: "Dimension Logo",
              title: "Dimension",
               holdGroups: ["4", "5", "6"]),
        Folder(imageName: "Element Climbing Logo",
              title: "Element Climbing",
               holdGroups: ["7", "8", "9"]),
        Folder(imageName: "Enix Climbing Logo",
              title: "Enix Climbing",
               holdGroups: ["10", "11", "12"]),
        Folder(imageName: "Entre Prises Climbing Logo",
              title: "Entre Prises Climbing",
               holdGroups: ["10", "11", "12"]),
        Folder(imageName: "Escape Climbing Logo",
              title: "Escape Climbing",
               holdGroups: ["10", "11", "12"]),
        Folder(imageName: "Expression Holds Logo",
              title: "Expression Holds",
               holdGroups: ["10", "11", "12"]),
        Folder(imageName: "Flathold Logo",
              title: "Flathold",
               holdGroups: ["13", "14", "15"]),
        Folder(imageName: "Kilter Grips Logo",
              title: "Kilter Grips",
               holdGroups: ["16", "17", "18"]),
        //Kingdom Climbing
        Folder(imageName: "Morpho Logo",
              title: "Morpho",
               holdGroups: ["16", "17", "18"]),
        Folder(imageName: "Pusher Logo",
              title: "Pusher",
               holdGroups: ["16", "17", "18"]),
        Folder(imageName: "Rock Candy Holds Logo",
              title: "Rock Candy Holds",
               holdGroups: ["16", "17", "18"]),
        Folder(imageName: "Simpl. Logo",
              title: "Simpl.",
               holdGroups: ["16", "17", "18"]),
        Folder(imageName: "So iLL Logo",
              title: "So iLL",
               holdGroups: ["16", "17", "18"]),
        Folder(imageName: "Squadra Logo",
              title: "Squadra",
               holdGroups: ["16", "17", "18"]),
        //Teknik Handholds
        Folder(imageName: "Thrive Climbing Logo",
              title: "Thrive Climbing",
               holdGroups: ["16", "17", "18"]),
        Folder(imageName: "Trango:eGrips Logo",
              title: "Trango:eGrips",
               holdGroups: ["16", "17", "18"]),
        Folder(imageName: "Unit Logo",
              title: "Unit",
               holdGroups: ["16", "17", "18"]),
        Folder(imageName: "Working Class Climbing Logo",
              title: "Working Class Climbing",
               holdGroups: ["16", "17", "18"]),
        Folder(imageName: "XCULT Logo",
              title: "XCULT",
               holdGroups: ["19", "20", "21"]),
        
    ]
}

extension Folder {
    func getHoldByName(_ name: String) -> Hold? {
        for group in holdGroups {
            if let holds = holdSubarrays[group], let hold = holds.first(where: { $0.name == name }) {
                return hold
            }
        }
        return nil
    }
}
