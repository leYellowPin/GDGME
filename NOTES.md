# NOTE

# > LEVEL SOUNDTRACKS


- To import soundtracks for levels, find / add the object 'sys_levelAudio'
![image](https://user-images.githubusercontent.com/70369681/231460508-9b138525-579b-4d36-be67-268bc4da4d33.png)

Press the pencil button and write your soundtrack's asset name in (default is 'undefined', you can use this if you don't want music in the level).

![image](https://user-images.githubusercontent.com/70369681/231461020-8ed00f70-132b-4bb5-a252-748ec93afb81.png)
![image](https://user-images.githubusercontent.com/70369681/231461126-1fd15d76-20d2-4ee1-997d-bb4b9d1db1d0.png)


# > DIRECTION TRIGGER (ARROW TRIGGER)

- To use Direction Trigger (or Arrow Trigger), find / add the object 'trig_direction'

![image](https://user-images.githubusercontent.com/70369681/232309629-fd3be8dd-e39f-46e7-a609-21a0e747eddd.png)


The trigger's Image Angle defines the player's MOVING DIRECTION (changing o_player's variables: movedir & sideway).

![image](https://user-images.githubusercontent.com/70369681/232309668-6dd00c45-57e5-49f3-89ab-d5704511d25d.png)



The trigger's Image Yscale defines the playey's GRAVITY DIRECTION (changing o_player's variable: gravdir).

![image](https://user-images.githubusercontent.com/70369681/232309661-6330509c-958a-4340-8a38-b152cdba55c4.png)


IMPORTANT: Only rotate the trigger CLOCKWISE (no negative numbers)
