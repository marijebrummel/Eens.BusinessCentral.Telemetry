codeunit 92590 "PTE Telemetry"
{
    trigger OnRun()
    begin

    end;

    local procedure CreateTelemetry();
    var
        CustomTelemetryDimensions: Dictionary of [Text, Text];
    begin
        // CustomTelemetryDimensions.Add('Url', Request.GetRequestUri);
        // CustomTelemetryDimensions.Add('HttpStatusCode', Format(Response.HttpStatusCode));
        // CustomTelemetryDimensions.Add('ReasonPhrase', Response.ReasonPhrase);
        Session.LogMessage(
            'MyExt0001',
            'Web service call failed',
            Verbosity::Normal,
            DataClassification::SystemMetadata,
            TelemetryScope::ExtensionPublisher,
            CustomTelemetryDimensions);
    end;

}