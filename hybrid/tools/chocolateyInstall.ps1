$ErrorActionPreference = 'Stop'

$url64      = 'https://www.selur.de/files/hybrid_downloads/Hybrid_2026.10.09.1_SETUP.exe'
$checksum64 = '9ba3ca20987a61aee8bfe4169ac3302efad4f64cdcddecabd53f09b055a16ef0'

$packageArgs = @{
  PackageName            = $env:ChocolateyPackageName
  fileType               = 'EXE'
  Url64bit               = $url64
  Checksum64             = $checksum64
  ChecksumType64         = 'sha256'
  softwareName           = 'Hybrid*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs

$pp = Get-PackageParameters
if (-Not $pp.NoDesktopIcon) {
  $desktopPath = [Environment]::GetFolderPath("Desktop")
  Install-ChocolateyShortcut `
    -ShortcutFilePath "$desktopPath\hybrid.lnk" `
    -TargetPath "$env:ProgramFiles\Hybrid\Hybrid.exe"
}
