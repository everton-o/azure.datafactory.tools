[System.Diagnostics.CodeAnalysis.SuppressMessage('PSAvoidUsingConvertToSecureStringWithPlainText', '')]
[CmdletBinding()]
param
(
    [Parameter()]
    [System.String]
    $ModuleRootPath = (Get-Location)
)

$moduleManifestName = 'azure.datafactory.tools.psd1'
$moduleManifestPath = Join-Path -Path $ModuleRootPath -ChildPath $moduleManifestName

Import-Module -Name $moduleManifestPath -Force -Verbose:$false

InModuleScope azure.datafactory.tools {
    #$testHelperPath = $PSScriptRoot | Split-Path -Parent | Join-Path -ChildPath 'TestHelper'
    #Import-Module -Name $testHelperPath -Force

    # Variables for use in tests

    Describe 'Get-AdfFromService' -Tag 'Unit' {
        It 'Should exist' {
            { Get-Command -Name Get-AdfFromService -ErrorAction Stop } | Should -Not -Throw
        }
        
    } 
}
