Instance: Questionnaire-Minimal-IPS-Problems
InstanceOf: sdc-questionnaire-extr-defn
Title: "Questionnaire - Minimal IPS Problems"
Description: "Questionnaire SDC used to capture the Problems section of a minimal International Patient Summary and extract IPS-conformant Condition resources."
Usage: #definition
* name = "MinimalInternationalPatientSummaryProblems"
* url = "http://hl7.org/fhir/uv/ips/Questionnaire/Questionnaire-Minimal-IPS-Problems"
* status = #active
* version = "0.1.0"
* publisher = "HL7 International / Patient Care"
* subjectType = #Patient

// Required IPS Problem List section.
* insert QuestionnaireGroup(problems, [[Problems]], true, false)
* insert QuestionnaireGroupItem(problems-information-status, [[Information about known problems]], choice, true, false)
* item[=].item[=].answerOption[+].valueString = "known"
* item[=].item[=].answerOption[+].valueString = "none-known"
* item[=].item[=].answerOption[+].valueString = "unavailable"
* insert QuestionResourceGroup(problem, [[Known problem or condition]], false, true, Condition, http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips)
* item[=].item[=].enableWhen.question = "problems-information-status"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerString = "known"
* insert ResourceQuestion(problem-code, [[Problem or condition]], choice, true, false, http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips#Condition.code.coding)
// * item[=].item[=].item[=].answerValueSet = Canonical(ProblemsUvIps)
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#44054006 "Type 2 diabetes mellitus (disorder)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#195967001 "Asthma (disorder)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#84114007 "Heart failure (disorder)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#160245001 "No current problems or disability (situation)"
* insert ResourceQuestion(problem-clinical-status, [[Clinical status]], choice, false, false, http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips#Condition.clinicalStatus.coding)
// * item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/condition-clinical"
* item[=].item[=].item[=].answerOption[+].valueCoding = $condition-clinical#active "Active"
* item[=].item[=].item[=].answerOption[+].valueCoding = $condition-clinical#recurrence "Recurrence"
* item[=].item[=].item[=].answerOption[+].valueCoding = $condition-clinical#relapse "Relapse"
* item[=].item[=].item[=].answerOption[+].valueCoding = $condition-clinical#inactive "Inactive"
* item[=].item[=].item[=].answerOption[+].valueCoding = $condition-clinical#remission "Remission"
* item[=].item[=].item[=].answerOption[+].valueCoding = $condition-clinical#resolved "Resolved"
* insert ResourceQuestion(problem-verification-status, [[Verification status]], choice, false, false, http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips#Condition.verificationStatus.coding)
// * item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/condition-ver-status"
* item[=].item[=].item[=].answerOption[+].valueCoding = $condition-ver-status#unconfirmed "Unconfirmed"
* item[=].item[=].item[=].answerOption[+].valueCoding = $condition-ver-status#provisional "Provisional"
* item[=].item[=].item[=].answerOption[+].valueCoding = $condition-ver-status#differential "Differential"
* item[=].item[=].item[=].answerOption[+].valueCoding = $condition-ver-status#confirmed "Confirmed"
* item[=].item[=].item[=].answerOption[+].valueCoding = $condition-ver-status#refuted "Refuted"
* item[=].item[=].item[=].answerOption[+].valueCoding = $condition-ver-status#entered-in-error "Entered in Error"
* insert ResourceQuestion(problem-onset, [[Onset date]], dateTime, false, false, http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips#Condition.onsetDateTime)
* insert ResourceQuestion(problem-note, [[Additional information]], text, false, false, http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips#Condition.note.text)
