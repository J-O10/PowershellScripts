# PowershellScripts

List of scripts within this repository.

1. ADD-ADUsers: Bulk import of UPN's into an AD Group. 
  Specify the location of your csv file containing the UPNs
  Specify the name of the AD Group you would like to add the UPN's to.
  The script will tell you if they have been added, are already in the group or that the account doesnt exist.

2. Email to UPN resolver: Import a CSV Containing Email Addresses associated with AD accounts on your domain and return the UPN's associated with them.
   Exports them to a CSV file.
