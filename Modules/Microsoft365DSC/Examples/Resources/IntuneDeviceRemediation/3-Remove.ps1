<#
This example removes a Device Remediation.
The Id parameter can be optionally provided for better performance, but DisplayName alone is sufficient.
#>

Configuration Example
{
    param(
        [Parameter()]
        [System.String]
        $ApplicationId,

        [Parameter()]
        [System.String]
        $TenantId,

        [Parameter()]
        [System.String]
        $CertificateThumbprint
    )
    Import-DscResource -ModuleName Microsoft365DSC

    node localhost
    {
        IntuneDeviceRemediation 'ConfigureDeviceRemediation'
        {
            Id          = '00000000-0000-0000-0000-000000000000'
            DisplayName = 'Device remediation'
            Ensure      = 'Absent'
            ApplicationId         = $ApplicationId;
            TenantId              = $TenantId;
            CertificateThumbprint = $CertificateThumbprint;
        }
    }
}
