person_id(1119800063846).
person_id(1117599926475).
person_id(1117947302394).
person_id(1118262450340).

person_location(1119800063846, sakonakornville_sakonakorn_75210).
person_location(1117599926475, meungkhonkhen_konkean_54910).
person_location(1117947302394, lumlukka_pathumtani_12130).
person_location(1118262450340, ramintra_bangkok_10230).

person_type(1119800063846, disable).
person_type(1117599926475, kid).
person_type(1117947302394, elder).
person_type(1118262450340, pregnant).

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

shelter_type(sakonakorn_school, disable).
shelter_type(konkean_school, pregnant).
shelter_type(somsak_house, kid).
shelter_type(preeda_house, elder).
shelter_type(komkrit_house, kid).
shelter_type(western_hospital, disable).
shelter_type(benjamaborphit_temple, elder).
shelter_type(pathumwan_temple, pregnant).
shelter_type(somsri_house, kid).
shelter_type(somchai_house, pregnant).

shelter_capacity(sakonakorn_school, 2).
shelter_capacity(konkean_school, 0).
shelter_capacity(somsak_house, 10).
shelter_capacity(preeda_house, 0).
shelter_capacity(komkrit_house, 0).
shelter_capacity(western_hospital, 0).
shelter_capacity(benjamaborphit_temple, 100).
shelter_capacity(pathumwan_temple, 4).
shelter_capacity(somsri_house, 27).
shelter_capacity(somchai_house, 15).

shelter_location(sakonakorn_school, waterhouse_sakonakorn_10160).
shelter_location(konkean_school, meung_konkean_10110).
shelter_location(somsak_house, chatuchak_bangkok_10900).
shelter_location(preeda_house, bang_phun_pathumthani_12000).
shelter_location(komkrit_house, pathumwan_bangkok_10330).
shelter_location(western_hospital, kukot_pathumtani_12130).
shelter_location(benjamaborphit_temple, kohpp_puket_11122).
shelter_location(pathumwan_temple, mhoshit_pathumthani_11500).
shelter_location(somsri_house, phra_khanongnuea_bangkok_10110).
shelter_location(somchai_house, kannayao_bangkok_10230).

distance(sakonakornville_sakonakorn_75210, waterhouse_sakonakorn_10160, 10).
distance(sakonakornville_sakonakorn_75210, meung_konkean_10110, 58).
distance(sakonakornville_sakonakorn_75210, chatuchak_bangkok_10900, 590).
distance(sakonakornville_sakonakorn_75210, bang_phun_pathumthani_12000, 695).
distance(sakonakornville_sakonakorn_75210, pathumwan_bangkok_10330, 489).
distance(sakonakornville_sakonakorn_75210, kukot_pathumtani_12130, 630).
distance(sakonakornville_sakonakorn_75210, kohpp_puket_11122, 1550).
distance(sakonakornville_sakonakorn_75210, mhoshit_pathumthani_11500, 624).
distance(sakonakornville_sakonakorn_75210, phra_khanongnuea_bangkok_10110, 543).
distance(sakonakornville_sakonakorn_75210, kannayao_bangkok_10230, 622).

distance(meungkhonkhen_konkean_54910, waterhouse_sakonakorn_10160, 27).
distance(meungkhonkhen_konkean_54910, meung_konkean_10110, 3).
distance(meungkhonkhen_konkean_54910, chatuchak_bangkok_10900, 566).
distance(meungkhonkhen_konkean_54910, bang_phun_pathumthani_12000, 658).
distance(meungkhonkhen_konkean_54910, pathumwan_bangkok_10330, 592).
distance(meungkhonkhen_konkean_54910, kukot_pathumtani_12130, 621).
distance(meungkhonkhen_konkean_54910, kohpp_puket_11122, 1318).
distance(meungkhonkhen_konkean_54910, mhoshit_pathumthani_11500, 526).
distance(meungkhonkhen_konkean_54910, phra_khanongnuea_bangkok_10110, 548).
distance(meungkhonkhen_konkean_54910, kannayao_bangkok_10230, 552).

distance(lumlukka_pathumtani_12130, waterhouse_sakonakorn_10160, 576).
distance(lumlukka_pathumtani_12130, meung_konkean_10110, 626).
distance(lumlukka_pathumtani_12130, chatuchak_bangkok_10900, 12).
distance(lumlukka_pathumtani_12130, bang_phun_pathumthani_12000, 2).
distance(lumlukka_pathumtani_12130, pathumwan_bangkok_10330, 43).
distance(lumlukka_pathumtani_12130, kukot_pathumtani_12130, 12).
distance(lumlukka_pathumtani_12130, kohpp_puket_11122, 1236).
distance(lumlukka_pathumtani_12130, mhoshit_pathumthani_11500, 6).
distance(lumlukka_pathumtani_12130, phra_khanongnuea_bangkok_10110, 24).
distance(lumlukka_pathumtani_12130, kannayao_bangkok_10230, 45).

distance(ramintra_bangkok_10230, waterhouse_sakonakorn_10160, 554).
distance(ramintra_bangkok_10230, meung_konkean_10110, 743).
distance(ramintra_bangkok_10230, chatuchak_bangkok_10900, 23).
distance(ramintra_bangkok_10230, bang_phun_pathumthani_12000, 11).
distance(ramintra_bangkok_10230, pathumwan_bangkok_10330, 6).
distance(ramintra_bangkok_10230, kukot_pathumtani_12130, 32).
distance(ramintra_bangkok_10230, kohpp_puket_11122, 1215).
distance(ramintra_bangkok_10230, mhoshit_pathumthani_11500, 74).
distance(ramintra_bangkok_10230, phra_khanongnuea_bangkok_10110, 21).
distance(ramintra_bangkok_10230, kannayao_bangkok_10230, 18).




match_with_shelter_type(Person_id, Shelter):- person_type( Person_id, Type ) , shelter_type( Shelter, Type ).

available_shelter(Shelter, Capacity):- shelter_capacity( Shelter, Capacity ), Capacity > 0.

find_possible_shelter( Person_id, Shelter, Distance):-  match_with_shelter_type(Person_id, Shelter),
                                                                                                  available_shelter(Shelter, Capacity),
                                                                                                  person_location( Person_id, Person_location ), 
                                                                                                  shelter_location( Shelter, Shelter_location ), 
                                                                                                  distance( Person_location, Shelter_location, Distance ).

find_min_distance(Person_id, Distance):- bagof(Distance, Shelter^Capacity^Person_location^Shelter_location^find_possible_shelter( Person_id, Shelter, Distance), 
                                          List_of_shelter), min_list(List_of_shelter, Distance).

find_shelter(Person_id, Shelter):-  find_min_distance(Person_id, Distance),
                                    find_possible_shelter( Person_id, Shelter, Distance).


