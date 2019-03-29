"Nuclear Power Plant" by Kevin Riggle

Include Metric Units by Graham Nelson.

1.0 G (in US units, in G) or 1 gallon (in gallons, singular) or 2 gallons
(in gallons, plural) or 1 gal (in gals, singular) or 2 gals (in
gals, plural) specifies a volume.

Volumetric flow is a kind of value.

1.0 G/s (in US units, in G/s) or 1 gallon per second (in gallons per second, singular) or 2 gallons per second (in gallons per second, plural) or 1 gal/s (in gals/s, singular) or 2 gals/s (in gals/s, plural) specifies a volumetric flow.

Volumetric flow times elapsed time specifies a volume.


The current day is a number that varies. The current day is 0.

The total equipment damage is a number that varies. The total equipment damage is 0.

The total power output is a power that varies. The total power output is 0 kilowatts.


A settable is a kind of thing.

Control Room is a room. "The control room of the Apple Nuclear Power Plant. It has a functional-looking control panel with a screen inset into it."  The control panel is scenery in Control Room. The control panel is fixed in place. The control dial is a settable on the control panel. The description of the control dial is "There is a dial next to the screen labeled 'Control Rods'. It is currently set to [current control rod position of the reactor core]." The control dial is fixed in place. Understand "rods" as the control dial. Understand "control rods" as the control dial. Understand "screen" as the control panel.

Instead of examining the control panel: say "The screen reads:[line break][line break][fixed letter spacing]       APPLE NUCLEAR POWER PLANT[line break]        STATUS REPORT - DAY [current day][line break][line break]WARNINGS:[line break][line break][if the current temperature of the reactor core is greater than 800 degrees Centigrade] REACTOR OVERHEATED[line break][end if][if the current temperature of the heat exchanger is greater than 500 degrees Centigrade] HEAT EXCHANGER OVERHEATED[line break][end if][if the current output power of the turbine is greater than 2000 kilowatts] TURBINE OVERLOADED[line break][end if][if the current temperature of the cooling tower is greater than 300 degrees Centigrade] COOLING TOWER OVERHEATED[line break][end if][if the current output power of the turbine is less than 1000 kilowatts] POWER OUTPUT LOW[line break][end if][if the coolant volume of the Emergency Cooling System is less than 200 gal] EMERGENCY COOLANT LOW[line break][end if][if the coolant volume of the Primary Cooling System is less than 100 gal] PRIMARY COOLANT LOW[line break][end if][if the coolant volume of the Secondary Cooling System is less than 100 gal] SECONDARY COOLANT LOW[line break][end if][line break]DAMAGE:[line break][line break][if the damage of the reactor core is greater than 3] REACTOR CORE DAMAGED[line break][end if][if the damage of the Primary Cooling System is greater than 4] PRIMARY COOLANT LEAK[line break][end if][if the damage of the Secondary Cooling System is greater than 4] SECONDARY COOLANT LEAK[line break][end if][if the damage of the Emergency Cooling System is greater than 2] EMERGENCY COOLANT LEAK[line break][end if][if the Primary Cooling System is broken] PRIMARY COOLANT PUMP FAILURE[line break][end if][if the Secondary Cooling System is broken] SECONDARY COOLANT PUMP FAILURE[line break][end if][if the heat exchanger is broken] HEAT EXCHANGER FAILURE[line break][end if][if the turbine is broken] TURBINE FAILURE[line break][end if][line break]"; say "INDICATORS:[line break] REACTOR TEMP. (MAX 800) [current temperature of the reactor core][line break] HEAT EXCHANGER TEMP. (MAX 500) [current temperature of the heat exchanger][line break] COOLING TOWER TEMP. (MAX 300) [current temperature of the cooling tower][line break] POWER OUTPUT (MAX 2000KW) [current output power of the turbine in KW][line break] AVERAGE POWER OUTPUT  [line break] CONTROL RODS- [current control rod position of the reactor core][line break] COOLANTS[line break]  EMERGENCY  LEVEL- [coolant volume of the Emergency Cooling System in G]  FLOW- [coolant flow rate of the Emergency Cooling System][line break]  PRIMARY    LEVEL- [coolant volume of the Primary Cooling System in G]  FLOW- [coolant flow rate of the Primary Cooling System][line break]  SECONDARY  LEVEL- [coolant volume of the Secondary Cooling System in G]  FLOW- [coolant flow rate of the Secondary Cooling System][variable letter spacing][paragraph break]There is a dial next to the screen labeled 'Control Rods'. It is currently set to [current control rod position of the reactor core]."


Understand "set [something] to [a number]" as numbered setting it to. Numbered setting it to is an action applying to one thing and one number. Understand "turn [something] to [a number]" as numbered setting it to. Understand "twist [something] to [a number]" as numbered setting it to. Understand "twiddle [something] to [a number]" as numbered setting it to. Understand "frob [something] to [a number]" as numbered setting it to.

Instead of setting the control dial to:
	say "The dial is numerical, labeled between 0 and 100."

Check numbered setting it to:
	if the noun is not a settable:
		try setting the noun to the topic understood instead;
	otherwise if the number understood is less than 0 or the number understood is greater than 100:
		try setting the noun to the topic understood instead.

Carry out numbered setting it to:
	say "You set [the noun] to [the number understood].";
	now the current control rod position of the reactor core is the number understood.

Test dial with "set dial to 10 / set dial to 1000 / set dial to foo / set panel to 10 / set panel to 1000 / set panel to foo".


A breakable is a kind of thing. A breakable can be broken or unbroken. A breakable is usually unbroken.

Understand the command "break" as something new. Understand "break [something]" as breaking. Breaking is an action applying to one thing. Check breaking: if the noun is not a breakable, say "You can't break that." instead. Carry out breaking: say "Crash!"; now the noun is broken. Before printing the name of a broken breakable: say "broken ".

Reactor Room is a room. The reactor core is an object in Reactor Room. The reactor core is fixed in place. The turbine is a breakable in Reactor Room. The turbine is fixed in place. The heat exchanger is a breakable in Reactor Room. The heat exchanger is fixed in place. The Emergency Cooling System is an object in Reactor Room. The Emergency Cooling System is fixed in place. The Primary Cooling System is a breakable in Reactor Room. The Primary Cooling System is fixed in place. The Secondary Cooling System is a breakable in Reactor Room. The Secondary Cooling System is fixed in place.

[reactor core]
The reactor core has a number called current heat flow. The current heat flow of the reactor core is usually 0.
The reactor core has a number called lifetime. The lifetime of the reactor core is usually 0.
The reactor core has a temperature called current temperature. The current temperature of the reactor core is usually 25C.
The reactor core has a number called damage. The damage of the reactor core is usually 0.
The reactor core has a number called current control rod position. The current control rod position is usually 0.
The reactor core has a number called penultimate control rod position. The penultimate control rod position is usually 0.
The reactor core has a number called antipenultimate control rod position. The antipenultimate control rod position is usually 0.

[turbine]
The turbine has a power called current output power. The current output power of the turbine is usually 0 kilowatts.
The turbine has a number called damage. The damage of the turbine is usually 0.

[heat exchanger]
The heat exchanger has a temperature called current temperature.  The current temperature of the heat exchanger is usually 25C.
The heat exchanger has a number called damage. The damage of the heat exchanger is usually 0.

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





Outdoors is a room. The cooling tower is an object in Outdoors. The cooling tower is fixed in place.

[cooling tower]
The cooling tower has a temperature called current temperature.  The current temperature of the cooling tower is usually 25C.


Reactor Room is east of the control room. Outdoors is north of the Reactor Room.



Repairing is an action applying to nothing. Understand "repair" as repairing. Understand "maintenance" as repairing.

Repairing silently is an action applying to nothing.

Equation - Total Equipment Damage Equation
	D1 = D0 + 2*R + E + P + H + S + T
where D1 is a number, D0 is a number, R is a number, E is a number, P is a number, H is a number, S is a number, and T is a number.

Equation - Maintenance Days Equation
	M = 5 + 3 * (RD + ED + PD + SD + HD + TD)
where M is a number, RD is a number, ED is a number, PD is a number, SD is a number, HD is a number, and TD is a number.

Carry out repairing:
	try repairing silently;
	if the total equipment damage is greater than 30:
		say "Oof! The total equipment damage sustained during this period was SEVERE!";
	otherwise if the total equipment damage is greater than 20:
		say "The total equipment damage sustained during this period was HEAVY.";
	otherwise if the total equipment damage is greater than 10:
		say "The total equipment damage sustained during this period was MODERATE.";
	otherwise:
		say "The total equipment damage sustained during this period was very light."


Carry out repairing silently:
	[repair]
	now the coolant volume of the Emergency Cooling System is 300 gallons;
	now the coolant volume of the Primary Cooling System is 120 gallons;
	now the coolant volume of the Secondary Cooling System is 120 gallons;
	now the current temperature of the reactor core is 25C;
	now the current temperature of the heat exchanger is 25C;
	now the current temperature of the cooling tower is 25C;
	[Total Equipment Damage]
	let D0 be the total equipment damage;
	let R be the damage of the reactor core;
	let E be the damage of the Emergency Cooling System;
	let P be the damage of the primary cooling system;
	let H be the damage of the heat exchanger;
	let S be the damage of the Secondary Cooling System;
	let T be the damage of the turbine;
	let D1 be given by the Total Equipment Damage Equation;
	now the total equipment damage is D1;
	[Maintenance Days]
	let RD be 0;
	if the damage of the reactor core is greater than 3:
		now RD is 10;
	let ED be 0;
	if the damage of the Emergency Cooling System is greater than 3:
		now ED is 1;
	let PD be 0;
	if the damage of the Primary Cooling System is greater than 3:
		now PD is 1;
	let SD be 0;
	If the damage of the Secondary Cooling System is greater than 3:
		now SD is 1;
	if the Primary Cooling System is broken:
		increase PD by 2;
	if the Secondary Cooling System is broken:
		increase SD by 2;
	let HD be 0;
	if the Heat Exchanger is broken:
		now HD is 3;
	let TD be 0;
	if the turbine is broken:
		now TD is 3;
	let M be given by the Maintenance Days Equation;
	increase the current day by M;
	[reset]
	now the damage of the reactor core is 0;
	now the damage of the Emergency Cooling System is 0;
	now the damage of the Primary Cooling System is 0;
	now the damage of the Secondary Cooling System is 0;
	now the damage of the heat exchanger is 0;
	now the damage of the turbine is 0;
	now the Primary Cooling System is unbroken;
	now the Secondary Cooling System is unbroken;
	now the heat exchanger is unbroken;
	now the turbine is unbroken;
	now the coolant flow rate of the Emergency Cooling System is 0 gal/s;
	now the coolant flow rate of the Primary Cooling System is 0 gal/s;
	now the coolant flow rate of the Secondary Cooling System is 0 gal/s;
	now the current output power of the turbine is 0 kilowatts.
	
Initiating silently is an action applying to nothing.

Carry out initiating silently:
	now the current heat flow of the reactor core is 0;
	now the lifetime of the reactor core is 0;
	now the current day is 0;
	now the total power output is 0 kilowatts;
	now the current control rod position of the reactor core is 0;
	now the penultimate control rod position of the reactor core is 0;
	now the antipenultimate control rod position of the reactor core is 0.

When play begins:
	try repairing silently;
	try initiating silently;
	try advancing silently;
	say "To advance the day, use 'sleep' or 'advance'. To repair the reactor, use 'repair'."


Advancing is an action applying to nothing. Instead of sleeping, try advancing. Instead of exiting, try advancing.

Advancing silently is an action applying to nothing.

Carry out advancing:
	try advancing silently;
	say "The next day...".

Carry out advancing silently:
	increment the current day.
[	now the damage of the reactor core is ]