"Nuclear Power Plant" by Kevin Riggle

Include Metric Units by Graham Nelson.

1.0 G (in US units, in G) or 1 gallon (in gallons, singular) or 2 gallons
(in gallons, plural) or 1 gal (in gals, singular) or 2 gals (in
gals, plural) specifies a volume.

Volumetric flow is a kind of value.

1.0 G/s (in US units, in G/s) or 1 gallon per second (in gallons per second, singular) or 2 gallons per second (in gallons per second, plural) or 1 gal/s (in gals/s, singular) or 2 gals/s (in gals/s, plural) specifies a volumetric flow.

Volumetric flow times elapsed time specifies a volume.


Control Room is a room.  The control panel is an object in Control Room. Instead of examining the control panel: say "The screen reads:[line break][line break][fixed letter spacing]       APPLE NUCLEAR POWER PLANT[line break]        STATUS REPORT - DAY [line break][line break]WARNINGS:[line break][line break][if the current temperature of the reactor core is greater than 800 degrees Centigrade] REACTOR OVERHEATED[line break][end if][if the current temperature of the heat exchanger is greater than 500 degrees Centigrade] HEAT EXCHANGER OVERHEATED[line break][end if][if the current output power of the turbine is greater than 2000 kilowatts] TURBINE OVERLOADED[line break][end if][if the current temperature of the cooling tower is greater than 300 degrees Centigrade] COOLING TOWER OVERHEATED[line break][end if][if the current output power of the turbine is less than 1000 kilowatts] POWER OUTPUT LOW[line break][end if][if the coolant volume of the Emergency Cooling System is less than 200 gal] EMERGENCY COOLANT LOW[line break][end if][if the coolant volume of the Primary Cooling System is less than 100 gal] PRIMARY COOLANT LOW[line break][end if][if the coolant volume of the Secondary Cooling System is less than 100 gal] SECONDARY COOLANT LOW[line break][end if][line break]DAMAGE:[line break][line break][if the damage of the reactor core is greater than 3] REACTOR CORE DAMAGED[line break][end if][if the damage of the Primary Cooling System is greater than 4] PRIMARY COOLANT LEAK[line break][end if][if the damage of the Secondary Cooling System is greater than 4] SECONDARY COOLANT LEAK[line break][end if][if the damage of the Emergency Cooling System is greater than 2] EMERGENCY COOLANT LEAK[line break][end if][if the Primary Cooling System is broken] PRIMARY COOLANT PUMP FAILURE[line break][end if][if the Secondary Cooling System is broken] SECONDARY COOLANT PUMP FAILURE[line break][end if][if the heat exchanger is broken] HEAT EXCHANGER FAILURE[line break][end if][if the turbine is broken] TURBINE FAILURE[line break][end if][line break]"; say "INDICATORS:[line break] REACTOR TEMP. (MAX 800) [current temperature of the reactor core][line break] HEAT EXCHANGER TEMP. (MAX 500) [current temperature of the heat exchanger][line break] COOLING TOWER TEMP. (MAX 300) [current temperature of the cooling tower][line break] POWER OUTPUT (MAX 2000KW) [current output power of the turbine in KW][line break] AVERAGE POWER OUTPUT  [line break] CONTROL RODS- [current control rod position of the reactor core][line break] COOLANTS[line break]  EMERGENCY  LEVEL- [coolant volume of the Emergency Cooling System in G]  FLOW- [coolant flow rate of the Emergency Cooling System][line break]  PRIMARY    LEVEL- [coolant volume of the Primary Cooling System in G]  FLOW- [coolant flow rate of the Primary Cooling System][line break]  SECONDARY  LEVEL- [coolant volume of the Secondary Cooling System in G]  FLOW- [coolant flow rate of the Secondary Cooling System][variable letter spacing][paragraph break]There is a dial next to the screen labeled 'Control Rods'. It is currently set to [current control rod position of the reactor core]."

A breakable is a kind of thing. A breakable can be broken or unbroken. A breakable is usually unbroken.

Understand the command "break" as something new. Understand "break [something]" as breaking. Breaking is an action applying to one thing. Check breaking: if the noun is not a breakable, say "You can't break that." instead. Carry out breaking: say "Crash!"; now the noun is broken. Before printing the name of a broken breakable: say "broken ".

Reactor Room is a room. The reactor core is an object in Reactor Room. The turbine is a breakable in Reactor Room. The heat exchanger is a breakable in Reactor Room.  The Emergency Cooling System is an object in Reactor Room. The Primary Cooling System is a breakable in Reactor Room. The Secondary Cooling System is a breakable in Reactor Room.

[reactor core]
The reactor core has a number called current heat flow. The current heat flow of the reactor core is usually 0.
The reactor core has a number called life. The life of the reactor core is usually 0.
The reactor core has a temperature called current temperature. The current temperature of the reactor core is usually 25C.
The reactor core has a number called damage. The damage of the reactor core is usually 0.
The reactor core has a number called current control rod position. The current control rod position is usually 0.
The reactor core has a number called previous control rod position. The previous control rod position is usually 0.
The reactor core has a number called antipenultimate control rod position. The antipenultimate control rod position is usually 0.

[turbine]
The turbine has a power called current output power. The current output power of the turbine is usually 0 kilowatts.

[heat exchanger]
The heat exchanger has a temperature called current temperature.  The current temperature of the heat exchanger is usually 25C.

[Emergency Cooling System]
The Emergency Cooling System has a volume called coolant volume. The coolant volume of the Emergency Cooling System is usually 0 gallons.
The Emergency Cooling System has a volumetric flow called coolant flow rate. The coolant flow rate of the Emergency Cooling System is usually 0 gal/s.
The Emergency Cooling System has a number called damage. The damage of the Emergency Cooling System is usually 0.

[Primary Cooling System]
The Primary Cooling System has a volume called coolant volume. The coolant volume of the Primary Cooling System is usually 0 gallons.
The Primary Cooling System has a volumetric flow called coolant flow rate. The coolant flow rate of the Primary Cooling System is usually 0 gal/s.
The Primary Cooling System has a number called damage. The damage of the Primary Cooling System is usually 0.

[Secondary Cooling System]
The Secondary Cooling System has a volume called coolant volume. The coolant volume of the Secondary Cooling System is usually 0 gallons.
The Secondary Cooling System has a volumetric flow called coolant flow rate. The coolant flow rate of the Secondary Cooling System is usually 0 gal/s.
The Secondary Cooling System has a number called damage. The damage of the Secondary Cooling System is usually 0.





Outdoors is a room. The cooling tower is an object in Outdoors.

[cooling tower]
The cooling tower has a temperature called current temperature.  The current temperature of the cooling tower is usually 25C.


Reactor Room is east of the control room. Outdoors is north of the Reactor Room.
