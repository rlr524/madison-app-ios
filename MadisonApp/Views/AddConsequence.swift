//
//  AddView.swift
//  MadisonApp
//
//  Created by Rob Ranf on 11/7/24.
//

import SwiftUI

enum ConsequenceType: String, CaseIterable, Identifiable {
    case corporalPunishment, grounding, lossOfPrivileges, timeout, lossOfAccess, lossOfUse, lossOfFun, earlyBedtime, reprimand, extraChores, other
    var id: Self { self }
}

enum Implementor: String, CaseIterable, Identifiable {
    case mom, dad, grandma, grandpa, teacher, counselor, other
    var id: Self { self }
}

enum Misbehavior: String, CaseIterable, Identifiable {
    case backtalk, lying, hitting, yelling, throwingSomething, disrespect, cheating,
         stealing, intentionalDefiance, poorAttitude, cursing, misuseTechnology, missingSchoolAssignments, poorSchoolResults, carelessness, other
    var id: Self { self }
}

enum Severity: String, CaseIterable, Identifiable {
    case mild, moderate, severe
    var id: Self { self }
}

struct AddConsequence: View {
    @State private var date = Date()
    @State private var childName = ""
    @State private var consequence: String = ""
    @State private var type: ConsequenceType = .corporalPunishment
    @State private var implementor: Implementor = .mom
    @State private var misbehavior: Misbehavior = .backtalk
    @State private var severity: Severity = .mild

    var body: some View {
        VStack() {
            List {
                DatePicker("Date", selection: $date, displayedComponents: [.date])
                TextField("Child's Name", text: $childName)
                Picker("Misbehavior", selection: $misbehavior) {
//                    ForEach(Misbehavior.allCases) { misbehavior in
//                        Text(misbehavior.rawValue).tag(misbehavior)
                    Text("Backtalk").tag(Misbehavior.backtalk)
                    Text("Lying").tag(Misbehavior.lying)
                    Text("Hitting").tag(Misbehavior.hitting)
                    Text("Yelling").tag(Misbehavior.yelling)
                    Text("Throwing Something").tag(Misbehavior.throwingSomething)
                    Text("Disrespect").tag(Misbehavior.disrespect)
                    Text("Cheating").tag(Misbehavior.cheating)
                    Text("Stealing").tag(Misbehavior.stealing)
                    Text("Intentional Defiance").tag(Misbehavior.intentionalDefiance)
                    Text("Other").tag(Misbehavior.other)
                    }
                Picker("Consequence", selection: $type) {
                    Text("Corporal Punishment").tag(ConsequenceType.corporalPunishment)
                    Text("Grounding").tag(ConsequenceType.grounding)
                }
                TextField("Description", text: $consequence, axis: .vertical)
                Picker("Severity", selection: $severity) {
                    Text("Mild").tag(Severity.mild)
                    Text("Moderate").tag(Severity.moderate)
                    Text("Severe").tag(Severity.severe)
                }
                Picker("Imposed By", selection: $implementor) {
                    Text("Mom").tag(Implementor.mom)
                    Text("Dad").tag(Implementor.dad)
                }
                }
            }
        }
    }

#Preview {
    AddConsequence()
}
