Instance: qr-minimal-ips-patient-complete
InstanceOf: QuestionnaireResponse
Title: "QuestionnaireResponse - Completed Minimal IPS Patient Information"
Description: "Completed response to the Minimal IPS Patient Information Questionnaire."
Usage: #example
* status = #completed
* questionnaire = Canonical(Questionnaire-Minimal-IPS-Patient)
* subject = Reference(patient-example-female)
* authored = "2026-07-17T10:30:00+02:00"
* item[0].linkId = "patient"
* item[=].text = "Patient information"
* item[=].item[0].linkId = "patient-identifier-system"
* item[=].item[=].answer.valueUri = "urn:oid:2.16.840.1.113883.2.4.6.3"
* item[=].item[+].linkId = "patient-identifier-value"
* item[=].item[=].answer.valueString = "574687583"
* item[=].item[+].linkId = "patient-family-name"
* item[=].item[=].answer.valueString = "DeLarosa"
* item[=].item[+].linkId = "patient-given-name"
* item[=].item[=].answer[0].valueString = "Martha"
* item[=].item[=].answer[+].valueString = "Alice"
* item[=].item[+].linkId = "patient-birth-date"
* item[=].item[=].answer.valueDate = "1992-05-01"
* item[=].item[+].linkId = "patient-gender"
* item[=].item[=].answer.valueCoding = http://hl7.org/fhir/administrative-gender#female "Female"

Instance: qr-minimal-ips-problems-complete
InstanceOf: QuestionnaireResponse
Title: "QuestionnaireResponse - Completed Minimal IPS Problems"
Description: "Completed response to the Minimal IPS Problems Questionnaire."
Usage: #example
* status = #completed
* questionnaire = Canonical(Questionnaire-Minimal-IPS-Problems)
* subject = Reference(patient-example-female)
* authored = "2026-07-17T10:30:00+02:00"
* item[0].linkId = "problems"
* item[=].text = "Problems"
* item[=].item[0].linkId = "problems-information-status"
* item[=].item[=].answer.valueString = "known"
* item[=].item[+].linkId = "problem"
* item[=].item[=].text = "Known problem or condition"
* item[=].item[=].item[0].linkId = "problem-code"
* item[=].item[=].item[=].answer.valueCoding = $sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"
* item[=].item[=].item[+].linkId = "problem-clinical-status"
* item[=].item[=].item[=].answer.valueCoding = $condition-clinical#active "Active"
* item[=].item[=].item[+].linkId = "problem-verification-status"
* item[=].item[=].item[=].answer.valueCoding = $condition-ver-status#confirmed "Confirmed"
* item[=].item[=].item[+].linkId = "problem-onset"
* item[=].item[=].item[=].answer.valueDateTime = "2015-03-01"
* item[=].item[=].item[+].linkId = "problem-note"
* item[=].item[=].item[=].answer.valueString = "Controlled with ongoing treatment."

Instance: qr-minimal-ips-allergies-and-intolerances-complete
InstanceOf: QuestionnaireResponse
Title: "QuestionnaireResponse - Completed Minimal IPS Allergies and Intolerances"
Description: "Completed response to the Minimal IPS Allergies and Intolerances Questionnaire."
Usage: #example
* status = #completed
* questionnaire = Canonical(Questionnaire-Minimal-IPS-Allergies-And-Intolerances)
* subject = Reference(patient-example-female)
* authored = "2026-07-17T10:30:00+02:00"
* item[0].linkId = "allergies-and-intolerances"
* item[=].text = "Allergies and intolerances"
* item[=].item[0].linkId = "allergies-information-status"
* item[=].item[=].answer.valueString = "known"
* item[=].item[+].linkId = "allergy-or-intolerance"
* item[=].item[=].text = "Known allergy or intolerance"
* item[=].item[=].item[0].linkId = "allergy-agent"
* item[=].item[=].item[=].answer.valueCoding = $sct#764146007 "Substance with penicillin structure (substance)"
* item[=].item[=].item[+].linkId = "allergy-type"
* item[=].item[=].item[=].answer.valueCoding = http://hl7.org/fhir/allergy-intolerance-type#allergy "Allergy"
* item[=].item[=].item[+].linkId = "allergy-reaction"
* item[=].item[=].item[=].answer.valueCoding = $sct#126485001 "Urticaria (disorder)"
* item[=].item[=].item[+].linkId = "allergy-criticality"
* item[=].item[=].item[=].answer.valueCoding = http://hl7.org/fhir/allergy-intolerance-criticality#high "High Risk"
* item[=].item[=].item[+].linkId = "allergy-clinical-status"
* item[=].item[=].item[=].answer.valueCoding = $allergyintolerance-clinical#active "Active"
* item[=].item[=].item[+].linkId = "allergy-verification-status"
* item[=].item[=].item[=].answer.valueCoding = $allergyintolerance-verification#confirmed "Confirmed"

Instance: qr-minimal-ips-medication-summary-complete
InstanceOf: QuestionnaireResponse
Title: "QuestionnaireResponse - Completed Minimal IPS Medication Summary"
Description: "Completed response to the Minimal IPS Medication Summary Questionnaire."
Usage: #example
* status = #completed
* questionnaire = Canonical(Questionnaire-Minimal-IPS-Medication-Summary)
* subject = Reference(patient-example-female)
* authored = "2026-07-17T10:30:00+02:00"
* item[0].linkId = "medication-summary"
* item[=].text = "Medication summary"
* item[=].item[0].linkId = "medications-information-status"
* item[=].item[=].answer.valueString = "known"
* item[=].item[+].linkId = "medication-statement"
* item[=].item[=].text = "Current or historical medication"
* item[=].item[=].item[0].linkId = "medication-statement-code"
* item[=].item[=].item[=].answer.valueCoding = $sct#108774000 "Product containing anastrozole (medicinal product)"
* item[=].item[=].item[+].linkId = "medication-statement-status"
* item[=].item[=].item[=].answer.valueCoding = http://hl7.org/fhir/CodeSystem/medication-statement-status#active "Active"
* item[=].item[=].item[+].linkId = "medication-statement-effective"
* item[=].item[=].item[=].answer.valueDateTime = "2024-01-01"
* item[=].item[=].item[+].linkId = "medication-statement-dosage"
* item[=].item[=].item[=].answer.valueString = "One 1 mg tablet by mouth once daily."
* item[=].item[=].item[+].linkId = "medication-statement-route"
* item[=].item[=].item[=].answer.valueCoding = $sct#26643006 "Oral use"
* item[=].item[+].linkId = "medication-request"
* item[=].item[=].text = "Medication request"
* item[=].item[=].item[0].linkId = "medication-request-code"
* item[=].item[=].item[=].answer.valueCoding = $sct#108774000 "Product containing anastrozole (medicinal product)"
* item[=].item[=].item[+].linkId = "medication-request-status"
* item[=].item[=].item[=].answer.valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active "Active"
* item[=].item[=].item[+].linkId = "medication-request-intent"
* item[=].item[=].item[=].answer.valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order "Order"
* item[=].item[=].item[+].linkId = "medication-request-dosage"
* item[=].item[=].item[=].answer.valueString = "One 1 mg tablet by mouth once daily."
* item[=].item[=].item[+].linkId = "medication-request-route"
* item[=].item[=].item[=].answer.valueCoding = $sct#26643006 "Oral use"
