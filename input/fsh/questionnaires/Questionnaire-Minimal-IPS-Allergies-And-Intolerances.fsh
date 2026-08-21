Instance: Questionnaire-Minimal-IPS-Allergies-And-Intolerances
InstanceOf: sdc-questionnaire-extr-defn
Title: "Questionnaire - Minimal IPS Allergies and Intolerances"
Description: "Questionnaire SDC used to capture the Allergies and Intolerances section of a minimal International Patient Summary and extract IPS-conformant AllergyIntolerance resources."
Usage: #definition
* name = "MinimalInternationalPatientSummaryAllergiesAndIntolerances"
* url = "http://hl7.org/fhir/uv/ips/Questionnaire/Questionnaire-Minimal-IPS-Allergies-And-Intolerances"
* status = #active
* version = "0.1.0"
* publisher = "HL7 International / Patient Care"
* subjectType = #Patient

// Required IPS Allergies and Intolerances section.
* insert QuestionnaireGroup(allergies-and-intolerances, [[Allergies and intolerances]], true, false)
* insert QuestionnaireGroupItem(allergies-information-status, [[Information about known allergies or intolerances]], choice, true, false)
* item[=].item[=].answerOption[+].valueString = "known"
* item[=].item[=].answerOption[+].valueString = "none-known"
* item[=].item[=].answerOption[+].valueString = "unavailable"
* insert QuestionResourceGroup(allergy-or-intolerance, [[Known allergy or intolerance]], false, true, AllergyIntolerance, http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips)
* item[=].item[=].enableWhen.question = "allergies-information-status"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerString = "known"
* insert ResourceQuestion(allergy-agent, [[Causative agent or substance]], choice, true, false, http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips#AllergyIntolerance.code.coding)
// * item[=].item[=].item[=].answerValueSet = Canonical(AllergiesIntolerancesUvIps)
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#764146007 "Substance with penicillin structure (substance)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#256303006 "Ragweed pollen"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#716186003 "No known allergy (situation)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#429625007 "No known food allergy (situation)"
* insert ResourceQuestion(allergy-type, [[Type]], choice, false, false, http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips#AllergyIntolerance.type)
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/allergy-intolerance-type#allergy "Allergy"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/allergy-intolerance-type#intolerance "Intolerance"
* insert ResourceQuestion(allergy-reaction, [[Reaction or manifestation]], choice, false, true, http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips#AllergyIntolerance.reaction[+].manifestation.coding)
// * item[=].item[=].item[=].answerValueSet = Canonical(AllergyReactionUvIps)
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#4386001 "Bronchospasm (finding)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#39579001 "Anaphylaxis (disorder)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#126485001 "Urticaria (disorder)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#267036007 "Dyspnea (finding)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#422400008 "Vomiting (disorder)"
* insert ResourceQuestion(allergy-criticality, [[Criticality]], choice, false, false, http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips#AllergyIntolerance.criticality)
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/allergy-intolerance-criticality#low "Low Risk"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/allergy-intolerance-criticality#high "High Risk"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/allergy-intolerance-criticality#unable-to-assess "Unable to Assess Risk"
* insert ResourceQuestion(allergy-clinical-status, [[Clinical status]], choice, false, false, http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips#AllergyIntolerance.clinicalStatus.coding)
// * item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"
* item[=].item[=].item[=].answerOption[+].valueCoding = $allergyintolerance-clinical#active "Active"
* item[=].item[=].item[=].answerOption[+].valueCoding = $allergyintolerance-clinical#inactive "Inactive"
* item[=].item[=].item[=].answerOption[+].valueCoding = $allergyintolerance-clinical#resolved "Resolved"
* insert ResourceQuestion(allergy-verification-status, [[Verification status]], choice, false, false, http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips#AllergyIntolerance.verificationStatus.coding)
// * item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/allergyintolerance-verification"
* item[=].item[=].item[=].answerOption[+].valueCoding = $allergyintolerance-verification#unconfirmed "Unconfirmed"
* item[=].item[=].item[=].answerOption[+].valueCoding = $allergyintolerance-verification#confirmed "Confirmed"
* item[=].item[=].item[=].answerOption[+].valueCoding = $allergyintolerance-verification#refuted "Refuted"
* item[=].item[=].item[=].answerOption[+].valueCoding = $allergyintolerance-verification#entered-in-error "Entered in Error"
