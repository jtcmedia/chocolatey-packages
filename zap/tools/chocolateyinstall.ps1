$ErrorActionPreference = 'Stop';

$packageName    = 'zap'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32          = 'https://github.com/zaproxy/zaproxy/releases/download/v2.15.0/ZAP_2_15_0_windows-x32.exe'
$url64          = 'https://github.com/zaproxy/zaproxy/releases/download/v2.15.0/ZAP_2_15_0_windows.exe'
$checksum32     = '114953f29647a5e4e5774b338f2271d6149711e9222e0b92b11be3a35b812478'
$checksum64     = '28b348dd65116ddabbbbd98b7f84864a0bb0f98d656266f2f08bfd010ae51c57'
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

# TODO check for $env:USER_CONTEXT, if set use that to resolve JAVA_HOME via the registry

if (Test-Path 'env:JAVA_HOME') {
  Write-Host "Java installed and JAVA_HOME set to '$env:JAVA_HOME'"
  $java_major_version = (Get-Command java | Select-Object -ExpandProperty Version).Major
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
