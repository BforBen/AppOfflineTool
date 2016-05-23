$sites = Get-Content -Path Sites.txt

foreach($site in $sites)
{
    Write-Host Setting $site offline
    $prefix = $site.Substring(2, ($site.IndexOf(".") - 2))
    Copy-Item -Path app_offline.$prefix.htm -Destination $site\app_offline.htm
}