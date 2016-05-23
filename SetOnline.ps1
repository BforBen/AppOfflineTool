$sites = Get-Content -Path Sites.txt

foreach($site in $sites)
{
    Write-Host Setting $site online
    $prefix = $site.Substring(2, ($site.IndexOf(".") - 2))
    Remove-Item -Path $site\app_offline.htm
}