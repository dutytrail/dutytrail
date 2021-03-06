Feature: Song

  @Retrieve
  Scenario: Retrieving a song
    Given I perform a "GET" to "http://localhost:7111/song?name=Yellow&artist=Coldplay" end point
    Then the response at the json path "songs[0].album" includes "Parachutes"

  @Retrieve.All.Songs
  Scenario: Retrieving all songs
    Given I set the header "include-remote" to "false"
    And I perform a "GET" to "http://localhost:7111/song/all" end point
    Then the response at the json path "songs[0].album" includes "Parachutes"

  @POST.Song
  Scenario: Post a song
    Given I use body from file "payloads/respect.json"
    When I perform a "POST" to "http://localhost:7111/song" end point
    Then the response status is 201

  @PUT.Song
  Scenario: Update a song
    Given I use body from file "payloads/respectGreatestHits.json"
    When I perform a "PUT" to "http://localhost:7111/song" end point
    Then the response status is 204

  @Retrieve.Lyrics
  Scenario: Retrieve Lyrics for all songs
    When I perform a "GET" to "http://localhost:7111/song/lyrics" end point
    Then the response status is 200
    And the response at the json path "songs[0].artist" includes "Coldplay"
    And the response at the json path "songs[0].album" includes "Parachutes"
    And the response at the json path "songs[0].lyrics" includes "Fake lyrics for Yellow"

  @Retrieve.All.Songs.Remote
  Scenario: Retrieving all songs including the remote ones
    Given I set the header "include-remote" to "true"
    And I perform a "GET" to "http://localhost:7111/song/all" end point
    Then the response at the json path "songs[4].album" includes "Jolene"