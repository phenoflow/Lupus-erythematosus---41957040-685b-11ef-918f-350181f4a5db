cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  lupus---secondary:
    run: lupus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  systemic-lupus-erythematosus---secondary:
    run: systemic-lupus-erythematosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: lupus---secondary/output
  lupus-erythematosus-multisystem---secondary:
    run: lupus-erythematosus-multisystem---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: systemic-lupus-erythematosus---secondary/output
  discoid-lupus-erythematosus---secondary:
    run: discoid-lupus-erythematosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-multisystem---secondary/output
  local-lupus-erythematosus---secondary:
    run: local-lupus-erythematosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: discoid-lupus-erythematosus---secondary/output
  lupus-erythematosus-forms---secondary:
    run: lupus-erythematosus-forms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: local-lupus-erythematosus---secondary/output
  lupus-erythematosus-unspecified---secondary:
    run: lupus-erythematosus-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-forms---secondary/output
  glomerular-lupus-erythematosus---secondary:
    run: glomerular-lupus-erythematosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-unspecified---secondary/output
  lupus-erythematosus-involvement---secondary:
    run: lupus-erythematosus-involvement---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: glomerular-lupus-erythematosus---secondary/output
  lupus-erythematosus-pericarditis---secondary:
    run: lupus-erythematosus-pericarditis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-involvement---secondary/output
  lupus-erythematosus-gingival---secondary:
    run: lupus-erythematosus-gingival---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-pericarditis---secondary/output
  nephrotic-lupus-erythematosus---secondary:
    run: nephrotic-lupus-erythematosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-gingival---secondary/output
  lupus-erythematosus-nephrosis---secondary:
    run: lupus-erythematosus-nephrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: nephrotic-lupus-erythematosus---secondary/output
  lupus-erythematosus-class---secondary:
    run: lupus-erythematosus-class---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-nephrosis---secondary/output
  lupus-erythematosus-hepatitis---secondary:
    run: lupus-erythematosus-hepatitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-class---secondary/output
  lupus-erythematosus-endocardiosis---secondary:
    run: lupus-erythematosus-endocardiosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-hepatitis---secondary/output
  lupus-erythematosus-glomerulonephritis---secondary:
    run: lupus-erythematosus-glomerulonephritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-endocardiosis---secondary/output
  acute-lupus-erythematosus---secondary:
    run: acute-lupus-erythematosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-glomerulonephritis---secondary/output
  lupus-erythematosus-fulminating---secondary:
    run: lupus-erythematosus-fulminating---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: acute-lupus-erythematosus---secondary/output
  other-lupus-erythematosus---secondary:
    run: other-lupus-erythematosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-fulminating---secondary/output
  lupus-erythematosus-childhood---secondary:
    run: lupus-erythematosus-childhood---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: other-lupus-erythematosus---secondary/output
  lupus-erythematosus-arthritis---secondary:
    run: lupus-erythematosus-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-childhood---secondary/output
  neonatal-lupus-erythematosus---secondary:
    run: neonatal-lupus-erythematosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-arthritis---secondary/output
  lupus-erythematosus-encephalitis---secondary:
    run: lupus-erythematosus-encephalitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: neonatal-lupus-erythematosus---secondary/output
  limited-lupus-erythematosus---secondary:
    run: limited-lupus-erythematosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-encephalitis---secondary/output
  lupus-erythematosus-panniculitis---secondary:
    run: lupus-erythematosus-panniculitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: limited-lupus-erythematosus---secondary/output
  bullous-lupus-erythematosus---secondary:
    run: bullous-lupus-erythematosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-panniculitis---secondary/output
  lupus-erythematosus-remission---secondary:
    run: lupus-erythematosus-remission---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: bullous-lupus-erythematosus---secondary/output
  lupus-erythematosus-membrane---secondary:
    run: lupus-erythematosus-membrane---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-remission---secondary/output
  nephropathy-lupus-erythematosus---secondary:
    run: nephropathy-lupus-erythematosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: lupus-erythematosus-membrane---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: nephropathy-lupus-erythematosus---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
