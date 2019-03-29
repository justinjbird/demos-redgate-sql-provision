Connect-SqlClone -ServerUrl 'http://localhost:14145'
$SqlServerInstance = Get-SqlCloneSqlServerInstance -MachineName DESKTOP-H4M4K2E -InstanceName "" `

$imageName = "AdventureWorks2017" 

$image = Get-SqlCloneImage -Name $imageName
$image | New-SqlClone -Name 'AdventureWorks2017_clone_Mike' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks2017_clone_John' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks2017_clone_James' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks2017_clone_Dom' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks2017_clone_Niall' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks2017_clone_Helen' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks2017_clone_Luke' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks2017_clone_Test001' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks2017_clone_Test002' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks2017_clone_Test003' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks2017_clone_PreProd' -Location $sqlServerInstance | Wait-SqlCloneOperation

Pause