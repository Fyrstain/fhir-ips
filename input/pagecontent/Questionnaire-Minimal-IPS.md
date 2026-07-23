### Questionnaires SDC - IPS minimal

The minimal IPS data collection is split into four questionnaires. Each questionnaire conforms to the SDC definition-based extraction profile (`sdc-questionnaire-extr-defn`) from the FHIR R4 SDC 3.0.0 package and can be completed independently.

The reusable FSH rules are kept in `input/fsh/questionnaires/QuestionnaireRuleSets.fsh`. Each repeating clinical group declares an SDC extraction context and its corresponding IPS profile; its child questions declare the profile element to populate.

| IPS content | Questionnaire | Extracted resource/profile | Missing-data handling |
|---|---|---|---|
| Patient information | `Questionnaire-Minimal-IPS-Patient` | `Patient-uv-ips` | Patient name and birth date are required. |
| Problems | `Questionnaire-Minimal-IPS-Problems` | `Condition-uv-ips` | `none-known` maps to SNOMED CT `160245001`; `unavailable` maps to the Problems section `emptyReason`. |
| Allergies and intolerances | `Questionnaire-Minimal-IPS-Allergies-And-Intolerances` | `AllergyIntolerance-uv-ips` | `none-known` maps to SNOMED CT `716186003`; `unavailable` maps to the Allergies section `emptyReason`. |
| Medication summary | `Questionnaire-Minimal-IPS-Medication-Summary` | `MedicationStatement-uv-ips` or `MedicationRequest-uv-ips` | `none-known` maps to SNOMED CT `787481004`; `unavailable` maps to the Medication Summary section `emptyReason`. |

An extraction service must combine the resources produced by the four QuestionnaireResponses into the document Bundle and Composition. It must set each clinical resource's patient reference to the extracted Patient, place the Composition in the first Bundle entry, and retain all three mandatory Composition sections. For `unavailable`, it must set `Composition.section.emptyReason` to `http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable`.
