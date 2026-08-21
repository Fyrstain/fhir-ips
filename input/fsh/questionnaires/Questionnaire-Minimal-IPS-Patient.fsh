Instance: Questionnaire-Minimal-IPS-Patient
InstanceOf: sdc-questionnaire-extr-defn
Title: "Questionnaire - Minimal IPS Patient Information"
Description: "Questionnaire SDC used to capture Patient information for a minimal International Patient Summary and extract an IPS-conformant Patient resource."
Usage: #definition
* name = "MinimalInternationalPatientSummaryPatient"
* url = "http://hl7.org/fhir/uv/ips/Questionnaire/Questionnaire-Minimal-IPS-Patient"
* status = #active
* version = "0.1.0"
* publisher = "HL7 International / Patient Care"
* subjectType = #Patient

// Patient resource. Name and birth date are required by the IPS Patient profile.
* insert RootResourceGroup(patient, [[Patient information]], true, false, Patient, http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips)
* insert RootResourceQuestion(patient-identifier-system, [[Patient identifier system]], url, false, false, http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips#Patient.identifier.system)
* insert RootResourceQuestion(patient-identifier-value, [[Patient identifier value]], string, false, false, http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips#Patient.identifier.value)
* insert RootResourceQuestion(patient-family-name, [[Family name]], string, true, false, http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips#Patient.name.family)
* insert RootResourceQuestion(patient-given-name, [[Given name]], string, true, true, http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips#Patient.name.given)
* insert RootResourceQuestion(patient-birth-date, [[Date of birth]], date, true, false, http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips#Patient.birthDate)
* insert RootResourceQuestion(patient-gender, [[Administrative gender]], choice, false, false, http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips#Patient.gender)
// * item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#male "Male"
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#female "Female"
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#other "Other"
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#unknown "Unknown"
