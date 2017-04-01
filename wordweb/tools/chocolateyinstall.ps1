$ErrorActionPreference = 'Stop';

$packageName = 'wordweb'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32       = 'http://wordweb.info/cgi-bin/geoip/wordweb.exe'
$checksum32  = 'd022a625c39d31239978d5574272105b785cb0b01450fa85e88aa1313b11d324'

$pp = Get-PackageParameters

$locale_button = 'TGroupButton'
$lnum = '8'
$all_users = $false
$no_sys_tray = $false

if ($pp.allUsers) {
    $all_users = $true
    Write-Host "Param: Installing for all users..."
}

if ($pp.noSystemTray) {
    $no_sys_tray = $true
    Write-Host "Param: Not installing to system tray..."
}

if ($pp.locale) { 
    Write-Host "Param: Installing $($pp.locale) English locale..."
    
    switch ($($pp.locale))
    {
        'International' {$lnum = '9'; break}
        'Australia'     {$lnum = '7'; break}
        'Britain'       {$lnum = '6'; break}
        'Canada'        {$lnum = '5'; break}
        'Ireland'       {$lnum = '4'; break}
        'New Zealand'   {$lnum = '3'; break}
        'South Africa'  {$lnum = '2'; break}
        'Asia'          {$lnum = '1'; break}
        default { Write-Host "Unidentified locale: installing America English locale..."; break}
    }
} else {
    Write-Host "Installing America English locale..."
}


$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url32
  softwareName  = 'WordWeb*'
  checksum      = $checksum32
  checksumType  = 'sha256'
  silentArgs    = '/s'
  validExitCodes= @(0)
}


$ahkFile = "$toolsDir\chocolateyinstall.ahk $all_users $no_sys_tray $locale_button$lnum"
Start-Process -FilePath "AutoHotkey.exe" -Verb runas -ArgumentList $ahkFile

Install-ChocolateyPackage @packageArgs
