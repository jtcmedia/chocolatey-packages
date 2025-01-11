﻿$ErrorActionPreference = 'Stop';

$packageName    = 'zap'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32          = 'https://github.com/zaproxy/zaproxy/releases/download/v2.16.0/ZAP_2_16_0_windows-x32.exe'
$url64          = 'https://github.com/zaproxy/zaproxy/releases/download/v2.16.0/ZAP_2_16_0_windows.exe'
$checksum32     = '244140ecc85b9393ccab58df263741f271386ab3c301f26cdc5e06f8579f7d1a'
$checksum64     = '0d2b9277fabb36b97c3344d1903eef57e50bbe93cb6aa4087b9a1dfd1705a62a'
$pf             = ''

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url            = $url32
  url64bit       = $url64
  softwareName   = 'Zed Attack Proxy*'
  checksum       = $checksum32
  checksumType   = 'sha256'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '-q'
  validExitCodes = @(0)
}

$envJavaHome = $env:JAVA_HOME

# Detect JAVA_HOME in the calling user's environment, not the environment of the C4B chocolatey agent service account (by default ChocolateyLocalAdmin)
# Note: This must be in the registry. Setting $env:JAVA_HOME at the command line before calling choco install will *not* work.
if ($env:USER_CONTEXT) {
  $userObject = New-Object System.Security.Principal.NTAccount("", $env:USER_CONTEXT)
  $Sid = $userObject.Translate([System.Security.Principal.SecurityIdentifier])
  Write-Debug "User: '$($env:USER_CONTEXT)', SID: '$($Sid.Value)'"

  $userEnv = Get-ItemProperty "Registry::HKEY_USERS\$($Sid.Value)\Environment"
  $envJavaHome = $userEnv | Select-Object -ExpandProperty "JAVA_HOME" -ErrorAction "SilentlyContinue"
  Write-Debug "JAVA_HOME=$envJavaHome"
}

if (Test-Path $envJavaHome) {
  Write-Host "Java installed and JAVA_HOME set to '$envJavaHome'"
  $javaExe = Join-Path $envJavaHome "bin\java"
  $java_major_version = (Get-Command $javaExe | Select-Object -ExpandProperty Version).Major
  Write-Host "Java major version is: $java_major_version"
  if ( $java_major_version -ge 11 ) {
    Install-ChocolateyPackage @packageArgs
    if ( Get-OSArchitectureWidth 32 ) { $pf = ' (x86)' }
    Install-ChocolateyShortcut `
      -ShortcutFilePath "C:\Users\Public\Desktop\ZAP $($env:ChocolateyPackageVersion.SubString(0,6)).lnk" `
      -TargetPath "C:\Program Files$pf\ZAP\Zed Attack Proxy\ZAP.bat" `
      -WorkingDirectory "C:\Program Files$pf\ZAP\Zed Attack Proxy"
  } else {
    Write-Error "Java version is less than 11. ZAP 2.15 or greater requires Java 11."
  }
} else {
  Write-Error "JAVA_HOME isn't set. Ensure you set this environment variable to a Java 11+ installation."
}
