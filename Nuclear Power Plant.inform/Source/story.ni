"Apple Nuclear Power Plant" by "Stephen R. Berggren, adapted for interactive fiction by Kevin Riggle"

The story headline is "A simulation".
The story genre is "Non-fiction".
The story creation year is 2021.
The story description is "THIS IS A PRE-RELEASE BUILD! PLEASE DO NOT REDISTRIBUTE! THE RELEASE NUMBER WILL NOT BE UPDATED WHEN CHANGES ARE MADE.

A simulation of a pressurized water nuclear power plant, rendered in the form of an interactive fiction.  As with a real power plant, the goal is to produce a high average electrical power output until all the fuel is used up without injuring anyone.

Unlike a real power plant, it lacks many of their safety mechanisms, as its original author acknowledges.  ('I have some final words to engineers, nuclear technicians, and other qualified readers. ...  Yes, I know it takes much less than a day for a reactor to respond to changes in coolant flow and control rod position.  Besides, who ever heard of a reactor with only one emergency coolant system, and that one with a limited supply of coolant? And, blasphemy of blasphemies, no SCRAM mechanism. ... Several concessions to accuracy were made in order to create a simulation that would provide realistic responses to simple inputs and make an interesting and instructive game.')

Originally written by Stephen R. Berggren in Applesoft BASIC and published in Creative Computing Magazine, December 1980, it has been adapted to interactive fiction using Inform 7 in the hopes of making it more accessible to a modern audience, some forty years later.

The cover art incorporates '#OntheJob - Indian Point NPP Resident Inspector' by the Nuclear Regulatory Commission, used under the terms of its Creative Commons Attribution 2.0 Generic license."

The release number is 1.
Include Vorple Element Manipulation by Juhana Leinonen.
Include Vorple Multimedia by Juhana Leinonen.
Figure - Nuclear power plant diagram is the file "Nuclear power plant diagram.png" ("A diagram of a nuclear power plant.").
Release along with cover art ("A nuclear power plant control panel"), a "FixedStandard" website, style sheet "apple-nuclear-power-plant.css", the file "Figures/Nuclear power plant diagram.png", and the "Vorple" interpreter.

[Include Metric Units by Graham Nelson.]

[UNITS]

[Elapsed time - adapted from Metric Units by Graham Nelson]
Elapsed time is a kind of value.

The specification of elapsed time is "Used to measure how much time
something takes. Inform already has a built-in kind of value called
'time', which counts in minutes and keeps track of the time of day -
which is fine for most stories, but not good enough for science. So we
call this more precise version 'elapsed time'."

1 day (in US units, in days, singular) or 2 days (in US units,
in days, plural) specifies an elapsed time.

1 week (in US units, in weeks, singular) or 2 weeks (in US units,
in weeks, plural) specifies an elapsed time scaled up by 7.

[Temperature - adapted from Metric Units by Graham Nelson]
Temperature is a kind of value.

The specification of temperature is "Used to measure how hot or cold
something is. (Note that Inform writes '1 C' for one coulomb, and '1C' for
one degree centigrade.)"

1.0C (in US units, in C) or 1 degree centigrade (in degrees centigrade,
singular) or 2 degrees centigrade (in degrees centigrade, plural) or 1 degree
Celsius (in degrees Celsius, singular) or 2 degrees Celsius (in degrees
Celsius, plural) specifies a temperature.

[Power - adapted from Metric Units by Graham Nelson]
Power is a kind of value.

The specification of power is "Used to measure how much energy something can
apply in a given time - in the same period of time powerful things can do a lot
while feeble things much less. Typical domestic light bulbs take 60W of power
to run (twice as much as the human brain), and electric heaters perhaps 3kW."

1.0kW (in US units, in kW) or 1 kilowatt (in kilowatts, singular) or
2 kilowatts (in kilowatts, plural) specifies a power.

[Volume]
A volume is a kind of value.
1.0 G (in US units, in G) or 1 gallon (in gallons, singular) or 2 gallons (in gallons, plural) or 1 gal (in gals, singular) or 2 gals (in gals, plural) specifies a volume.

[Volumetric flow]
Volumetric flow is a kind of value.

1.0 G/day (in US units, in G/day) or 1 gallon per day (in gallons per day, singular) or 2 gallons per day (in gallons per day, plural) or 1 gallon/day (in gallons/day, singular) or 2 gallons/day (in gallons/day, plural) or 1 gal/d (in gals/d, singular) or 2 gals/d (in gals/d, plural) or 1 gal/day (in gals/day, singular) or 2 gals/day (in gals/day, plural) specifies a volumetric flow.

Volumetric flow times elapsed time specifies a volume.

[Heat flow]
Heat flow rate is a kind of value.

1.0 KW/day (in US units, in KW/day) or 1 kilowatt per day (in kilowatts per day, singular) or 2 kilowatts per day (in kilowatts per day, plural) or 1 kilowatt/day (in kilowatts/day, singular) or 2 kilowatts/day (in kilowatts/day, plural) or 1 kW/d (in kW/d) specifies a heat flow rate.

Heat flow rate times elapsed time specifies a power.

[Volumetric heat capacity]
Volumetric heat capacity is a kind of value.

1.0 KW/gallon (in US units, in KW/gallon) or 1 kilowatt per gallon (in kilowatts per gallon, singular) or 2 kilowatts per gallon (in kilowatts per gallon, plural) or 1 kilowatt/gallon (in kilowatts/gallon, singular) or 2 kilowatts/gallon (in kilowatts/gallon, plural) or 1 kilowatt/gal (in kilowatts/gal, singular) or 2 kilowatts/gal (in kilowatts/gal, plural) or 1 KW/gal (in KW/gal) specifies a volumetric heat capacity.

Volumetric heat capacity times a volume specifies a power.

[Volumetric specific heat capacity]
Volumetric specific heat capacity is a kind of value.

1.0 KW/gal/C (in US units, in KW/gal/C) or 1 kilowatt per gallon per degree
centigrade (in kilowatts per gallon per degree centigrade, singular) or 2 kilowatts per gallon per degree centigrade (in kilowatts per gallon per degree centigrade, plural) specifies a volumetric specific heat capacity.

Volumetric specific heat capacity times a temperature specifies a volumetric heat capacity.

[Foo]
Foo is a kind of value.
1.0 sq gal/day (in US units, in sq gals/day) or 2 sq gals/day (in sq gals/day, plural) specifies a foo.
A volume times a volumetric flow specifies a foo.

[Bar]
Bar is a kind of value.
1.0 sq gal/kilowatt (in US units, in sq gals/kilowatt, singular) or 2 sq gals/kilowatt (in sq gals/kilowatt, plural) specifies a bar.
Bar times a volumetric heat capacity specifies a volume.

[Define a rounding function over other arithmetic values - h/t https://intfiction.org/t/problems-displaying-values-with-units-math-with-values-that-have-units-generally/50795/3]
Include Easy Unit Values by Otis the Dog.
To decide which K is (original - arithmetic value of kind K) rounded down:
	let neutral-element be the unit value of K;
	let original-as-real be original divided by neutral-element;
	let r be the floor of original-as-real to the nearest whole number;
	let result be r multiplied by neutral-element;
	decide on result.



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
The ambient temperature is always 25 degrees Centigrade.

The current day is a number that varies. The current day is 0.

The most recent maintenance shutdown duration is a number that varies. The most recent maintenance shutdown duration is 0.

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

Test dial with "set dial to 10 / set dial to 1000 / set dial to foo".

[Breakables]
A breakable is a kind of thing. A breakable can be broken or unbroken. A breakable is usually unbroken.

Understand the command "break" as something new. Understand "break [something]" as breaking. Breaking is an action applying to one thing. Check breaking: if the noun is not a breakable, say "You can't break that." instead. Carry out breaking: say "Crash!"; now the noun is broken. Before printing the name of a broken breakable: say "broken ".

[Reading]
A thing has some text called printing. The printing of a thing is usually "blank".
Understand the command "read" as something new. Understand "read [something]" as reading. Reading is an action applying to one thing, requiring light. Check reading: if the printing of the noun is "blank", say "Nothing is written on [the noun]." instead. Carry out reading: say "You read: [printing of the noun][line break]". Report reading: do nothing.

[The Control Room]

Control Room is a room. "The control room of the Apple Nuclear Power Plant. It has a functional-looking control panel with a screen inset into it, and a chair in front of it.  On the wall is a poster with a diagram of a nuclear power plant."  The control panel is scenery in Control Room. The control panel is fixed in place. Understand "screen" as the control panel.

A heavy padded chair is an enterable supporter in the Control Room. "If you sit in the chair, you won't need to examine the screen after advancing the day." The chair is fixed in place. The description of the chair is "A heavy, padded chair for the operator to sit at. It looks comfortable."  Understand "sit down" as entering.

After entering the chair:
	say "You sit down in the heavy padded chair.";
	try examining the control panel.

An instructional brochure is a thing on the control panel. The instructional brochure is fixed in place.  Understand "instructions" as the brochure.  The description is "An instructional brochure, printed in large, friendly letters - 'Basic Operation of Your Apple Nuclear Power Plant'.  It's suspiciously thin for so complex and dangerous a piece of machinery."  The printing of the instructional brochure is "[line break][line break][bold type]
APPLE NUCLEAR POWER PLANT[line break]
by Stephen R. Berggren[line break]
adapted for interactive fiction by Kevin Riggle[roman type]

This program simulates the operation of a nuclear power reactor.  The object is to operate the plant at a maximum average power output without causing a reactor meltdown.

The control rods adjust the amount of heat produced by the reactor.  Primary coolant transfers this heat to the heat exchanger.  Secondary coolant transfers heat from the heat exchanger to the turbine, where power is produced, and finally to the cooling tower.  The emergency coolant is used to help shut down the reactor when other systems fail.  Unlike the other coolants, emergency coolant is not recycled.

The controls are operated by setting the control rod dial and coolant flow controls to the desired settings, with 'set (control) to (number)' (use values from 0 to 100).  If no entry is made, the values will not change.

When the desired entries have been made, use 'sleep' or 'advance' to advance to the next day.

The reactor can be operated until a meltdown occurs or the reactor fuel is exhausted.  The fuel will last about 100 to 150 days.  When the fuel is exhausted, your performance will be evaluated.

If you want to repair damage or replace coolant, bring the reactor temperature down below 100C and shut off the coolant flows.  This will cause an automatic maintenance shutdown and all coolant will be replenished and repairs made.  The greater the damage, the longer the repairs will take.

[bold type]WARNING: This power plant has NO automatic safety devices!![roman type]".

Test brochure with "x brochure / read brochure / take brochure".

Instead of taking the brochure:
	say "That seems like it should stay near the control panel, just for safety's sake."
	
A nuclear power plant diagram poster is scenery in the control room.

Instead of examining the poster:
	say "You see:";
	if Vorple is supported:
		place an image "Nuclear power plant diagram.png" with the description "A diagram of a nuclear power plant.";
	otherwise:
		display the Figure - Nuclear power plant diagram;
	say "The control rods adjust the amount of heat produced in the reactor vessel.  Primary coolant transfers this heat to the heat exchanger.  Secondary coolant transfers heat from the heat exchanger to the turbine, where power is produced, and finally to the cooling tower.  The emergency coolant is used to help shut down the reactor when other systems fail.  Unlike the other coolants, emergency coolant is not recycled."
	
Test poster with "x poster".

The control dial is a settable on the control panel. The description of the control dial is "There is a dial next to the screen labeled 'Control Rods'. It is currently set to [current setting of the control dial]." The control dial is fixed in place. Understand "rods" as the control dial. Understand "control rods" as the control dial.

The emergency coolant flow control is a settable on the control panel.  The emergency coolant flow control is fixed in place.  The description of the emergency coolant flow control is "Underneath the screen are three controls in a panel section labeled 'Coolant Flow'.  The control labeled 'Emergency' is currently set to [current setting of the emergency coolant flow control]."

The primary coolant flow control is a settable on the control panel.  The primary coolant flow control is fixed in place.  The description of the primary coolant flow control is "Underneath the screen are three controls in a panel section labeled 'Coolant Flow'.  The control labeled 'Primary' is currently set to [current setting of the primary coolant flow control]."

The secondary coolant flow control is a settable on the control panel.  The secondary coolant flow control is fixed in place.  The description of the secondary coolant flow control is "Underneath the screen are three controls in a panel section labeled 'Coolant Flow'.  The control labeled 'Secondary' is currently set to [current setting of the secondary coolant flow control]."

Instead of examining the control panel:
	say "The screen reads:[paragraph break]";
	if Vorple is supported:
		open HTML tag "div" called "control-panel-output";
		open HTML tag "div" called "control-panel-title";
		say "APPLE NUCLEAR POWER PLANT[line break]";
		say "STATUS REPORT - DAY [current day]";
		close HTML tag;
	otherwise:
		say "[fixed letter spacing]";
		say "       APPLE NUCLEAR POWER PLANT[line break]        STATUS REPORT - DAY [current day]";
		say "[paragraph break]";
	say "WARNINGS:[line break][line break][if the current temperature of the reactor core is greater than 800 degrees Centigrade] REACTOR OVERHEATED[line break][end if][if the current temperature of the heat exchanger is greater than 500 degrees Centigrade] HEAT EXCHANGER OVERHEATED[line break][end if][if the current output power of the turbine is greater than 2000 kilowatts] TURBINE OVERLOADED[line break][end if][if the current temperature of the cooling tower is greater than 300 degrees Centigrade] COOLING TOWER OVERHEATED[line break][end if][if the current output power of the turbine is less than 1000 kilowatts] POWER OUTPUT LOW[line break][end if][if the coolant volume of the Emergency Cooling System is less than 200 gal] EMERGENCY COOLANT LOW[line break][end if][if the coolant volume of the Primary Cooling System is less than 100 gal] PRIMARY COOLANT LOW[line break][end if][if the coolant volume of the Secondary Cooling System is less than 100 gal] SECONDARY COOLANT LOW[line break][end if][line break]DAMAGE:[line break][line break][if the damage of the reactor core is greater than 3] REACTOR CORE DAMAGED[line break][end if][if the leak rate of the Primary Cooling System is greater than 4 gal/day] PRIMARY COOLANT LEAK[line break][end if][if the leak rate of the Secondary Cooling System is greater than 4 gal/day] SECONDARY COOLANT LEAK[line break][end if][if the leak rate of the Emergency Cooling System is greater than 2 gal/day] EMERGENCY COOLANT LEAK[line break][end if][if the Primary Cooling System is broken] PRIMARY COOLANT PUMP FAILURE[line break][end if][if the Secondary Cooling System is broken] SECONDARY COOLANT PUMP FAILURE[line break][end if][if the heat exchanger is broken] HEAT EXCHANGER FAILURE[line break][end if][if the turbine is broken] TURBINE FAILURE[line break][end if][line break]";
	say "INDICATORS:[line break] REACTOR TEMP. (MAX 800) [current temperature of the reactor core rounded down][line break] HEAT EXCHANGER TEMP. (MAX 500) [current temperature of the heat exchanger rounded down][line break] COOLING TOWER TEMP. (MAX 300) [current temperature of the cooling tower rounded down][line break] POWER OUTPUT (MAX 2000KW) [current output power of the turbine rounded down][line break] AVERAGE POWER OUTPUT [(total power output divided by current day) rounded down][line break] CONTROL RODS- [current control rod position of the reactor core][line break] COOLANTS[line break]  EMERGENCY  LEVEL- [coolant volume of the Emergency Cooling System rounded down]  FLOW- [coolant flow rate of the Emergency Cooling System rounded down][line break]  PRIMARY    LEVEL- [coolant volume of the Primary Cooling System rounded down]  FLOW- [coolant flow rate of the Primary Cooling System rounded down][line break]  SECONDARY  LEVEL- [coolant volume of the Secondary Cooling System rounded down]  FLOW- [coolant flow rate of the Secondary Cooling System rounded down]";
	if Vorple is supported:
		close HTML tag;
	otherwise:
		say "[variable letter spacing]";
	say "[paragraph break]There is a dial next to the screen labeled 'Control Rods'. It is currently set to [current setting of the control dial].[paragraph break]Underneath the screen are three controls in a panel section labeled 'Coolant Flow'.  'Emergency' is currently set to [current setting of the emergency coolant flow control].  'Primary' is currently set to [current setting of the primary coolant flow control].  'Secondary' is currently set to [current setting of the secondary coolant flow control]."


[The Reactor Room]

Reactor Room is a room. The reactor core is an object in Reactor Room. The reactor core is fixed in place. The turbine is a breakable in Reactor Room. The turbine is fixed in place. The heat exchanger is a breakable in Reactor Room. The heat exchanger is fixed in place. The Emergency Cooling System is an object in Reactor Room. The Emergency Cooling System is fixed in place. The Primary Cooling System is a breakable in Reactor Room. The Primary Cooling System is fixed in place. The Secondary Cooling System is a breakable in Reactor Room. The Secondary Cooling System is fixed in place.

[reactor core]
The reactor core has a heat flow rate called current heat flow rate. The current heat flow rate of the reactor core is usually 0 kilowatts/day.
The reactor core has a real number called lifetime. The lifetime of the reactor core is usually 0.
The reactor core has a temperature called current temperature. The current temperature of the reactor core is usually the ambient temperature.
The reactor core has a number called damage. The damage of the reactor core is usually 0.
The reactor core has a number called current control rod position. The current control rod position is usually 0.
The reactor core has a number called penultimate control rod position. The penultimate control rod position is usually 0.
The reactor core has a number called antepenultimate control rod position. The antepenultimate control rod position is usually 0.

[turbine]
The turbine has a power called current output power. The current output power of the turbine is usually 0 kilowatts.
The turbine has a number called damage. The damage of the turbine is usually 0.

[heat exchanger]
The heat exchanger has a temperature called current temperature.  The current temperature of the heat exchanger is usually the ambient temperature.
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
The Secondary Cooling System has a heat flow rate called current heat flow rate. The current heat flow rate of the Secondary Cooling System is usually 0 kilowatts/day.
The Secondary Cooling System has a volume called coolant volume. The coolant volume of the Secondary Cooling System is usually 0 gallons.
The Secondary Cooling System has a volumetric flow called coolant flow rate. The coolant flow rate of the Secondary Cooling System is usually 0 gals/day.
The Secondary Cooling System has a volumetric flow called leak rate. The leak rate of the Secondary Cooling System is usually 0 gals/day.



[The Outdoors]

Outdoors is a room. The cooling tower is an object in Outdoors. The cooling tower is fixed in place.

[cooling tower]
The cooling tower has a temperature called current temperature.  The current temperature of the cooling tower is usually the ambient temperature.


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
	now the current temperature of the reactor core is the ambient temperature;
	now the current temperature of the heat exchanger is the ambient temperature;
	now the current temperature of the cooling tower is the ambient temperature;
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
	now the most recent maintenance shutdown duration is M;
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
	now the current output power of the turbine is 0 kilowatts;
	now the current setting of the control dial is 0;
	now the current setting of the Emergency Coolant Flow control is 0;
	now the current setting of the Primary Coolant Flow control is 0;
	now the current setting of the Secondary Coolant Flow control is 0.


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
	[try toggling debug output;]
	try repairing silently;
	try initiating silently;
	[try advancing;]
	try advancing silently;
	say "To advance the day, use 'sleep' or 'advance'."


[Advancing the simulation clock]

Advancing is an action applying to nothing. Instead of sleeping, try advancing. Understand "advance" as advancing.

Advancing silently is an action applying to nothing.

Carry out advancing:
	try advancing silently;
	if rule succeeded: 
		say "The next day...";
		if the player is on the heavy padded chair:
			try examining the control panel.

Equation - Reactor Heat Flow Rate Equation
	HF = (P0*C0 + P1*C1 + P2*C2) / 2500 * (100 - RL)
where HF is a heat flow rate, P0 is a heat flow rate, C0 is a number, P1 is a heat flow rate, C1 is a number, P2 is a heat flow rate, C2 is a number, and RL is a real number.

Equation - Rate of Heat Flow Equation
	NF = CF * CH * dT
where NF is a heat flow rate, CF is a volumetric flow, CH is a volumetric specific heat capacity, and dT is a temperature.

Equation - Reactor Temperature Equation
	R1 = R0 + RH*D*(V/Z) - EH*D*(V/Z) - PH*D*(V/Z) - X
where R1 is a temperature, R0 is a temperature, D is an elapsed time, V is a temperature, Z is a power, RH is a heat flow rate, EH is a heat flow rate, PH is a heat flow rate, and X is a temperature.

Equation - Secondary Coolant Heat Flow Equation
	SH = SF * PV / HF2 * (HT - CT) / T
where SH is a heat flow rate, SF is a volumetric flow, PV is a volume, HF2 is a bar, HT is a temperature, CT is a temperature, and T is a temperature.

Equation - Heat Exchanger Temperature Equation
	XT = ((RT - A) * PF + (CT - A) * SF) / (PF + SF + N) + A
where XT is a temperature, RT is a temperature, CT is a temperature, A is a temperature, PF is a volumetric flow, SF is a volumetric flow, and N is a volumetric flow.

Equation - Turbine Output Equation
	GO = (SH / XT * (XT - CT) * 2/3) * D
where GO is a power, SH is a heat flow rate, XT is a temperature, CT is a temperature, and D is an elapsed time.

Equation - Cooling Tower Temperature Equation
	CT = A + ((XT - A) * (SH - (GO/D)) / (SH + M) * 0.75)
where CT is a temperature, A is a temperature, XT is a temperature, SH is a heat flow rate, GO is a power, M is a heat flow rate, and D is an elapsed time.

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
	[check whether the reactor has melted down, and, if so, end the game]
	if the damage of the reactor core is greater than 5:
		if debug-output is true:
			say "going into meltdown!!";
		try melting down;
		end the story;
		rule fails;
	[check whether the reactor is out of fuel and, if so, end the game]
	if 100 minus the lifetime of the reactor core is less than 5:
		if debug-output is true:
			say "ran out of fuel!!";
		end the story;
		rule fails;
	[GET NEW CONTROL VALUES]
	now the antepenultimate control rod position of the reactor core is the penultimate control rod position of the reactor core;
	now the penultimate control rod position of the reactor core is the current control rod position of the reactor core;
	now the current control rod position of the reactor core is the current setting of the control dial;
	now the coolant flow rate of the Emergency Cooling System is the current setting of the emergency coolant flow control times 1 gal/day;
	now the coolant flow rate of the Primary Cooling System is the current setting of the primary coolant flow control times 1 gal/day;
	now the coolant flow rate of the Secondary Cooling System is the current setting of the secondary coolant flow control times 1 gal/day;
	[if no primary/secondary coolant is flowing, the reactor is cold enough, and the control rods are fully engaged, kick off a maintenance shutdown]
	if the current day is greater than 1 and the coolant flow rate of the Primary Cooling System is 0 gal/day and the coolant flow rate of the Secondary Cooling System is 0 gal/day and the current heat flow rate of the reactor core is less than 1 kW/day and the current temperature of the reactor core is less than 100 degrees Centigrade and the current control rod position of the reactor core is 0:
		try repairing silently;
		say "MAINTENANCE SHUTDOWN
		
		You initiate a maintenance shutdown, which lasts for [most recent maintenance shutdown duration] days.";
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
		say "Primary coolant flow before: [coolant flow rate of the Primary Cooling System]; Emergency coolant flow before: [coolant flow rate of the Emergency Cooling System][line break]";
		say "Primary cooling heat flow before: [current heat flow rate of the Primary Cooling System]; Emergency cooling heat flow before: [current heat flow rate of the Emergency Cooling System][line break]";
	[1300 PH = PF% * (100 * (PV% > 100) + PV% * (PV% <  = 100)) / 350]
	let CF be the coolant flow rate of the Primary Cooling System;
	let CV be the coolant volume of the Primary Cooling System;
	if the coolant volume of the Primary Cooling System is greater than 100 gal:
		let CV be 100 gallons;
	let HF1 be CF times CV;
	let HF2 be 350 sq gal/kilowatt;
	let HF be HF1 divided by HF2;
	now the current heat flow rate of the Primary Cooling System is HF;
	let CF be the coolant flow rate of the Emergency Cooling System;
	let CH be 200 kW/gal/C;
	let dT be the current temperature of the reactor core minus the ambient temperature;
	let NF be given by the Rate of Heat Flow Equation;
	now the current heat flow rate of the Emergency Cooling System is NF;
	if debug-output is true:
		say "HF1: [HF1]";
		say "Primary cooling heat flow after: [current heat flow rate of the Primary Cooling System]; Emergency cooling heat flow after: [current heat flow rate of the Emergency Cooling System][line break]";
		say "Reactor temp before: [current temperature of the reactor core][line break]";
	let R0 be the current temperature of the reactor core;
	let D be 1 day;
	let V be 1 degree Centigrade;
	let Z be 1 kilowatt;
	let RH be the current heat flow rate of the reactor core;
	let EH be the current heat flow rate of the Emergency Cooling System;
	let PH be the current heat flow rate of the Primary Cooling System;
	let X be 0 degrees Centigrade;
	if the current temperature of the reactor core is greater than the ambient temperature:
		now X is 5 degrees centigrade;
	let R1 be given by the Reactor Temperature Equation;
	if debug-output is true:
		say "Reactor temp after: [R1][line break]";
	let RX be 0 degrees Centigrade;
	if R1 is greater than the ambient temperature:
		now RX is R1 minus the ambient temperature;
	let R2 be the ambient temperature plus RX;
	if debug-output is true:
		say "Reactor temp after2: [R2][line break]";
	now the current temperature of the reactor core is R2;
	[	XT = ((RT - A) * PF + (CT - A) * SF) / (PF + SF + 1) + A]
	let RT be the current temperature of the reactor core;
	let CT be the current temperature of the cooling tower;
	let A be the ambient temperature;
	let PF be the coolant flow rate of the Primary Cooling System;
	let SF be the coolant flow rate of the Secondary Cooling System;
	let N be 1 gallon/day;
	let XT be given by the Heat Exchanger Temperature Equation;
	if debug-output is true:
		say "Heat exchanger temp before: [current temperature of the heat exchanger][line break]";
	if the heat exchanger is broken:
		now the current temperature of the heat exchanger is the current temperature of the reactor core times 0.8 plus 5 degrees Centigrade;
	otherwise:
		now the current temperature of the heat exchanger is XT;
	if debug-output is true:
		say "Heat exchanger temp after: [current temperature of the heat exchanger][line break]";
	let SF be the coolant flow rate of the Secondary Cooling System;
	let PV be the coolant volume of the Primary Cooling System;
	if the coolant volume of the Primary Cooling System is greater than 100 gal:
		let PV be 100 gallons;
	let HF1 be SF times PV;
	let HF2 be 350 sq gal/kilowatt;
	let HT be the current temperature of the heat exchanger;
	let CT be the current temperature of the cooling tower;
	let T be 1 degree Centigrade;
	let SH be given by the Secondary Coolant Heat Flow Equation;
	if debug-output is true:
		say "SF: [SF]; PV: [PV]; HF1: [HF1]; HF2: [HF2]; HT: [HT]; CT: [CT]; SH: [SH][line break]";
		say "Secondary cooling heat flow before: [current heat flow rate of the Secondary Cooling System][line break]";
	if the heat exchanger is broken:
		now the current heat flow rate of the Secondary Cooling System is the current heat flow rate of the Secondary Cooling System times 0.2;
	otherwise:
		now the current heat flow rate of the Secondary Cooling System is SH;
	if debug-output is true:
		say "Secondary cooling heat flow after: [current heat flow rate of the Secondary Cooling System][line break]";
	let SH be the current heat flow rate of the Secondary Cooling System;
	let XT be the current temperature of the heat exchanger;
	let CT be the current temperature of the cooling tower;
	let D be 1 day;
	let GO be given by the Turbine Output Equation;
	if debug-output is true:
		say "Turbine output power before: [current output power of the turbine][line break]";
	if GO is greater than 2600kW:
		let GO be 2600kW;
	if GO is greater than 0kW and the turbine is not broken:
		now the current output power of the turbine is GO;
	otherwise:
		now the current output power of the turbine is 0kW;
	if debug-output is true:
		say "Turbine output power after: [current output power of the turbine][line break]";
	[	CT = A + ((XT - A) * (SH - (GO/D)) / (SH + 1) * 0.75)]
	let A be the ambient temperature;
	let XT be the current temperature of the heat exchanger;
	let SH be the current heat flow rate of the Secondary Cooling System;
	let GO be the current output power of the turbine;
	let M be 1 kW/day;
	let D be 1 day;
	let CT be given by the Cooling Tower Temperature Equation;
	if debug-output is true:
		say "A: [A]; XT: [XT]; SH: [SH]; GO: [GO]; M: [M]; D: [D]; CT: [CT][line break]";
		say "Cooling tower temp before: [current temperature of the cooling tower][line break]";
	now the current temperature of the cooling tower is CT;
	if debug-output is true:
		say "Cooling tower temp after: [current temperature of the cooling tower][line break]";
	if the heat exchanger is not broken:
		if the damage of the heat exchanger is greater than 2 and a random chance of 9 in 10 succeeds:
			now the heat exchanger is broken;
	if the turbine is not broken:
		if the damage of the heat exchanger is greater than 4 and a random chance of 9 in 10 succeeds:
			now the turbine is broken;
	now the total power output is the total power output plus the current output power of the turbine.
	
Melting down is an action applying to nothing.
Carry out melting down:
	say "An alarm starts to blare.  'MELTDOWN!  MELTDOWN!  MELTDOWN!'";
	if the damage of the reactor core is greater than 6:
		say "The reactor core has melted down and produced a steam explosion.  The containment building has ruptured.  Lethal radioactive gases and debris have escaped.
		
		Initiate your evacuation and radiation cleanup plans and get medical assistance.";
	otherwise:
		say "The reactor core has been destroyed by uncontrolled thermal runaway.  However, the containment building has not yet ruptured.
		
		Initiate your evacuation plan.".

Evaluating power is an action applying to nothing.
Carry out evaluating power:
	let average power output be the total power output divided by the current day;
	say "Over a period of [current day] days, you have produced an average power output of [average power output rounded down] per day.
	
	Your average power production rate is [if average power output is greater than 1800kW]near the MAXIMUM!  Power costs in your area will drop significantly.[otherwise if average power output is greater than 1500kW]EXCELLENT! Power costs in your area will not be increased.[otherwise if average power output is greater than 1200kW]ADEQUATE. You could do better.[otherwise if average power output is greater than 1000kW]way below your area's power needs.[otherwise]HORRIBLE! Find a less demanding job.".

When play ends when the story has not ended finally:
	try evaluating power;
	try repairing;
	say "Would you like to try again? ";
	if the player consents:
		try repairing silently;
		try initiating silently;
		try advancing silently;
		resume the story;
		if the player is on the heavy padded chair:
			try examining the control panel;
		otherwise:
			try looking.

[TESTS AND KNOWN BUGS]

[This test gives different results than the equivalent run in either the Applesoft BASIC original or the Python port, in particular here because of a difference in how the values in the Secondary Coolant Heat Flow Equation are handled.  The reason appears to be that many of the variables in use are declared as integers in the original, so values get floored down before being used for further calculation, whereas here all the variables are real numbers (floats), and so preserve the full precision all the way through the calculation.  After trying a couple potential easy fixes and failing, I've come to the reluctant conclusion that fixing this would require quite a bit of change to how I'm handling the values, and their interaction with the Inform 7 units system, and I'm not feeling at all enthusiastic about what amounts to entirely redoing the core of the port.  The results of the bug are only that some values are larger than expected, meaning that over time values grow more quickly.  Unless this proves fatal to the ability of the player to achieve an excellent ending (still TBD), for the moment I'm going to document this as a known issue and move on. -KR]
Test math with "toggle debugging / sit down / set rods to 25 / sleep / set primary to 45 / set secondary to 90 / sleep".
