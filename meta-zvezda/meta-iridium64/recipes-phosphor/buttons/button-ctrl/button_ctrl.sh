#!/bin/sh

SERVICE_CHASSIS="xyz.openbmc_project.State.Chassis0"
INTERFACE_CHASSIS="xyz.openbmc_project.State.Chassis"
PROPERTY_PWR_TRANSITION="RequestedPowerTransition"

SERVICE_BUTTON="xyz.openbmc_project.Chassis.Buttons0"
INTERFACE_BUTTON="xyz.openbmc_project.Chassis.Buttons"
PROPERTY_BUTTON="ButtonPressed"

SERVICE_ID_LED="xyz.openbmc_project.LED.GroupManager"
INTERFACE_ID_LED="xyz.openbmc_project.Led.Group"
PROPERTY_ID_LED="Asserted"

OBJECT_ID_BUTTON="/xyz/openbmc_project/chassis/buttons/id"
OBJECT_ID_LED="/xyz/openbmc_project/led/groups/enclosure_identify"
OBJECT_PWR_BUTTON="/xyz/openbmc_project/chassis/buttons/power"
OBJECT_PWR_TRANSITION="/xyz/openbmc_project/state/chassis0"



while true
do


#Check ID button pressed
IdButtonPressed=$(busctl get-property $SERVICE_BUTTON $OBJECT_ID_BUTTON $INTERFACE_BUTTON $PROPERTY_BUTTON | awk '{print $NF;}')

#If ID Button Pressed change IdLed state
if [ "$IdButtonPressed" == "true" ]; then
	# Get current IdLed state
	IdLedstate=$(busctl get-property $SERVICE_ID_LED $OBJECT_ID_LED $INTERFACE_ID_LED $PROPERTY_ID_LED | awk '{print $NF;}')

	if [ "$IdLedstate" == "false" ]; then
	    target='true'
	else
	    target='false'
	fi
	busctl set-property $SERVICE_ID_LED $OBJECT_ID_LED $INTERFACE_ID_LED $PROPERTY_ID_LED b $target
fi

#Check PWR Button pressed
PwrButtonPressed=$(busctl get-property $SERVICE_BUTTON $OBJECT_PWR_BUTTON $INTERFACE_BUTTON $PROPERTY_BUTTON | awk '{print $NF;}')

#If PWR Button pressed
if [ "$PwrButtonPressed" == "true" ]; then
	sleep 4
#more than 4 seconds
	PwrButtonPressed=$(busctl get-property $SERVICE_BUTTON $OBJECT_PWR_BUTTON $INTERFACE_BUTTON $PROPERTY_BUTTON | awk '{print $NF;}')
	if [ "$PwrButtonPressed" == "true" ]; then
#Power Off chassis
	busctl set-property $SERVICE_CHASSIS $OBJECT_PWR_TRANSITION $INTERFACE_CHASSIS $PROPERTY_PWR_TRANSITION s	 "xyz.openbmc_project.State.Chassis.Transition.Off" 
	fi
fi

done

