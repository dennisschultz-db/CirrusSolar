trigger recordCDCEventTrigger on recordCDC__e (after insert) {

        // Echo event field values to the debugger log
    for (recordCDC__e evt : Trigger.New) {
        String eventText = JSON.serializePretty(evt);
        System.debug('==== New recordCDC Event ====');
        System.debug(eventText);
        System.debug('===========================');
    }
}