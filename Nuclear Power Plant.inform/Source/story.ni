"Nuclear Power Plant" by Kevin Riggle

Include Metric Units by Graham Nelson.

[UNITS]

[Gallons]
1.0 G (in US units, in G) or 1 gallon (in gallons, singular) or 2 gallons
(in gallons, plural) or 1 gal (in gals, singular) or 2 gals (in
gals, plural) specifies a volume equivalent to 3.785 liters.

[Volumetric flow]
Volumetric flow is a kind of value.

1.0 G/day (in US units, in G/day) or 1 gallon per day (in gallons per day, singular) or 2 gallons per day (in gallons per day, plural) or 1 gal/d (in gals/d, singular) or 2 gals/d (in gals/d, plural) or 1 gal/day (in gals/day, singular) or 2 gals/day (in gals/day, plural) specifies a volumetric flow.

Volumetric flow times elapsed time specifies a volume.

[Heat flow]
Heat flow rate is a kind of value.

1.0 KW/day (in Metric units, in KW/day) or 1 kilowatt per day (in kilowatts per day, singular) or 2 kilowatts per day (in kilowatts per day, plural) or 1 kilowatt/day (in kilowatts/day, singular) or 2 kilowatts/day (in kilowatts/day, plural) or 1 kW/d (in kW/d) specifies a heat flow rate.

Heat flow rate times elapsed time specifies a power.

[Volumetric heat capacity]
Volumetric heat capacity is a kind of value.

1.0 KW/gallon (in KW/gallon) or 1 kilowatt per gallon (in kilowatts per gallon, singular) or 2 kilowatts per gallon (in kilowatts per gallon, plural) or 1 kilowatt/gallon (in kilowatts/gallon, singular) or 2 kilowatts/gallon (in kilowatts/gallon, plural) or 1 kilowatt/gal (in kilowatts/gal, singular) or 2 kilowatts/gal (in kilowatts/gal, plural) or 1 KW/gal (in KW/gal) specifies a volumetric heat capacity.

Volumetric heat capacity times a volume specifies a power.

[Volumetric specific heat capacity]
Volumetric specific heat capacity is a kind of value.

1.0 KW/gal/C (in US units, in KW/gal/C) or 1 kilowatt per gallon per degree
centigrade (in kilowatts per gallon per degree centigrade, singular) or 2 kilowatts per gallon per degree centigrade (in kilowatts per gallon per degree centigrade, plural) specifies a volumetric specific heat capacity.

Volumetric specific heat capacity times a temperature specifies a volumetric heat capacity.


[GAME]

[Debug output]

Debug-output is a truth state that varies.  Debug-output is usually false.

Understand "toggle debug output" as toggling debug output.  Understand "toggle debugging" as toggling debug output.  Toggling debug output is an action out of world.

Carry out toggling debug output:
	if debug-output is false, now debug-output is true;
	otherwise now debug-output is false.

Report toggling debug output:
	say "Debug output is now [if debug-output is true]ON[otherwise]OFF[end if]."

[Some variables]
The current day is a number that varies. The current day is 0.

The total equipment damage is a real number that varies. The total equipment damage is 0.

The total power output is a power that varies. The total power output is 0 kilowatts.

[Settables]
A settable is a kind of thing.  A settable has a number called current setting. The current setting is usually 0.

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
	now the current setting of the noun is the number understood.

Test dial with "set dial to 10 / set dial to 1000 / set dial to foo / set panel to 10 / set panel to 1000 / set panel to foo".

[Breakables]
A breakable is a kind of thing. A breakable can be broken or unbroken. A breakable is usually unbroken.

Understand the command "break" as something new. Understand "break [something]" as breaking. Breaking is an action applying to one thing. Check breaking: if the noun is not a breakable, say "You can't break that." instead. Carry out breaking: say "Crash!"; now the noun is broken. Before printing the name of a broken breakable: say "broken ".


[The Control Room]

Control Room is a room. "The control room of the Apple Nuclear Power Plant. It has a functional-looking control panel with a screen inset into it."  The control panel is scenery in Control Room. The control panel is fixed in place. The control dial is a settable on the control panel. The description of the control dial is "There is a dial next to the screen labeled 'Control Rods'. It is currently set to [current setting of the control dial]." The control dial is fixed in place. Understand "rods" as the control dial. Understand "control rods" as the control dial. Understand "screen" as the control panel.

Instead of examining the control panel: say "The screen reads:[line break][line break][fixed letter spacing]       APPLE NUCLEAR POWER PLANT[line break]        STATUS REPORT - DAY [current day][line break][line break]WARNINGS:[line break][line break][if the current temperature of the reactor core is greater than 800 degrees Centigrade] REACTOR OVERHEATED[line break][end if][if the current temperature of the heat exchanger is greater than 500 degrees Centigrade] HEAT EXCHANGER OVERHEATED[line break][end if][if the current output power of the turbine is greater than 2000 kilowatts] TURBINE OVERLOADED[line break][end if][if the current temperature of the cooling tower is greater than 300 degrees Centigrade] COOLING TOWER OVERHEATED[line break][end if][if the current output power of the turbine is less than 1000 kilowatts] POWER OUTPUT LOW[line break][end if][if the coolant volume of the Emergency Cooling System is less than 200 gal] EMERGENCY COOLANT LOW[line break][end if][if the coolant volume of the Primary Cooling System is less than 100 gal] PRIMARY COOLANT LOW[line break][end if][if the coolant volume of the Secondary Cooling System is less than 100 gal] SECONDARY COOLANT LOW[line break][end if][line break]DAMAGE:[line break][line break][if the damage of the reactor core is greater than 3] REACTOR CORE DAMAGED[line break][end if][if the leak rate of the Primary Cooling System is greater than 4 gal/day] PRIMARY COOLANT LEAK[line break][end if][if the leak rate of the Secondary Cooling System is greater than 4 gal/day] SECONDARY COOLANT LEAK[line break][end if][if the leak rate of the Emergency Cooling System is greater than 2 gal/day] EMERGENCY COOLANT LEAK[line break][end if][if the Primary Cooling System is broken] PRIMARY COOLANT PUMP FAILURE[line break][end if][if the Secondary Cooling System is broken] SECONDARY COOLANT PUMP FAILURE[line break][end if][if the heat exchanger is broken] HEAT EXCHANGER FAILURE[line break][end if][if the turbine is broken] TURBINE FAILURE[line break][end if][line break]"; say "INDICATORS:[line break] REACTOR TEMP. (MAX 800) [current temperature of the reactor core][line break] HEAT EXCHANGER TEMP. (MAX 500) [current temperature of the heat exchanger][line break] COOLING TOWER TEMP. (MAX 300) [current temperature of the cooling tower][line break] POWER OUTPUT (MAX 2000KW) [current output power of the turbine in KW][line break] AVERAGE POWER OUTPUT  [line break] CONTROL RODS- [current control rod position of the reactor core][line break] COOLANTS[line break]  EMERGENCY  LEVEL- [coolant volume of the Emergency Cooling System in G]  FLOW- [coolant flow rate of the Emergency Cooling System][line break]  PRIMARY    LEVEL- [coolant volume of the Primary Cooling System in G]  FLOW- [coolant flow rate of the Primary Cooling System][line break]  SECONDARY  LEVEL- [coolant volume of the Secondary Cooling System in G]  FLOW- [coolant flow rate of the Secondary Cooling System][variable letter spacing][paragraph break]There is a dial next to the screen labeled 'Control Rods'. It is currently set to [current setting of the control dial]."


[The Reactor Room]

Reactor Room is a room. The reactor core is an object in Reactor Room. The reactor core is fixed in place. The turbine is a breakable in Reactor Room. The turbine is fixed in place. The heat exchanger is a breakable in Reactor Room. The heat exchanger is fixed in place. The Emergency Cooling System is an object in Reactor Room. The Emergency Cooling System is fixed in place. The Primary Cooling System is a breakable in Reactor Room. The Primary Cooling System is fixed in place. The Secondary Cooling System is a breakable in Reactor Room. The Secondary Cooling System is fixed in place.

[reactor core]
The reactor core has a heat flow rate called current heat flow rate. The current heat flow rate of the reactor core is usually 0 kilowatts/day.
The reactor core has a real number called lifetime. The lifetime of the reactor core is usually 0.
The reactor core has a temperature called current temperature. The current temperature of the reactor core is usually 25C.
The reactor core has a number called damage. The damage of the reactor core is usually 0.
The reactor core has a number called current control rod position. The current control rod position is usually 0.
The reactor core has a number called penultimate control rod position. The penultimate control rod position is usually 0.
The reactor core has a number called antepenultimate control rod position. The antepenultimate control rod position is usually 0.

[turbine]
The turbine has a power called current output power. The current output power of the turbine is usually 0 kilowatts.
The turbine has a number called damage. The damage of the turbine is usually 0.

[heat exchanger]
The heat exchanger has a temperature called current temperature.  The current temperature of the heat exchanger is usually 25C.
The heat exchanger has a number called damage. The damage of the heat exchanger is usually 0.

[Emergency Cooling System]
The Emergency Cooling System has a heat flow rate called current heat flow rate. The current heat flow rate of the Emergency Cooling System is usually 0 kilowatts/day.
The Emergency Cooling System has a volume called coolant volume. The coolant volume of the Emergency Cooling System is usually 0 gallons.
The Emergency Cooling System has a volumetric flow called coolant flow rate. The coolant flow rate of the Emergency Cooling System is usually 0 gals/day.
The Emergency Cooling System has a volumetric flow called leak rate. The leak rate of the Emergency Cooling System is usually 0 gals/day.

[Primary Cooling System]
The Primary Cooling System has a heat flow rate called current heat flow rate. The current heat flow rate of the Primary Cooling System is usually 0 kilowatts/day.
The Primary Cooling System has a volume called coolant volume. The coolant volume of the Primary Cooling System is usually 0 gallons.
The Primary Cooling System has a volumetric flow called coolant flow rate. The coolant flow rate of the Primary Cooling System is usually 0 gals/day.
The Primary Cooling System has a volumetric flow called leak rate. The leak rate of the Primary Cooling System is usually 0 gals/day.

[Secondary Cooling System]
The Secondary Cooling System has a volume called coolant volume. The coolant volume of the Secondary Cooling System is usually 0 gallons.
The Secondary Cooling System has a volumetric flow called coolant flow rate. The coolant flow rate of the Secondary Cooling System is usually 0 gals/day.
The Secondary Cooling System has a volumetric flow called leak rate. The leak rate of the Secondary Cooling System is usually 0 gals/day.



[The Outdoors]

Outdoors is a room. The cooling tower is an object in Outdoors. The cooling tower is fixed in place.

[cooling tower]
The cooling tower has a temperature called current temperature.  The current temperature of the cooling tower is usually 25C.


[Room layout]
Reactor Room is east of the control room. Outdoors is north of the Reactor Room.


[Repairing]

Repairing is an action applying to nothing. Understand "repair" as repairing. Understand "maintenance" as repairing.

Repairing silently is an action applying to nothing.

Equation - Total Equipment Damage Equation
	D1 = D0 + 2*R + E + P + H + S + T
where D1 is a real number, D0 is a real number, R is a real number, E is a real number, P is a real number, H is a real number, S is a real number, and T is a real number.

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
	[from http://www.ifwiki.org/index.php/Inform_7_for_Programmers/Part_4
	-- "We can always multiply and divide a unit by a plain number. Multiplying and dividing by one is how we explicitly typecast between units and numbers."]
	let E be the leak rate of the Emergency Cooling System times 1 day divided by 1 gal;
	let P be the leak rate of the primary cooling system times 1 day divided by 1 gal;
	let H be the damage of the heat exchanger;
	let S be the leak rate of the Secondary Cooling System times 1 day divided by 1 gal;
	let T be the damage of the turbine;
	let D1 be given by the Total Equipment Damage Equation;
	now the total equipment damage is D1;
	[Maintenance Days]
	let RD be 0;
	if the damage of the reactor core is greater than 3:
		now RD is 10;
	let ED be 0;
	if the leak rate of the Emergency Cooling System is greater than 3 gals/day:
		now ED is 1;
	let PD be 0;
	if the leak rate of the Primary Cooling System is greater than 3 gals/day:
		now PD is 1;
	let SD be 0;
	If the leak rate of the Secondary Cooling System is greater than 3 gals/day:
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
	now the leak rate of the Emergency Cooling System is 0 gal/day;
	now the leak rate of the Primary Cooling System is 0 gal/day;
	now the leak rate of the Secondary Cooling System is 0 gal/day;
	now the damage of the heat exchanger is 0;
	now the damage of the turbine is 0;
	now the Primary Cooling System is unbroken;
	now the Secondary Cooling System is unbroken;
	now the heat exchanger is unbroken;
	now the turbine is unbroken;
	now the coolant flow rate of the Emergency Cooling System is 0 gal/day;
	now the coolant flow rate of the Primary Cooling System is 0 gal/day;
	now the coolant flow rate of the Secondary Cooling System is 0 gal/day;
	now the current output power of the turbine is 0 kilowatts.


[Initial setup]
	
Initiating silently is an action applying to nothing.

Carry out initiating silently:
	now the current heat flow rate of the reactor core is 0 kilowatts/day;
	now the lifetime of the reactor core is 0;
	now the current day is 0;
	now the total power output is 0 kilowatts;
	now the current control rod position of the reactor core is 0;
	now the penultimate control rod position of the reactor core is 0;
	now the antepenultimate control rod position of the reactor core is 0.

When play begins:
	try repairing silently;
	try initiating silently;
	try advancing silently;
	say "To advance the day, use 'sleep' or 'advance'. To repair the reactor, use 'repair'."


[Advancing the simulation clock]

Advancing is an action applying to nothing. Instead of sleeping, try advancing. Instead of exiting, try advancing.

Advancing silently is an action applying to nothing.

Carry out advancing:
	try advancing silently;
	say "The next day...".

Equation - Reactor Heat Flow Rate Equation
	HF = (P0*C0 + P1*C1 + P2*C2) / 2500 * (100 - RL)
where HF is a heat flow rate, P0 is a heat flow rate, C0 is a number, P1 is a heat flow rate, C1 is a number, P2 is a heat flow rate, C2 is a number, and RL is a real number.

Equation - Rate of Heat Flow Equation
	NF = CF * CH * dT
where NF is a heat flow rate, CF is a volumetric flow, CH is a volumetric specific heat capacity, and dT is a temperature.

Equation - Reactor Temperature Equation 1
	R1 = R0 + RF*D*(V/Z) - EF*D*(V/Z) - PF*D*(V/Z) - X
where R1 is a temperature, R0 is a temperature, D is an elapsed time, V is a temperature, Z is a power, RF is a heat flow rate, EF is a heat flow rate, PF is a heat flow rate, and X is a temperature.

Carry out advancing silently:
	increment the current day;
	[WARNINGS]
	[reactor core]
	if the current temperature of the reactor core is greater than 800 degrees Centigrade:
		let reactor damage change be 1;
		if the current temperature of the reactor core is greater than 850 degrees Centigrade:
			increment the reactor damage change;
		if the current temperature of the reactor core is greater than 900 degrees Centigrade:
			increment the reactor damage change;
		if the current temperature of the reactor core is greater than 950 degrees Centigrade:
			increase the reactor damage change by 2;
		increase the damage of the reactor core by the reactor damage change;
		increment the leak rate of the Primary Cooling System;
		let emergency cooling leak rate change be 1 gal/day;
		if the current temperature of the reactor core is greater than 850 degrees Centigrade:
			increment the emergency cooling leak rate change;
		increase the leak rate of the Emergency cooling system by the emergency cooling leak rate change;
	[heat exchanger]
	if the current temperature of the heat exchanger is greater than 500 degrees Centigrade:
		let heat exchanger damage change be 1;
		if the current temperature of the heat exchanger is greater than 600 degrees Centigrade:
			increment the heat exchanger damage change;
		increase the damage of the heat exchanger by the heat exchanger damage change;
		increment the leak rate of the Primary Cooling System;
		increment the leak rate of the Secondary Cooling System;
	[turbine]
	if the current output power of the turbine is greater than 2000 kilowatts:
		let turbine damage change be 1;
		if the current output power of the turbine is greater than 2500 kilowatts:
			increment the turbine damage change;
		increase the damage of the turbine by the turbine damage change;
		increment the leak rate of the Secondary Cooling System;
	[cooling tower]
	if the current temperature of the cooling tower is greater than 300 degrees Centigrade:
		increment the leak rate of the Secondary Cooling System;
	[Primary Cooling System]
	if the coolant volume of the Primary Cooling System is less than 100 gallons:
		increment the leak rate of the Primary Cooling System;
	[Secondary Cooling System]
	if the coolant volume of the Secondary Cooling System is less than 100 gallons:
		increment the leak rate of the Secondary Cooling System;
	[DAMAGE]
	[Primary Cooling System]
	if the leak rate of the Primary Cooling System is greater than 4 gal/day and the coolant volume of the Primary Cooling system minus (the leak rate of the Primary Cooling System times 1 day) is greater than 0 gal:
		decrease the coolant volume of the Primary Cooling System by the leak rate of the Primary Cooling System times 1 day;
	[Secondary Cooling System]
	if the leak rate of the Secondary Cooling System is greater than 4 gal/day and the coolant volume of the Secondary Cooling System minus (the leak rate of the Secondary Cooling System times 1 day) is greater than 0 gal:
		decrease the coolant volume of the Secondary Cooling System by the leak rate of the Secondary Cooling System times 1 day;
	[Emergency Cooling System]
	if the leak rate of the Emergency Cooling System is greater than 2 gal/day and the coolant volume of the Emergency Cooling System minus 2 times (the leak rate of the Secondary Cooling System times 1 day) is greater than 0 gal:
		decrease the coolant volume of the Secondary Cooling System by 2 times the leak rate of the Secondary Cooling System times 1 day;
	[XXX TODO this is where we check whether the reactor is out of fuel and end the game]
	[GET NEW CONTROL VALUES]
	[XXX todo add flow rate control values]
	now the antepenultimate control rod position of the reactor core is the penultimate control rod position of the reactor core;
	now the penultimate control rod position of the reactor core is the current control rod position of the reactor core;
	now the current control rod position of the reactor core is the current setting of the control dial;
	[XXX TODO this is where we kick off a maintenance shutdown if various inputs are zero, if we decide to go that way]
	if the coolant flow rate of the Emergency Cooling System is greater than the coolant volume of the Emergency Cooling System divided by 1 day:
		now the coolant flow rate of the Emergency Cooling System is the coolant volume of the Emergency Cooling System divided by 1 day;
	[DAMAGE ASSESSMENT AND OPERATIONAL CALCULATIONS]
	let emergency coolant volume change be the coolant flow rate of the Emergency Cooling System times 1 day;
	if the leak rate of the emergency cooling system is greater than 3 gal/day:
		increase the emergency coolant volume change by 2 times the leak rate of the Emergency Cooling System times 1 day;
	decrease the coolant volume of the Emergency Cooling System by the emergency coolant volume change;
	if the coolant flow rate of the Primary Cooling System is greater than 90 gal/day and a random chance of 5 in 100 succeeds:
		increment the leak rate of the Primary Cooling System;
	if the coolant flow rate of the Secondary Cooling System is greater than 90 gal/day and a random chance of 8 in 100 succeeds:
		increment the leak rate of the Secondary Cooling System;
	if the leak rate of the Primary Cooling System is greater than 5 gal/day:
		now the Primary Cooling System is broken;
	if the leak rate of the Secondary Cooling System is greater than 5 gal/day:
		now the Secondary Cooling System is broken;
	if the coolant flow rate of the Primary Cooling System is greater than 100 gal/day - the leak rate of the primary cooling system * 10 and the Primary Cooling System is broken:
		if 100 gal/day - the leak rate of the Primary Cooling System * 10 is greater than 0 gal/day:
			now the coolant flow rate of the Primary Cooling System is 100 gal/day - the leak rate of the Primary Cooling System * 10;
		otherwise:
			now the coolant flow rate of the Primary Cooling System is 0 gal/day;
	if the coolant flow rate of the Secondary Cooling System is greater than 100 gal/day - the leak rate of the primary cooling system * 10 and the Secondary Cooling System is broken:
		if 100 gal/day - the leak rate of the Secondary Cooling System * 10 is greater than 0 gal/day:
			now the coolant flow rate of the Secondary Cooling System is 100 gal/day - the leak rate of the Secondary Cooling System * 10;
		otherwise:
			now the coolant flow rate of the Primary Cooling System is 0 gal/day;
	[nuke stuff]
	if debug-output is true:
		say "Reactor heat flow before: [current heat flow rate of the reactor core][line break]";
		say "Control rods: [current control rod position of the reactor core]; 1: [penultimate control rod position of the reactor core]; 2: [antepenultimate control rod position of the reactor core]; reactor life: [lifetime of the reactor core][line break]";
	increase the lifetime of the reactor core by the current heat flow rate of the reactor core divided by 50 kilowatts/day;
	let P0 be 30 kilowatts/day;
	let P1 be 60 kilowatts/day;
	let P2 be 10 kilowatts/day;
	let C0 be the current control rod position of the reactor core;
	let C1 be the penultimate control rod position of the reactor core;
	let C2 be the antepenultimate control rod position of the reactor core;
	let RL be the lifetime of the reactor core;
	let HF be given by the Reactor Heat Flow Rate Equation;
	now the current heat flow rate of the reactor core is HF;
	if debug-output is true:
		say "Reactor heat flow after: [current heat flow rate of the reactor core][line break]";
		say "Primary cooling heat flow before: [current heat flow rate of the Primary Cooling System]; Emergency cooling heat flow before: [current heat flow rate of the Emergency Cooling System][line break]";
	if the coolant volume of the Primary Cooling System is greater than 100 gal:
		now the current heat flow rate of the Primary Cooling System is the coolant flow rate of the Primary Cooling System times 100 kilowatts/gallon;
	otherwise:
		[XXX TODO hunh? this seems a little hackish, I'm not sure the math here is right]
		now the current heat flow rate of the Primary Cooling System is the coolant volume of the Primary Cooling System times 1 kilowatt/day divided by 350 gallons;
	let CF be the coolant flow rate of the Emergency Cooling System;
	let CH be 200 kW/gal/C;
	let dT be the current temperature of the reactor core minus 25 degrees Centigrade;
	let NF be given by the Rate of Heat Flow Equation;
	now the current heat flow rate of the Emergency Cooling System is NF;
	if debug-output is true:
		say "Primary cooling heat flow after: [current heat flow rate of the Primary Cooling System]; Emergency cooling heat flow after: [current heat flow rate of the Emergency Cooling System][line break]";
		say "Reactor temp before: [current temperature of the reactor core][line break]";
	let R0 be the current temperature of the reactor core;
	let D be 1 second;
	let V be 1 degree Centigrade;
	let Z be 1 watt;
	let RF be the current heat flow rate of the reactor core;
	let EF be the current heat flow rate of the Emergency Cooling System;
	let PF be the current heat flow rate of the Primary Cooling System;
	let X be 0 degrees Centigrade;
	if the current temperature of the reactor core is greater than 25 degrees Centigrade:
		now X is 5 degrees centigrade;
	let R1 be given by the Reactor Temperature Equation 1;
	if debug-output is true:
		say "Reactor temp after: [R1][line break]";
	let RX be 0 degrees Centigrade;
	if R1 is greater than 25 degrees Centigrade:
		now RX is R1 minus 25 degrees Centigrade;
	let R2 be 25 degrees Centigrade plus RX;
	if debug-output is true:
		say "Reactor temp after2: [R2][line break]";
	now the current temperature of the reactor core is R2.
	
	
	[REACTOR nuke stuff]