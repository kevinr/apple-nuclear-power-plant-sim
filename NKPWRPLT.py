#!/usr/bin/env python

import sys, random

def main():
    print "        APPLE NUCLEAR POWER PLANT"
    print "         BY STEPHEN R. BERGGREN"
    print
    print "THIS PROGRAM SIMULATES THE OPERATION OF"
    print "A NUCLEAR POWER REACTOR.  THE OBJECT"
    print "IS TO OPERATE THE PLANT AT A MAXIMUM"
    print "AVERAGE POWER OUTPUT WITHOUT CAUSING"
    print "A REACTOR MELTDOWN."
    print
    print "THE CONTROL RODS ADJUST THE AMOUNT OF"
    print "HEAT PRODUCED BY THE REACTOR.  PRIMARY"
    print "COOLANT TRANSFERS THIS HEAT TO THE HEAT"
    print "EXCHANGER.  SECONDARY COOLANT TRANSFERS"
    print "HEAT FROM THE HEAT EXCHANGER TO THE"
    print "TURBINE, WHERE POWER IS PRODUCED, AND"
    print "FINALLY TO THE COOLING TOWER.  THE"
    print "EMERGENCY COOLANT IS USED TO HELP SHUT"
    print "DOWN THE REACTOR WHEN OTHER SYSTEMS"
    print "FAIL.  UNLIKE THE OTHER COOLANTS, "
    print "EMERGENCY COOLANT IS NOT RECYCLED."

    while True:
        print
        print "ENTER 'D' TO SEE REACTOR DIAGRAM\nENTER 'I' FOR WORKING INSTRUCTIONS\nENTER 'S' TO START OPERATION"
        a = raw_input('? ')


        if a.upper() == 'D':
            diagram()
        elif a.upper() == 'I':
            instructions()
        elif a.upper() == 'S':
            simulation()

def instructions():
    print "THE CONTROLS ARE OPERATED BY TYPING IN"
    print "THE DESIRED CONTROL ROD SETTINGS AND"
    print "FLOW RATES.(USE VALUES FROM 0 TO 100)"
    print "IF NO ENTRY IS MADE, THE VALUES WILL"
    print "NOT CHANGE.  USE THE SPACE BAR TO STEP"
    print "TO THE DIFFERENT FUNCTIONS.  WHEN THE"
    print "DESIRED ENTRIES HAVE BEEN MADE, USE THE"
    print "'RETURN' KEY TO ADVANCE TO THE NEXT DAY."
    print "THE REACTOR CAN BE OPERATED UNTIL A"
    print "MELTDOWN OCCURS OR THE REACTOR FUEL IS"
    print "EXHAUSTED.  THE FUEL WILL LAST FOR"
    print "ABOUT 100 TO 150 DAYS.  WHEN THE FUEL"
    print "IS EXHAUSTED, YOUR PERFORMANCE WILL BE"
    print "EVALUATED."
    raw_input("   (PRESS RETURN TO CONTINUE)")

    print 
    print "IF YOU WANT TO REPAIR DAMAGE OR REPLACE"
    print "COOLANT, BRING THE REACTOR TEMPERATURE"
    print "DOWN BELOW 100 AND SHUT OFF THE COOLANT"
    print "FLOWS.  THIS WILL CAUSE AN AUTOMATIC"
    print "MAINTENANCE SHUTDOWN AND ALL COOLANT"
    print "WILL BE REPLENISHED AND REPAIRS MADE."
    print "THE GREATER THE DAMAGE, THE LONGER THE"
    print "REPAIRS WILL TAKE."
    print
    print "     WARNING: THIS POWER PLANT HAS"
    print "     NO AUTOMATIC SAFETY DEVICES!!"
    print
    return

def simulation():
    # INITIATE
    s = {}    # state variable
    s['total_equipment_damage'] = 0.0

    s['reactor_damage'] = 0.0
    s['emergency_coolant_damage'] = 0.0
    s['primary_coolant_damage'] = 0.0
    s['heat_exchanger_damage'] = 0.0
    s['secondary_coolant_damage'] = 0.0
    s['turbine_damage'] = 0.0
    s['primary_coolant_broken'] = 0.0
    s['secondary_coolant_broken'] = 0.0
    s['heat_exchanger_broken'] = 0.0
    s['turbine_broken'] = 0.0
    s['emergency_coolant_flow_rate'] = 0.0
    s['primary_coolant_flow_rate'] = 0.0
    s['secondary_coolant_flow_rate'] = 0.0
    s['turbine_output'] = 0.0

    # XXX TODO okay doing this twice -- here and in initiate() -- is dumb, but it's basically what the original does
    s['reactor_heat_flow'] = 0.0
    s['reactor_life'] = 0.0
    s['DAY'] = 0.0
    s['total_power_output'] = 0.0
    s['control_rods'] = 0.0
    s['control_rods_1'] = 0.0
    s['control_rods_2'] = 0.0

    maintenance_repair(s)

    initiate(s)

    # WRITE REPORT
    while True:
        print
        s['DAY'] = s['DAY'] + 1.0
        print  "       APPLE NUCLEAR POWER PLANT"
        print  "        STATUS REPORT - DAY " + str(int(s['DAY']))
        print
        print "WARNINGS:"
        if s['reactor_temp'] > 800.0:
            print " REACTOR OVERHEATED"
            s['reactor_damage'] = s['reactor_damage'] + 1.0 + (s['reactor_temp'] > 850.0) + (s['reactor_temp'] > 900.0) + 2.0 * (s['reactor_temp'] > 950.0)
            s['primary_coolant_damage'] = s['primary_coolant_damage'] + 1
            s['emergency_coolant_damage'] = s['emergency_coolant_damage'] + 1 + (s['reactor_temp'] > 850)
        if s['heat_exchanger_temp'] > 500 :
            print " HEAT EXCHANGER OVERHEATED"
            s['heat_exchanger_damage'] = s['heat_exchanger_damage'] + 1 + (s['heat_exchanger_temp'] > 600)
            s['primary_coolant_damage'] = s['primary_coolant_damage'] + 1
            s['secondary_coolant_damage'] = s['secondary_coolant_damage'] + 1
        if s['turbine_output'] > 2000 :
            print " TURBINE OVERLOADED"
            s['turbine_damage'] = s['turbine_damage'] + 1 + (s['turbine_output'] > 2500  )
            s['secondary_coolant_damage'] = s['secondary_coolant_damage'] + 1
        if s['cooling_tower_temp'] > 300 :
            print " COOLING TOWER OVERHEATED"
            s['secondary_coolant_damage'] = s['secondary_coolant_damage'] + 1
        if s['turbine_output'] < 1000 :
            print " POWER OUTPUT LOW"
        if s['emgergency_coolant_vol'] < 200 :
            print " EMERGENCY COOLANT LOW"
        if s['primary_coolant_vol'] < 100 :
            print " PRIMARY COOLANT LOW"
            s['primary_coolant_damage'] = s['primary_coolant_damage'] + 1
        if s['secondary_coolant_vol'] < 100 :
            print " SECONDARY COOLANT LOW"
            s['secondary_coolant_damage'] = s['secondary_coolant_damage'] + 1

        print
        print "DAMAGE:"
        if s['reactor_damage'] > 3 :
            print " REACTOR CORE DAMAGED"
        if s['primary_coolant_damage'] > 4 :
            print " PRIMARY COOLANT LEAK - " + str(int(s['primary_coolant_damage'])) + "/DAY"
            s['primary_coolant_vol'] = (s['primary_coolant_vol'] - s['primary_coolant_damage']) * ((s['primary_coolant_vol'] - s['primary_coolant_damage']) > 0)
        if s['secondary_coolant_damage'] > 4 :
            print " SECONDARY COOLANT LEAK - " + str(int(s['secondary_coolant_damage'])) + "/DAY"
            s['secondary_coolant_vol'] = (s['secondary_coolant_vol'] - s['secondary_coolant_damage']) * ((s['secondary_coolant_vol'] - s['secondary_coolant_damage']) > 0)
        if s['emergency_coolant_damage'] > 2 :
            print " EMERGENCY COOLANT LEAK - " + str(int(2 * s['emergency_coolant_damage'])) + "/DAY"
            s['emgergency_coolant_vol'] = (s['emgergency_coolant_vol'] - 2 * s['emergency_coolant_damage']) * ((s['emgergency_coolant_vol'] - 2 * s['emergency_coolant_damage']) > 0)
        if s['primary_coolant_broken'] :
            print " PRIMARY COOLANT PUMP FAILURE -" + str(int(10 * s['primary_coolant_damage'] * (s['primary_coolant_damage'] < 10)  + 100 * (s['primary_coolant_damage'] >= 10))) + "%"
        if s['secondary_coolant_broken'] :
            print " SECONDARY COOLANT PUMP FAILURE - " + str(int(10 * s['secondary_coolant_damage'] * (s['secondary_coolant_damage'] < 10) + 100 * (s['secondary_coolant_damage'] >= 10))) + "%"
        if s['heat_exchanger_broken'] :
            print " HEAT EXCHANGER FAILURE"
        if s['turbine_broken'] :
            print " TURBINE FAILURE"
        print
        if s['reactor_damage'] > 5 :
            print "     MELTDOWN!  MELTDOWN!  MELTDOWN!"
            meltdown_ending(s)

            a = ''
            while a.upper() != 'Y' and a.upper() != 'N':
                print
                a = raw_input("WOULD YOU LIKE TO TRY AGAIN? (Y OR N)")

            if a.upper() == 'Y':
                maintenance_repair(s)
                initiate(s)
                continue
            elif a.upper() == 'N':
                sys.exit(0)

        print "INDICATORS:"
        print " REACTOR TEMP. (MAX 800) " + str(int(s['reactor_temp']))
        print " HEAT EXCHANGER TEMP. (MAX 500) " + str(int(s['heat_exchanger_temp']))
        print " COOLING TOWER TEMP. (MAX 300) " + str(int(s['cooling_tower_temp']))
        print " POWER OUTPUT (MAX 2000KW) " + str(int(s['turbine_output'])) + "KW"
        s['avgerage_power_output'] = s['total_power_output'] / s['DAY']
        print " AVERAGE POWER OUTPUT  " + str(int(s['avgerage_power_output'])) + "KW/DAY"
        print " CONTROL RODS- " + str(int(s['control_rods']))
        print " COOLANTS"
        print "  EMERGENCY  LEVEL- " + str(int(s['emgergency_coolant_vol'])) + "  FLOW- " + str(s['emergency_coolant_flow_rate'])
        print "  PRIMARY    LEVEL- " + str(int(s['primary_coolant_vol'])) + "  FLOW- " + str(s['primary_coolant_flow_rate'])
        print "  SECONDARY  LEVEL- " + str(int(s['secondary_coolant_vol'])) + "  FLOW- "+ str(int(s['secondary_coolant_flow_rate']))
        if (100 - s['reactor_life']) < 5 :
            print
            print
            print "REACTOR FUEL EXHAUSTED"

            power_evaluation(s)
            damage_evaluation(s)

            a = ''
            while a.upper() != 'Y' and a.upper() != 'N':
                print
                a = raw_input("WOULD YOU LIKE TO TRY AGAIN? (Y OR N)")

            if a.upper() == 'Y':
                maintenance_repair(s)
                initiate(s)
                continue
            elif a.upper() == 'N':
                sys.exit(0)

        # GET NEW CONTROL VALUES
        s['control_rods_2'] = s['control_rods_1']
        s['control_rods_1'] = s['control_rods']
        b = raw_input("control rods? (" + str(int(s['control_rods'])) + ") ")
        if b:
            # max 100
            s['control_rods'] = int(b)

        b = raw_input("emergency coolant flow rate? (" + str(int(s['emergency_coolant_flow_rate'])) + ") ")
        if b:
            # max 100
            s['emergency_coolant_flow_rate'] = int(b)

        b = raw_input("primary coolant flow rate? (" + str(int(s['primary_coolant_flow_rate'])) + ") ")
        if b:
            # max 100
            s['primary_coolant_flow_rate'] = int(b)

        b = raw_input("secondary coolant flow rate? (" + str(int(s['secondary_coolant_flow_rate'])) + ") ")
        if b:
            # max 100
            s['secondary_coolant_flow_rate'] = int(b)

        if s['primary_coolant_flow_rate'] == 0 and s['secondary_coolant_flow_rate'] == 0 and s['reactor_heat_flow'] < 1 and s['reactor_temp'] < 100 and s['control_rods'] == 0 :
            maintenance_repair(s)

            print " MAINTENANCE SHUTDOWN - " + str(int(s['maintenance_days'])) + " DAYS"
            print

        if s['emergency_coolant_flow_rate'] > s['emgergency_coolant_vol'] :
            s['emergency_coolant_flow_rate'] = s['emgergency_coolant_vol']

        # DAMAGE ASSESSMENT AND OPERATION CALCULATIONS
        s['emgergency_coolant_vol'] = s['emgergency_coolant_vol'] - s['emergency_coolant_flow_rate'] - 2 * s['emergency_coolant_damage'] * (s['emergency_coolant_damage'] > 3)

        s['primary_coolant_damage'] = s['primary_coolant_damage'] + (s['primary_coolant_flow_rate'] > 90) * (random.random() > 0.95)

        s['secondary_coolant_damage'] = s['secondary_coolant_damage'] + (s['secondary_coolant_flow_rate'] > 90) * (random.random() > 0.92)

        s['primary_coolant_broken'] = s['primary_coolant_damage'] > 5
        s['secondary_coolant_broken'] = s['secondary_coolant_damage'] > 5

        if s['primary_coolant_flow_rate'] > (100 - s['primary_coolant_damage'] * 10) and s['primary_coolant_broken'] :
            s['primary_coolant_flow_rate'] = (100 - s['primary_coolant_damage'] * 10) * (100 - s['primary_coolant_damage'] * 10 > 0)

        if s['secondary_coolant_flow_rate'] > (100 - s['secondary_coolant_damage'] * 10) and s['secondary_coolant_broken'] :
            s['secondary_coolant_flow_rate'] = (100 - s['secondary_coolant_damage'] * 10) * (100 - s['secondary_coolant_damage'] * 10 > 0)

        s['reactor_life'] = s['reactor_life'] + s['reactor_heat_flow'] / 50


        print "reactor heat flow before: %d" % (s['reactor_heat_flow'],)
        print "control rods: %d; 1: %d; 2: %d; reactor_life: %d" % (s['control_rods'], s['control_rods_1'], s['control_rods_2'], s['reactor_life'])
        s['reactor_heat_flow'] = (s['control_rods'] * 30.0 + s['control_rods_1'] * 60.0 + s['control_rods_2'] * 10.0) / 2500.0 * (100.0 - s['reactor_life'])
        print "reactor heat flow after: %d" % (s['reactor_heat_flow'],)


        primary_coolant_heat_flow = s['primary_coolant_flow_rate'] * (100.0 * (s['primary_coolant_vol'] > 100.0) + s['primary_coolant_vol'] * (s['primary_coolant_vol'] <= 100.0)) / 350.0
        emergency_coolant_heat_flow = s['emergency_coolant_flow_rate'] / 200.0 * (s['reactor_temp'] - 25.0)
        print "reactor temp before: %d" % (s['reactor_temp'],)
        s['reactor_temp'] = s['reactor_temp'] + s['reactor_heat_flow'] - emergency_coolant_heat_flow - primary_coolant_heat_flow - 5.0 * (s['reactor_temp'] > 25.0)
        print "reactor temp after: %d" % (s['reactor_temp'],)
        s['reactor_temp'] = 25 + (s['reactor_temp'] - 25) * (s['reactor_temp'] > 25)
        print "reactor temp after2: %d" % (s['reactor_temp'],)
        print "heat exchanger temp before: %d" % (s['heat_exchanger_temp'],)
        s['heat_exchanger_temp'] = ((s['reactor_temp'] - 25) * s['primary_coolant_flow_rate'] + (s['cooling_tower_temp'] - 25) * s['secondary_coolant_flow_rate']) / (s['primary_coolant_flow_rate'] + s['secondary_coolant_flow_rate'] + 1) + 25

        if s['heat_exchanger_broken'] :
            s['heat_exchanger_temp'] = s['reactor_temp'] * 0.8 + 5
        print "heat exchanger temp after: %d" % (s['heat_exchanger_temp'],)

        print "SF: %f; PV; %f; HT: %f; CT: %f" % (s['secondary_coolant_flow_rate'], s['primary_coolant_vol'], s['heat_exchanger_temp'], s['cooling_tower_temp'])
        secondary_coolant_heat_flow = s['secondary_coolant_flow_rate'] * (100 * (s['primary_coolant_vol'] > 100) + s['primary_coolant_vol'] * (s['primary_coolant_vol'] <= 100)) / 350 * (s['heat_exchanger_temp'] - s['cooling_tower_temp'])
        if s['heat_exchanger_broken'] :
            secondary_coolant_heat_flow = secondary_coolant_heat_flow * .2
        print "secondary coolant heat flow after: %f" % (secondary_coolant_heat_flow,)

        print "turbine output before: %d" % (s['turbine_output'],)
        s['turbine_output'] = secondary_coolant_heat_flow / s['heat_exchanger_temp'] * (s['heat_exchanger_temp'] - s['cooling_tower_temp']) * 2 / 3
        if s['turbine_output'] > 2600 :
            s['turbine_output'] = 2600
        s['turbine_output'] = s['turbine_output'] * (s['turbine_output'] > 0) * (s['turbine_broken'] == 0)
        print "turbine output after: %d" % (s['turbine_output'],)

        print "cooling tower temp before: %d" % (s['cooling_tower_temp'],)
        s['cooling_tower_temp'] = 25 + ((s['heat_exchanger_temp'] - 25) * (secondary_coolant_heat_flow - s['turbine_output']) / (secondary_coolant_heat_flow + 1) * 0.75)
        print "cooling tower temp after: %d" % (s['cooling_tower_temp'],)
        if s['heat_exchanger_broken'] < 1 :
            s['heat_exchanger_broken'] = (s['heat_exchanger_damage'] > 2) * ( random.random() > 0.9)
        if s['turbine_broken'] < 1 :
            s['turbine_broken'] = (s['turbine_damage'] > 4) * ( random.random() > 0.9)

        s['total_power_output'] = s['total_power_output'] + s['turbine_output']


# 2000
# MAINTENANCE REPAIR SUBROUTINE
def maintenance_repair(s):
    s['emgergency_coolant_vol'] = 300
    s['primary_coolant_vol'] = 120
    s['secondary_coolant_vol'] = 120
    s['reactor_temp'] = 25
    s['heat_exchanger_temp'] = 25
    s['cooling_tower_temp'] = 25

    s['total_equipment_damage'] = s['total_equipment_damage'] + 2 * s['reactor_damage'] + s['emergency_coolant_damage'] + s['primary_coolant_damage'] + s['heat_exchanger_damage'] + s['secondary_coolant_damage'] + s['turbine_damage']

    s['maintenance_days'] = 5 + 3 * ( 10 * (s['reactor_damage'] > 3) + (s['emergency_coolant_damage'] > 3) + (s['primary_coolant_damage'] > 3) + (s['secondary_coolant_damage'] > 3) + 2 * s['primary_coolant_broken']  + 2 * s['secondary_coolant_broken'] + 3 * s['heat_exchanger_broken'] + 3 * s['turbine_broken'])
    s['DAY'] = s['DAY'] + s['maintenance_days']

    s['reactor_damage'] = 0
    s['emergency_coolant_damage'] = 0
    s['primary_coolant_damage'] = 0
    s['heat_exchanger_damage'] = 0
    s['secondary_coolant_damage'] = 0
    s['turbine_damage'] = 0
    s['primary_coolant_broken'] = 0
    s['secondary_coolant_broken'] = 0
    s['heat_exchanger_broken'] = 0
    s['turbine_broken'] = 0
    s['emergency_coolant_flow_rate'] = 0
    s['primary_coolant_flow_rate'] = 0
    s['secondary_coolant_flow_rate'] = 0
    s['turbine_output'] = 0

    return

# 390
#  INITIATE
def initiate(s):
    s['reactor_heat_flow'] = 0.0
    s['reactor_life'] = 0.0
    s['DAY'] = 0.0
    s['total_power_output'] = 0.0
    s['control_rods'] = 0.0
    s['control_rods_1'] = 0.0
    s['control_rods_2'] = 0.0

# 3000
#  MELTDOWN ENDING
def meltdown_ending(s):
    print
    if s['reactor_damage'] > 6:
        print "THE REACTOR CORE HAS MELTED DOWN AND"
        print "PRODUCED A STEAM EXPLOSION.  THE"
        print "CONTAINMENT BUILDING HAS RUPTURED."
        print "LETHAL RADIOACTIVE GASES AND DEBRIS"
        print "HAVE ESCAPED."
        print
        print "INITIATE YOUR EVACUATION AND RADIATION"
        print "CLEANUP PLANS AND GET MEDICAL"
        print "ASSISTANCE."
    else:
        print "THE REACTOR CORE HAS BEEN DISTROYED BY"
        print "UNCONTROLLED THERMAL RUNAWAY.  HOWEVER,"
        print "THE CONTAINMENT BUILDING HAS NOT YET"
        print "RUPTURED."
        print
        print "INITIATE YOUR EVACUATION PLAN."

    power_evaluation(s)
    damage_evaluation(s)

def power_evaluation(s):
    #  EVALUATION OF GAME RESULTS
    print
    print "OVER A PERIOD OF " + str(s['DAY']) + " DAYS, YOU HAVE"
    print "PRODUCED AN AVERAGE POWER OUTPUT OF"
    print str(s['avgerage_power_output']) + " KILOWATTS PER DAY."
    print
    print "YOUR AVERAGE POWER PRODUCTION RATE IS"
    if s['avgerage_power_output'] > 1800:
        print "NEAR THE MAXIMUM!  POWER COSTS IN YQUR"
        print "AREA WILL DROP SIGNIFICANTLY."
    elif s['avgerage_power_output'] > 1500:
        print "EXCELLENT! POWER COSTS IN YOUR AREA"
        print "WILL NOT BE INCREASED."
    elif s['avgerage_power_output'] > 1200:
        print "ADEQUATE. YOU COULD DO BETTER."
    elif s['avgerage_power_output'] > 1000:
        print "WAY BELOW YOUR AREA'S POWER NEEDS."
    else:
        print "HORRIBLE! FIND A LESS DEMANDING JOB."

def damage_evaluation(s):
    # DAMAGE EVALUATION
    maintenance_repair(s)
    print
    print "THE EQUIPMENT DAMAGE SUSTAINED DURING"
    print "THIS PERIOD WAS ",
    if s['total_equipment_damage'] > 30:
        print "SEVERE."
    elif s['total_equipment_damage'] > 20:
        print "HEAVY."
    elif s['total_equipment_damage'] > 10:
        print "MODERATE."
    else:
        print "VERY LIGHT."

# XXX TODO dead code?
#  5100 B$ = ""
#  5105  FOR I = 1 TO 4
#  5110  GET A$
#  5130  IF  ASC (A$) <  > 32 THEN 5140
#  5134  IF B$ = "" THEN  RETURN
#  5136 OUT% =  VAL (B$)
#  5138  RETURN
#  5140  IF  ASC (A$) = 13 THEN  POP : GOTO 1170
#  5150 B$ = B$ + A$
#  print A$;
#  5170  NEXT I
#  5180  RETURN

def diagram():
    print "KR: Sorry, pretty graphics aren't supported yet! ^^;;"
    print
#  6000  GR : COLOR= 15: FOR I = 0 TO 39: HLIN 0,39 AT I: NEXT I
#  6005 DE = 6000
#  6010  HOME : VTAB 23
    print "  THIS IS THE REACTOR VESSEL"
#  6030  RESTORE
#  6035  COLOR= 1
#  6040  FOR I = 1 TO 29
#  6050  READ X1,X2,Y
#  6060  HLIN X1,X2 AT Y
#  6070  NEXT I
#  6080  DATA 7,9,6,15,17,6,6,18,7,5,19,8,5,7,9,17,19,9,5,6,10,18,19,10,5,6,11,18,19,11,5,6,12,18,19,12,5,6,13,18,19,13,5,6,14
#  6090  DATA 18,19,14,5,6,15,18,19,15,5,6,16,18,19,16,5,6,17,18,19,17,5,6,18,18,19,18,5,7,19,17,19,19,6,18,20,7,17,21,8,16,22
#  6100  COLOR= 0
#  6110  HLIN 13,14 AT 6
#  6120  COLOR= 12
#  6130  HLIN 14,15 AT 5
#  6140  HLIN 14,16 AT 4
#  6150  HLIN 15,16 AT 3
#  6160  FOR I = 1 TO DE: NEXT I
#  6170  VTAB 23
    print "  THIS IS THE REACTOR CORE     "
#  6190  COLOR= 8
#  6200  FOR I = 9 TO 15
#  6210  VLIN 11,17 AT I
#  6220  NEXT I
#  6230  FOR I = 1 TO DE: NEXT I
#  6240  VTAB 23
    print "  THESE ARE THE CONTROL RODS  "
#  6260  COLOR= 13
#  6270  VLIN 2,17 AT 11
#  6280  VLIN 2,17 AT 13
#  6290  FOR I = 1 TO DE: NEXT I
#  6300  VTAB 23
    print " THE EMERGENCY COOLANT CAN COOL THE"
    print " REACTOR IN AN EMERGENCY."
#  6330  COLOR= 2
#  6340  FOR I = 1 TO 36
#  6350  READ Y,X
#  6360  PLOT X,Y
#  6370  FOR J = 1 TO 200: NEXT J
#  6380  NEXT I
#  6390  DATA 4,2,4,4,5,2,5,3,5,4,6,2,6,3,6,4,7,3,8,3,9,3,10,3,11,3,12,3,12,4,12,5,12,6,12,7,12,8,12,9
#  6400  DATA 13,9,14,9,15,9,16,9,16,8,16,7,16,6,16,5,16,4,16,3,17,3,18,3,19,3,20,3 ,22,3,24,3
#  6410  FOR I = 1 TO DE: NEXT I
#  6420  HOME : VTAB 23
    print " THE PRIMARY COOLANT CARRIES HEAT FROM"
    print " THE REACTOR CORE TO THE HEAT EXCHANGER"
#  6450  FOR I = 1 TO 52
#  6460  READ Y,X
#  6470  PLOT X,Y
#  6480  FOR J = 1 TO 200: NEXT J
#  6490  NEXT I
#  6500  FOR I = 1 TO DE: NEXT I
#  6510  DATA 4,25,4,27,5,25,5,26,5,27,6,25,6,26,6,27,7,26,8,26,9,26,10,26,11,26,12,26,12,25,12,24,12,23,12,22,12,21,12,20,12,19
#  6515  DATA 12,18,12,17,12,16,12,15,13,15,14,15,15,15,16,15,16,16,16,17,16,18
#  6520  DATA  16,19,16,20,16,21,16,22,16,23,16,24,16,25,16,26,16,27,16,28,16,29,16,30,15,30,14,30,13,30,13,30,12,30,12,29,12,28,12,27
#  6540  HOME : VTAB 23
    print " THIS IS THE HEAT EXCHANGER"
#  6560  COLOR= 5
#  6570  HLIN 28,34 AT 10
#  6580  VLIN 10,18 AT 34
#  6590  HLIN 28,34 AT 18
#  6600  VLIN 10,18 AT 28
#  6605  COLOR= 2: PLOT 28,12: PLOT 28,16: COLOR= 5
#  6610  FOR I = 1 TO DE: NEXT I
#  6620  VTAB 23
    print " THIS IS THE GENERATOR TURBINE"
#  6640  HLIN 5,18 AT 30
#  6650  VLIN 30,36 AT 18
#  6660  HLIN 5,18 AT 36
#  6670  VLIN 30,36 AT 5
#  6680  COLOR= 0
#  6690  HLIN 2,17 AT 33
#  6700  FOR I = 7 TO 15 STEP 2
#  6710  PLOT I,34: PLOT I + 1,32
#  6720  NEXT I
#  6730  FOR I = 1 TO DE: NEXT I
#  6740  VTAB 23
    print " THIS IS THE COOLING TOWER        "
#  6760  COLOR= 5
#  6770  VLIN 23,25 AT 24
#  6780  VLIN 23,25 AT 36
#  6790  VLIN 25,26 AT 25
#  6800  VLIN 25,26 AT 35
#  6810  VLIN 26,28 AT 26
#  6820  VLIN 26,28 AT 34
#  6830  VLIN 28,36 AT 27
#  6840  VLIN 28,36 AT 33
#  6850  PLOT 34,36
#  6860  PLOT 26,36
#  6870  HLIN 25,35 AT 38
#  6880  FOR I = 1 TO DE: NEXT I
#  6890  VTAB 23
    print " THE SECONDARY COOLANT CARRIES HEAT"
    print " FROM THE HEAT EXCHANGER TO THE "
    print " TURBINE AND THEN TO THE COOLING TOWER"
#  6925  COLOR= 2
#  6930  FOR I = 1 TO 123
#  6940  READ Y,X
#  6950  PLOT X,Y
#  6960  FOR J = 1 TO 200: NEXT J
#  6970  NEXT I
#  6980  DATA 4,35,4,37,5,35,5,36,5,37,6,35,6,36,6,37,7,36,8,36,9,36,10,36,11,36,12,36,12,35,12,34,12,33,12,32,13,32,14,32,15,32,16,32
#  6990  DATA 16,33,16,34,16,35,16,36,17,36,18,36,19,36,20,36,20,35,20,34,20,33,20,32,20,31,20,30,20,29,20,28,20,27,20,26,20,25,20,24,20,23,20,22,20,21
#  7000  DATA 21,21,22,21,23,21,24,21,25,21,26,21,27,21,27,20,27,19,27,18,27,17,27,16,27,15,27,14,27,13,27,12,27,11,27,10,27,9,27,8,27,7
#  7010  DATA 28,7,29,7,30,7,31,7,32,7,34,10,32,13,34,16,35,16,35,17,35,18,35,19,35,20,35,21,35,22,35,23,35,24,35,25,35,26,35,27,35,28
#  7020  DATA 34,28,34,29,34,30,35,30,35,31,35,32,34,32,34,33,34,34,34,35,34,36,34,37,34,38,33,38,32,38,31,38,30,38,29,38,28,38,27,38,26,38,25,38,24,38,23,38
#  7030  DATA 22,38,21,38,20,38,19,38,18,38,17,38,16,38,15,38,14,38,13,38,12,38,12,37
#  7040  HOME : VTAB 23
    return

if __name__ == '__main__': main()

# VARIABLE PREFIXES
# A-CONTROL RODS, C-COOLING TOWER, E-EMERGENCY COOLANT, G-TURBINE, P-PRIMARY COOLANT, R-REACTOR, S-SECONDARY COOLANT, X-HEAT EXCHANGER
# VARIABLE SUFFIXES
# B-BROKEN, D-DAMAGE, F-FLOW RATE, H-HEAT FLOW, L-LIFE, O-OUTPUT, T-TEMPERATURE, V-VOLUME
# OTHER VARIABLES TOT-TOTAL POWER OUTPUT, KW-AVERAGE POWER OUTPUT, DAY-DAY OF OPERATION, DMGE-TOTAL EQUIPMENT DAMAGE
# PROGRAM DESCRIPTION BY LINE NUMBER
# 10-220 INTRODUCTION
# 225-380 INSTRUCTIONS
# 390-455 VARIABLE INITIATION
#  460-850 WRITE REPORT AND ASSESS DAMAGE
#  900-1165 INPUT NEW CONTROL VARIABLES
# 1170 MAINTENANCE SHUTDOWN EVALUATION
# 1200-1260 PUMP FAILURE ASSESSMENT
# 1270-1430 PLANT OPERATING ALGORITHMS
# 2000-2200 MAINTENANCE SHUTDOWN SUBROUTINE
# 3000-3190 MELTDOWN ENDING
# 4000-4290 EVALUATION OF GAME RESULTS
# 5000-5070 END
# 6000-7060 PLANT DIAGRAM SUBROUTINE
# 9000-9190 REMARKS

#  APPLE NUCLEAR POWER PLANT
#  BY STEPHEN R BERGGREN
