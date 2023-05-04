$emails = Import-Csv -Path "CHANGEME" | Select-Object -ExpandProperty EmailAddress
$results = foreach ($email in $emails) {
    $user = Get-ADUser -Filter {EmailAddress -eq $email} -Properties UserPrincipalName
    if ($user) {
        [PSCustomObject]@{
            EmailAddress = $email
            UserPrincipalName = $user.UserPrincipalName
        }
    }
}
$results | Export-Csv -Path "CHANGEME" -NoTypeInformation

