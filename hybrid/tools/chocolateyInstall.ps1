$ErrorActionPreference = 'Stop'

$url64      = 'https://www.selur.de/files/hybrid_downloads/Hybrid_2026.03.21.1_SETUP.exe'
$checksum64 = 'bfcc20277b47037f7370e675cc6888190dbdb405dfc8de8eeb09b72c05b6a4ba'

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
