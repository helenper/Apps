//
//  calculations.swift
//  knitt_help
//
//  Created by Helén Persson on 11/11/2020.
//  Copyright © 2020 Helén Persson. All rights reserved.
//

import SwiftUI

func stitchCalc(stitch_start: String, stitch_change: String ) -> (Float, String){
  
    if (stitch_start != "" && stitch_change != ""){
        let change = Float(stitch_start)! / Float(stitch_change)!
        let msg = ""
        return (change, msg)
    } else {
        let change = Float(0)
        let msg:String = "Something went wrong"
        return (change, msg)
    }
}

func outputCalc(type_change: String, change: Float) -> String {
    var output: String
    var c:Float = change
    if !change.isNaN {
        switch type_change {
        case  "Increase":
            if c.rounded(.down) == c.rounded(.up) {
                output = "Calculation: \(c). This means you should increase every \(Int(c.rounded(.down))) stitch(es)."
            } else {

                output = "Calculation: \(c). You should increase every \(Int(c.rounded(.down))) stitch and every \(Int(c.rounded(.up))) stitch"
            }
        case "Decrease":
            output = "Something decrease"
        default:
            output = "Something went wrong"
    }
        return output
    } else {
        output = "Something whent wrong. Number of stitches is NaN."
        return output
    }
    
}

struct calculations: View {
    var method = ["Increase", "Decrease"]
    @State private var selectedMethodIndex = 0
    @State private var numOfstitches = ""
    @State private var numOfchange = ""
    //@State private var numOfstitches: String? = "0"//nil//? = "0"
    //@State private var numOfchange: String? = "0" //nil // ? = "0"
    
    var body: some View {
        VStack{
            Picker(selection: $selectedMethodIndex, label: Text("Method")) {
                            ForEach(0 ..< method.count) {
                                Text(self.method[$0])
                            }
                        .pickerStyle(WheelPickerStyle())
                    }
                    .frame(height: 100)
            
                                VStack {
                                   
                                    if selectedMethodIndex==0{
                                        HStack {
                                            Text("No. of stitches start")
                                            TextField("0", text: $numOfstitches)
                                                .frame(width: 50)
                                                .border(Color.black)
                                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                                .keyboardType(.numberPad)
            
                                        }
                                        HStack {
                                            Text("No. of stitches to increase")
                                            TextField("0",text: $numOfchange)
                                                .frame(width: 50)
                                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                                .keyboardType(.numberPad)
            
                                        }
                                    }
                                    else{
                                        HStack {
                                            Text("No. of stitches start")
                                            TextField("0", text: $numOfstitches)
                                                .frame(width: 50)
                                                .border(Color.black)
                                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                                .keyboardType(.numberPad)
                                            
            
                                        }
                                        HStack {
                                            Text("No. of stitches to decrease")
                                            TextField("0", text: $numOfchange)
                                                .frame(width: 50)
                                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                                .keyboardType(.numberPad)
                                        }
                                    }
                                
                                    
                                    let calcOutput = stitchCalc(stitch_start: numOfstitches, stitch_change: numOfchange)
                                    
                                    if calcOutput.1 == "" {
                                        //Text("\(calcOutput.0)")
            
                                        let output = outputCalc(type_change: method[selectedMethodIndex], change: calcOutput.0)
            
                                        Text("\(output)")
                                    } else {
                                        Text("Please enter numbers to begin calculations.")
                                    }
                                }
                                
        }
        
    }}


struct calculations_Previews: PreviewProvider {
    static var previews: some View {
        calculations()
    }
}
