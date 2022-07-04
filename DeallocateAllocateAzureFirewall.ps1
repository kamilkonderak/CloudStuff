#Deallocate Azure Firewall
$fw = Get-AzFirewall -ResourceGroupName cloudoing-demo -Name fw-cloudoing-demo
$fw.Deallocate()
$fw | Set-AzFirewall

#Allocate Azure Firewall
$fw = Get-AzFirewall -ResourceGroupName cloudoing-demo -Name fw-cloudoing-demo
$vnet = Get-AzVirtualNetwork -ResourceGroupName cloudoing-demo -Name cloudoing-demo-vnet
$ip = Get-AzPublicIpAddress -ResourceGroupName cloudoing-demo -Name ip-fw-cloudoing-demo
$fw.Allocate($vnet, $ip)
$fw | Set-AzFirewall