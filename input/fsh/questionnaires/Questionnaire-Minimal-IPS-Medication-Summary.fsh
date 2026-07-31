Instance: Questionnaire-Minimal-IPS-Medication-Summary
InstanceOf: sdc-questionnaire-extr-defn
Title: "Questionnaire - Minimal IPS Medication Summary"
Description: "Questionnaire SDC used to capture the Medication Summary section of a minimal International Patient Summary and extract IPS-conformant medication resources."
Usage: #definition
* name = "MinimalInternationalPatientSummaryMedicationSummary"
* url = "http://hl7.org/fhir/uv/ips/Questionnaire/Questionnaire-Minimal-IPS-Medication-Summary"
* status = #active
* version = "0.1.0"
* publisher = "HL7 International / Patient Care"
* subjectType = #Patient

// Required IPS Medication Summary section. The two repeating groups allow the source
// medication information to be represented either as a statement or as a request.
* insert QuestionnaireGroup(medication-summary, [[Medication summary]], true, false)
* insert QuestionnaireGroupItem(medications-information-status, [[Information about relevant medications]], choice, true, false)
* item[=].item[=].answerOption[+].valueString = "known"
* item[=].item[=].answerOption[+].valueString = "none-known"
* item[=].item[=].answerOption[+].valueString = "unavailable"
* insert QuestionResourceGroup(medication-statement, [[Current or historical medication]], false, true, MedicationStatement, http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips)
* item[=].item[=].enableWhen.question = "medications-information-status"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerString = "known"
* insert ResourceQuestion(medication-statement-code, [[Medication]], choice, true, false, http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips#MedicationStatement.medicationCodeableConcept.coding)
// * item[=].item[=].item[=].answerValueSet = Canonical(MedicationsUvIps)
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#108774000 "Product containing anastrozole (medicinal product)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#777067000 "Acetaminophen only product"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#774587000 "Amoxicillin and clavulanic acid only product"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#776556004 "Lithium citrate only product"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#774409003 "Acenocoumarol only product"
* insert ResourceQuestion(medication-statement-status, [[Medication statement status]], choice, true, false, http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips#MedicationStatement.status)
// * item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/medication-statement-status"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medication-statement-status#active "Active"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medication-statement-status#completed "Completed"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medication-statement-status#entered-in-error "Entered in Error"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medication-statement-status#intended "Intended"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medication-statement-status#stopped "Stopped"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medication-statement-status#on-hold "On Hold"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medication-statement-status#unknown "Unknown"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medication-statement-status#not-taken "Not Taken"
* insert ResourceQuestion(medication-statement-effective, [[Effective date]], dateTime, true, false, http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips#MedicationStatement.effectiveDateTime)
* insert ResourceQuestion(medication-statement-dosage, [[Dosage instructions]], text, false, false, http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips#MedicationStatement.dosage.text)
* insert ResourceQuestion(medication-statement-route, [[Route of administration]], choice, false, false, http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips#MedicationStatement.dosage.route.coding)
// * item[=].item[=].item[=].answerValueSet = $MedicationRouteCodes
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#26643006 "Oral use"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#47625008 "Intravenous route"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#78421000 "Intramuscular route"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#34206005 "Subcutaneous route"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#37161004 "Transdermal route"
* insert QuestionResourceGroup(medication-request, [[Medication request]], false, true, MedicationRequest, http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips)
* item[=].item[=].enableWhen.question = "medications-information-status"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerString = "known"
* insert ResourceQuestion(medication-request-code, [[Medication]], choice, true, false, http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips#MedicationRequest.medicationCodeableConcept.coding)
// * item[=].item[=].item[=].answerValueSet = Canonical(MedicationsUvIps)
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#108774000 "Product containing anastrozole (medicinal product)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#777067000 "Acetaminophen only product"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#774587000 "Amoxicillin and clavulanic acid only product"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#776556004 "Lithium citrate only product"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#774409003 "Acenocoumarol only product"
* insert ResourceQuestion(medication-request-status, [[Medication request status]], choice, true, false, http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips#MedicationRequest.status)
// * item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/medicationrequest-status"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active "Active"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-status#on-hold "On Hold"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-status#cancelled "Cancelled"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-status#completed "Completed"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-status#entered-in-error "Entered in Error"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-status#stopped "Stopped"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-status#draft "Draft"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-status#unknown "Unknown"
* insert ResourceQuestion(medication-request-intent, [[Medication request intent]], choice, true, false, http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips#MedicationRequest.intent)
// * item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/medicationrequest-intent"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#proposal "Proposal"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#plan "Plan"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order "Order"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#original-order "Original Order"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#reflex-order "Reflex Order"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#filler-order "Filler Order"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#instance-order "Instance Order"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#option "Option"
* insert ResourceQuestion(medication-request-dosage, [[Dosage instructions]], text, false, false, http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips#MedicationRequest.dosageInstruction.text)
* insert ResourceQuestion(medication-request-route, [[Route of administration]], choice, false, false, http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips#MedicationRequest.dosageInstruction.route.coding)
// * item[=].item[=].item[=].answerValueSet = $MedicationRouteCodes
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#26643006 "Oral use"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#47625008 "Intravenous route"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#78421000 "Intramuscular route"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#34206005 "Subcutaneous route"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#37161004 "Transdermal route"
