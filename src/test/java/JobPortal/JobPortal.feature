Feature: All Job portal request

  @listUsers
  Scenario: to verify the job list
    Given url 'http://localhost:9897'
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method GET
    Then status 200
    And match response ==
    """
    <List>
	<item>
		<jobId>1</jobId>
		<jobTitle>Software Engg</jobTitle>
		<jobDescription>To develop andriod application</jobDescription>
		<experience>
			<experience>Google</experience>
			<experience>Apple</experience>
			<experience>Mobile Iron</experience>
		</experience>
		<project>
			<project>
				<projectName>Movie App</projectName>
				<technology>
					<technology>Kotlin</technology>
					<technology>SQL Lite</technology>
					<technology>Gradle</technology>
				</technology>
			</project>
		</project>
	</item>
</List>

    """

  @createUsers
  Scenario: to verify the job created
    Given url 'http://localhost:9897'
    And path 'normal/webapi/add'
    And header Accept = 'application/json'
    And request
    """
    {
  "experience": [
    "1 year in software testing"
  ],
  "jobDescription": "Requited automation Testers",
  "jobId": 13,
  "jobTitle": "Software Test engg. Requred",
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
    Then status 200

  @createUsersXML
  Scenario: to verify the job created
    Given url 'http://localhost:9897'
    And path 'normal/webapi/add'
    And header Accept = 'application/xml'
    And header ContentType = 'application/xml'
    And request
    """
     <List>
	  <item>
          <experience>1 year in software testing</experience>
          <jobDescription>Requited automation Testers</jobDescription>
          <jobId>13</jobId>
          <jobTitle>Software Test engg. Requred</jobTitle>
          <project>
              <projectName>Stock managaement</projectName>
              <technology>Java + sql</technology>
          </project>
          </item>
      </List>

    """

    When method post
    Then status 200

