// Reusable rules for the SDC questionnaires.
// They intentionally follow the conventions used by the existing IPS FSH sources.

RuleSet: QuestionnaireGroup(linkId, text, required, repeats)
* item[+].linkId = "{linkId}"
* item[=].text = "{text}"
* item[=].type = #group
* item[=].required = {required}
* item[=].repeats = {repeats}

RuleSet: QuestionnaireGroupItem(linkId, text, type, required, repeats)
* item[=].item[+].linkId = "{linkId}"
* item[=].item[=].text = "{text}"
* item[=].item[=].type = #{type}
* item[=].item[=].required = {required}
* item[=].item[=].repeats = {repeats}

RuleSet: RootResourceGroup(linkId, text, required, repeats, resourceType, profile)
* item[+].linkId = "{linkId}"
* item[=].text = "{text}"
* item[=].type = #group
* item[=].required = {required}
* item[=].repeats = {repeats}
* item[=].definition = "{profile}#{resourceType}"
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].extension[=].valueCode = #{resourceType}

RuleSet: RootResourceQuestion(linkId, text, type, required, repeats, definition)
* item[=].item[+].linkId = "{linkId}"
* item[=].item[=].text = "{text}"
* item[=].item[=].type = #{type}
* item[=].item[=].required = {required}
* item[=].item[=].repeats = {repeats}
* item[=].item[=].definition = "{definition}"

RuleSet: QuestionResourceGroup(linkId, text, required, repeats, resourceType, profile)
* item[=].item[+].linkId = "{linkId}"
* item[=].item[=].text = "{text}"
* item[=].item[=].type = #group
* item[=].item[=].required = {required}
* item[=].item[=].repeats = {repeats}
* item[=].item[=].definition = "{profile}#{resourceType}"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[=].valueCode = #{resourceType}

RuleSet: ResourceQuestion(linkId, text, type, required, repeats, definition)
* item[=].item[=].item[+].linkId = "{linkId}"
* item[=].item[=].item[=].text = "{text}"
* item[=].item[=].item[=].type = #{type}
* item[=].item[=].item[=].required = {required}
* item[=].item[=].item[=].repeats = {repeats}
* item[=].item[=].item[=].definition = "{definition}"
