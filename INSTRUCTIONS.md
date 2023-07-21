# INSTRUCTIONS

# > LEVEL SOUNDTRACKS


- To import soundtracks for levels, find / add the object 'sys_levelAudio'
![image](https://user-images.githubusercontent.com/70369681/231460508-9b138525-579b-4d36-be67-268bc4da4d33.png)

Press the pencil button and write your soundtrack's asset name in (default is 'undefined', you can use this if you don't want music in the level).

![image](https://user-images.githubusercontent.com/70369681/231461020-8ed00f70-132b-4bb5-a252-748ec93afb81.png)
![image](https://user-images.githubusercontent.com/70369681/231461126-1fd15d76-20d2-4ee1-997d-bb4b9d1db1d0.png)

You can add a track while playing (.ogg files only) by pressing Up arrow, press Down arrow to set it as the main track.


# > DIRECTION TRIGGER (ARROW TRIGGER)

- To use Direction Trigger (or Arrow Trigger), find / add the object 'trig_direction'

![image](https://user-images.githubusercontent.com/70369681/232309629-fd3be8dd-e39f-46e7-a609-21a0e747eddd.png)


The trigger's Image Angle defines the player's MOVING DIRECTION (changing o_player's variables: movedir & sideway).

![image](https://user-images.githubusercontent.com/70369681/232309668-6dd00c45-57e5-49f3-89ab-d5704511d25d.png)



The trigger's Image Yscale defines the playey's GRAVITY DIRECTION (changing o_player's variable: gravdir).

![image](https://user-images.githubusercontent.com/70369681/232309661-6330509c-958a-4340-8a38-b152cdba55c4.png)


IMPORTANT: Only rotate the trigger CLOCKWISE (no negative numbers) and the values can only be: 0, 90, 180, 270.



# > PLATFORMER MODE

- Enable & Disable platformer mode by changing global.playmode to 1 - 0 (platformer - auto-scroller).

# > IN-GAME EDITOR

NOTE: There may be keybinds that wasn't listed.

- Enable & Disable in-game editor by changing global.editor to true - false.
- Press Enter to open the editor if it is enabled.
- Editor keybinds:
  + Numpad 0, 1, 2: switch Edit mode. (Build, Edit, Delete)
  + Numpad 3: switch object types (solid - non-solid - portal).
  + Shift + Scroll: change gridsize.
  + Scroll: zoom in-out.
  + Hold Middle-click: move the view.
  + Delete: Delete selected objects.
  + Editmode 0 + Left-click: place objects.
  + Editmode 1 + W,A,S,D: move selected objects by gridsize (default is 62 pixels).
  + Editmode 1 + Shift + W,A,S,D: move selected objects by gridsize divided by 15.5 (default is 4 pixels).
  + Editmode 1 + Left-click: select objects.
  + Editmode 1 + Hold Left-click: Enable swipe mode, select objects in a field.
  + Editmode 1 + Q or E: rotate selected objects clockwise(E) or counter-clockwise(Q) by 45 degrees.
  + Editmode 2 + Left-click: delete objects in the mouse pointer.
  + Ctrl + S: save level.
  + Ctrl + L: load level.
