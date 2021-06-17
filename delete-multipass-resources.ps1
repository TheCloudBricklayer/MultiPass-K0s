echo "stoping Multipass VM's"

multipass stop master

multipass stop worker-0

multipass stop worker-1

echo "Deleting Multipass VM's"

multipass delete master

multipass delete worker-0

multipass delete worker-1

echo "purging Multipass services"

multipass purge
