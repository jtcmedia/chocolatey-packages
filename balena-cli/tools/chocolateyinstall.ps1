$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$installerFile = if ((Get-ProcessorBits 64) -and $env:chocolateyForceX86 -ne 'true') {
         Write-Host "Installing..."; Get-Item "$toolsDir\*_x64.exe"
} else { Write-Error "balena-cli can only be installed on a 64 bit OS" }

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  file          = $installerFile
  softwareName  = 'balena-cli'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item ($toolsDir + '\*.' + $packageArgs.fileType)
