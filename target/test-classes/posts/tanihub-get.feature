Feature: As a client, I want to get list

Background:
  Given url urlBase

@checkArray
Scenario: Get qty of array []
    When method get
    Then status 200
        * match response == '#[3]'  
@typeData
Scenario: Get type data
    When method get
    Then status 200
        * match each response[*].id == '#string'
        * match each response[*].name == '#string'
        * match each response[*].description == '#string'
        * match each response[*].vehicle_class == '#string'
        * match each response[*].length == '#string'
        * match each response[*].pilot == '#string'
        * match each response[*].films[*] == '#string'
        * match each response[*].url == '#string'
    

Scenario: Get assert response
    When method get
    Then status 200
        #array [0]
      * match response[0].id == '4e09b023-f650-4747-9ab9-eacf14540cfb'
      * match response[0].name == 'Air Destroyer Goliath'
      * match response[0].description == 'A military airship utilized by the government to access Laputa'
      * match response[0].vehicle_class == 'Airship'
      * match response[0].length == '1,000'
      * match response[0].pilot == 'https://ghibliapi.herokuapp.com/people/40c005ce-3725-4f15-8409-3e1b1b14b583'
      * match response[0].films[0] == 'https://ghibliapi.herokuapp.com/films/2baf70d1-42bb-4437-b551-e5fed5a87abe'
      * match response[0].url == 'https://ghibliapi.herokuapp.com/vehicles/4e09b023-f650-4747-9ab9-eacf14540cfb'
        #array [1]
      * match response[1].id == 'd8f893b5-1dd9-41a1-9918-0099c1aa2de8'
      * match response[1].name == 'Red Wing'
      * match response[1].description == 'An experimental aircraft captured by Porco. Named Savoia S.21'
      * match response[1].vehicle_class == 'Airplane'
      * match response[1].length == '20'
      * match response[1].pilot == 'https://ghibliapi.herokuapp.com/people/6523068d-f5a9-4150-bf5b-76abe6fb42c3'
      * match response[1].films[0] == 'https://ghibliapi.herokuapp.com/films/ebbb6b7c-945c-41ee-a792-de0e43191bd8'
      * match response[1].url == 'https://ghibliapi.herokuapp.com/vehicles/d8f893b5-1dd9-41a1-9918-0099c1aa2de8'
        #array [2]
      * match response[2].id == '923d70c9-8f15-4972-ad53-0128b261d628'
      * match response[2].name == "Sosuke's Boat"
      * match response[2].description == 'A toy boat where Sosuke plays'
      * match response[2].vehicle_class == 'Boat'
      * match response[2].length == '10'
      * match response[2].pilot == 'https://ghibliapi.herokuapp.com/people/a10f64f3-e0b6-4a94-bf30-87ad8bc51607'
      * match response[2].films[0] == 'https://ghibliapi.herokuapp.com/films/758bf02e-3122-46e0-884e-67cf83df1786'
      * match response[2].url == 'https://ghibliapi.herokuapp.com/vehicles/923d70c9-8f15-4972-ad53-0128b261d628'
        
