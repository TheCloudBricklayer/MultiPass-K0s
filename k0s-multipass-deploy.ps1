<#PRIVATE-KEY-PATH-windows
C:\Users\Aumenta/.ssh/id_rsa

PRIVATE-KEY-PATH-Linux
/home/amaro/.ssh/id_rsa

PUB-KEY-Windows
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCsq1aOgST2IMUbmv0kMTX7TQ4OnwA1aUpUWg1gcex6tx3FxQB/7zwrNbKFtBxU/6is8CstzynNNwj6SS9AcHb7BklwkDrYl6qWF15IskSKVC7E0GjcqxF7xf6CIYburoFPc4g8VD0FsHGdwg8D61LUBvK0zcpSMzmKGBVbB5NOl2Zdt/xtpxG1cxiZM9scJuQ0HrcIYoOhBRMNO0q5X+F3zWuwrSq66hdpaON/gD0G1T2mZPKa0n+wApUNAc8TmAtYLreCFus1Z8TLGfo4Rk/UDj3//33ab/56NYJPZyfOmDUFnQaDy6nVS9ne2x0YRRwOIhHzCu9Pza9QCCkgpXjaeDLNeZtZ9Lu2fvwTDv13TwBKqys4PjcEwaIDdAflrElGA5EQthnBCCw+scLBnmpruHS3+wB6WXNh18gZEreE/5PRv25l44mA2x4HjKQILnzAXYc9zl7J1PnVQ8R5MpBo55xuRPp66SeRNlgLpxpK26yfvioTd/e+cOHjzS8nIR0= aumenta@HAL-9002

PUB-KEY-Linux
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCWQfCsiMxYMuasXuLz+mwAmY+hV6AzseJ7UIGIdRD3waynLxzHVlLA46tXyE4npALPg9i3k8tFrIn5th5+0m4NfoG9YGQtyhDWu7wf6fDrLqVAx4RMNhTRpaRBlpJr1svOaFIRRBpH7sHJqd9jL/RD92C96IQOWVVfKBKwuGX1EgK551OBKtWHWIeWvVigUVOcBTfTh8LRaBCDnpm8mN6GJ2V7l52HvfnxqBY09WOcT0eFAODsZ0RNk3q2JZ26KEtEsqqse7GL9WNft9tCRuXcLN0bcgj6RbLw1oEQunVBYGXSMWsNLwik5ZBNvpcodde4PkQur0Qv/3WOpRQcU04SpaGWYau+2MpZEy7rSRwQi7x2O4vwcKj6n4bHar7HtrOJAZeB+5q3PAd8xAlKGIcnviLPCbG5DK3l+cs7GUti+6GmBA2yeoXPnqzL9VrUtR9NdtZKoeWpeOy9rfid5HmPbnTTwoj94No/T4rxFXPnx994ivgJeLeygeTtYIIk+hk= amaro@HAL-9002
#>
<#master#>
multipass launch -n master -c 2 -m 4G --network "Name=External Virtual Switch" --cloud-init .\cloud-config

<#worker-0#>
multipass launch -n worker-0 -c 2 -m 2G --network "Name=External Virtual Switch" --cloud-init .\cloud-config

<#worker-1#>
multipass launch -n worker-1 -c 2 -m 2G --network "Name=External Virtual Switch" --cloud-init .\cloud-config

<#cluster-list#>
multipass list


#K0S-Generate-Config-Template.. copy in k0s-config.yml
#k0sctl init
