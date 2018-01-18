echo "set IIS-rapidFailProtection";
Import-Module WebAdministration
Set-ItemProperty "IIS:\AppPools\#{Octopus.Project.Name}-App" -name "failure" -Value @{
    rapidFailProtection="True";
    rapidFailProtectionInterval="00.00:05:00";
    rapidFailProtectionMaxCrashes=20;
}
echo done;
