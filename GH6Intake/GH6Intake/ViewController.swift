//
//  ViewController.swift
//  GH6Intake
//
//  Created by David Guidos on 10/23/16.
//  Copyright © 2016 GuidosLabs. All rights reserved.
//

import UIKit

struct InTakeData {
    var PersonalID: String?
    var HouseholdID: String?
    var Name: String?
    var SSN: String?
    var DOB: String?
    var Race: String?
    var Ethnicity: String?
    var Gender: String?
    var ClientLocationCode: String?
    var VeteranStatus: String?
    var DisablingCondition: String?
    var LastLocationAddress: String?
    var Destination: String?
    var RelationToHOH: String?
    var LengthOfTimeOnStreet: String?
}

class ViewController: UIViewController {

    @IBOutlet weak var PersonalID: UITextField!
    @IBOutlet weak var HouseholdID: UITextField!
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var SSN: UITextField!
    @IBOutlet weak var DOB: UITextField!
    @IBOutlet weak var DOBPicker: UIDatePicker!
    @IBOutlet weak var Race: UITextField!
    @IBOutlet weak var Ethnicity: UITextField!
    @IBOutlet weak var Gender: UITextField!
    @IBOutlet weak var ClientLocationCode: UITextField!
    @IBOutlet weak var VeteranStatus: UITextField!
    @IBOutlet weak var DisablingCondition: UITextField!
    @IBOutlet weak var LastLocationAddress: UITextField!
    @IBOutlet weak var Destination: UITextField!
    @IBOutlet weak var RelationToHOH: UITextField!
    @IBOutlet weak var LengthOfTimeOnStreet: UITextField!
    @IBOutlet weak var DoneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doneTapped(_ sender: Any) {
        // post data to intake receiver
        var data = InTakeData()
        data.PersonalID = PersonalID.text
        data.HouseholdID = HouseholdID.text
        data.Name = Name.text
        data.SSN = SSN.text
        data.DOB = DOB.text
        data.Race = Race.text
        data.Ethnicity = Ethnicity.text
        data.Gender = Gender.text
        data.ClientLocationCode = ClientLocationCode.text
        data.VeteranStatus = VeteranStatus.text
        data.DisablingCondition = DisablingCondition.text
        data.LastLocationAddress = LastLocationAddress.text
        data.Destination = Destination.text
        data.RelationToHOH = RelationToHOH.text
        data.LengthOfTimeOnStreet = LengthOfTimeOnStreet.text
        // HTTP: POST to endPoint
        var endpointURL = "https://guidoslabs.com/cgi-bin/inTakeForm.y"

    }

}

