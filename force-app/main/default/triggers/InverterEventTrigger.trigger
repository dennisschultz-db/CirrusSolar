trigger InverterEventTrigger on Inverter_Event__e (after insert) {

        // Echo event field values to the debugger log
    for (Inverter_Event__e evt : Trigger.New) {
        String eventText = JSON.serializePretty(evt);
        System.debug('==== New Inverter Event ====');
        System.debug(eventText);
        System.debug('===========================');
    }
}