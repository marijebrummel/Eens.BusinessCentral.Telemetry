codeunit 92591 "PTE Database Telemetry"
{
    SingleInstance = true;

    var
        TelemetryBuffer: dictionary of [Text, Text];

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Change Log Management", OnInsertLogEntryOnBeforeChangeLogEntryValidateChangedRecordSystemId, '', false, false)]
    local procedure TestAuditTrailPresent(var ChangeLogEntry: Record "Change Log Entry"; FldRef: FieldRef; RecRef: RecordRef)
    begin
        exit;

        if RecRef.Number = Database::"Change Log Setup (Table)" then // Do not audit the change log itsself
            exit;

        if RecRef.Number = Database::"Change Log Setup (Field)" then // Do not audit the change log itsself
            exit;

    end;
}