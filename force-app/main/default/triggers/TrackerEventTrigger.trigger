trigger TrackerEventTrigger on Tracker_Event__e (after insert) {

    // Echo event field values to the debugger log
    for (Tracker_Event__e evt : Trigger.New) {
        String eventText = JSON.serializePretty(evt);
        System.debug('==== New Tracker Event ====');
        System.debug(eventText);
        System.debug('===========================');
    }
}