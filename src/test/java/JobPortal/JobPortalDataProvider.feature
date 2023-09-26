Feature:All Job portal scenarios

  @createUserDataProvider @AddJobWithData
  Scenario Outline: to verify the job created
    Given url 'http://localhost:9897'
    And path 'normal/webapi/add'
    And header Accept = 'application/json'
    And header ContentType = 'application/json'
    And request
    """
          {
        "experience": [
          "#(exp)"
        ],
        "jobDescription": "#(description)",
        "jobId": 13,
        "jobTitle": "#(jobTitle)",
        "project": [
          {
            "projectName": "Stock managaement",
            "technology": [
              "Java + sql"
            ]
          }
        ]
      }
    """
    When method post
    Then print response
    And status 201
    Examples:
      | exp     | description    | jobTitle                                   |
      | 2 years | Java Developer | Java developers with good coding knowledge |
      | 3 years | .Net Developer | .Net developers with good coding knowledge |
      | 4 years | Manual Tester  | good knowledge of test methodology         |