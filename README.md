# Special-shelter-rescue
Rules

    There are 5 rules in this prolog.
    
    1. match_with_shelter_type(Person_id, Shelter).
    
        - return all shelter that has same type with person type.
	
    2. available_shelter(Shelter, Capacity).
    
        - return all shelter that available(Not full).
	
    3. find_possible_shelter( Person, Shelter,Distance).
    
        - return shelter and distance that be available and match with person type.
	
    4. find_min_distance(Person_id, Distance).
    
        - return minimum distance from list of shelter that match with person.
	
    5. find_shelter(Person_id, Shelter).
    
        - Return shelter that nearest, available and match with person type.
	



How to run

    1. Select one of five rule that you want to know.
    
    2. (Rules1, 3, 4, 5)Input the person_id in the rule
    
        This  mockup data has 4 person_id.
	
        person_id(1119800063846).
	
        person_id(1117599926475).
	
        person_id(1117947302394).
	
        person_id(1118262450340).
	
    3. (Rules 2)Input the shelter in the rule
    
        This  mockup data has 10 shelter.
	
        shelter(sakonakorn_school).
	
        shelter(konkean_school).
	
        shelter(somsak_house).
	
        shelter(preeda_house).
	
        shelter(komkrit_house).
	
        shelter(western_hospital).
	
        shelter(benjamaborphit_temple).
	
        shelter(pathumwan_temple).
	
        shelter(somsri_house).
	
        shelter(somchai_house).
	
    4. Then enter, you will get answer from the output.
    



Output

    Rule 1:
    match_with_shelter_type(1119800063846, Shelter).
      Ans 	Shelter = sakonakorn_school
            Shelter = western_hospital.

    match_with_shelter_type(1117599926475, Shelter).
      Ans 	Shelter = somsak_house
            Shelter = komkrit_house
            Shelter = somsri_house.

    match_with_shelter_type(1117947302394, Shelter).
      Ans	  Shelter = preeda_house
            Shelter = benjamaborphit_temple.

    match_with_shelter_type(1118262450340, Shelter).
      Ans	  Shelter = konkean_school
            Shelter = pathumwan_temple
            Shelter = somchai_house.  



    Rule 2:
    available_shelter(Shelter, Capacity).
      Ans 	Shelter = sakonakorn_school,
            Capacity = 2
            Shelter = somsak_house,
            Capacity = 10
            Shelter = benjamaborphit_temple,
            Capacity = 100
            Shelter = pathumwan_temple,
            Capacity = 4
            Shelter = somsri_house,
            Capacity = 27
            Shelter = somchai_house,
            Capacity = 15.
    available_shelter(sakonakorn_school, Capacity).
      Ans	  Capacity = 2
      
    available_shelter(konkean_school, Capacity).
      Ans 	false
      
    available_shelter(somsak_house, Capacity).
      Ans 	Capacity = 10
      
    available_shelter(preeda_house, Capacity).
      Ans 	false
      
    available_shelter(komkrit_house, Capacity).
      Ans 	false
      
    available_shelter(western_hospital, Capacity).
      Ans 	false
      
    available_shelter(benjamaborphit_temple, Capacity).
      Ans 	Capacity = 100
      
    available_shelter(pathumwan_temple, Capacity).
      Ans 	Capacity = 4
      
    available_shelter(somsri_house, Capacity).
      Ans 	Capacity = 27
      
    available_shelter(somchai_house, Capacity).
      Ans 	Capacity = 15



    Rule 3:
    find_possible_shelter(1119800063846, Shelter, Distance).
      Ans   Shelter = sakonakorn_school,
            Distance = 10
            false.
            
    find_possible_shelter(1117599926475, Shelter, Distance).
      Ans   Shelter = somsak_house,
            Distance = 566
            Shelter = somsri_house,
            Distance = 548
            false.
            
    find_possible_shelter(1117947302394, Shelter,  Distance).
      Ans   Shelter = benjamaborphit_temple,
            Distance = 1236
            false.

    find_possible_shelter(1118262450340, Shelter, Distance).
      Ans   Shelter = pathumwan_temple,
            Distance = 74
            Shelter = somchai_house,
            Distance = 18.



    Rule 4:
    find_min_distance(1119800063846, Distance).
      Ans	  Distance = 10.
      
    find_min_distance(1117599926475, Distance).
      Ans	  Distance = 548.
      
    find_min_distance(1117947302394, Distance).
      Ans	  Distance = 1236.
      
    find_min_distance(1118262450340, Distance).
      Ans	  Distance = 18.



    Rule 5:
    find_shelter(1119800063846, Shelter).
      Ans	  Shelter = sakonakorn_school
            false.
    find_shelter(1117599926475, Shelter).
      Ans	  Shelter = somsri_house
            false.
    find_shelter(1117947302394, Shelter).
      Ans	  Shelter = benjamaborphit_temple
            false.
    find_shelter(1118262450340, Shelter).
      Ans	  Shelter = somchai_house.
