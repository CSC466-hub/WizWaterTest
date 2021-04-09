import geni.portal as portal
import geni.rspec.pg as pg
import geni.rspec.igext as IG

pc = portal.Context()
request = pc.makeRequestRSpec()

tourDescription = \
"""
This profile provides the template for a compute node with Docker installed on Ubuntu 18.04
"""

#
# Setup the Tour info with the above description and instructions.
#  
tour = IG.Tour()
tour.Description(IG.Tour.TEXT,tourDescription)
request.addTour(tour)

prefixForIP = "192.168.1."
link = request.LAN("lan")

num_nodes = 3
for i in range(num_nodes):
  if i == 0:
    node = request.XenVM("head")
  else:
    node = request.XenVM("worker-" + str(i))
  node.cores = 12#node.cores = 4
  node.ram = 32768#node.ram = 8192
  node.routable_control_ip = "true" 
  node.disk_image = "urn:publicid:IDN+emulab.net+image+emulab-ops:UBUNTU18-64-STD"
  iface = node.addInterface("if" + str(i))
  iface.component_id = "eth1"
  iface.addAddress(pg.IPv4Address(prefixForIP + str(i + 1), "255.255.255.0"))
  link.addInterface(iface)
  
  # setup Docker
  node.addService(pg.Execute(shell="sh", command="sudo bash /local/repository/install_docker.sh"))
  node.addService(pg.Execute(shell="sh", command="sudo bash /local/repository/setupSaucy.sh"))
pc.printRequestRSpec(request)
"""
import geni.portal as portal
import geni.rspec.pg as rspec
# Create a Request object to start building the RSpec.
request = portal.context.makeRequestRSpec()
# Create a XenVM
node = request.RawPC("node")
#urn:publicid:IDN+utah.cloudlab.us+image+emulab-ops//UBUNTU20-64-ARM
node.disk_image = "urn:publicid:IDN+emulab.net+image+emulab-ops:UBUNTU18-64-ARM"
node.routable_control_ip = "true"
node.addService(rspec.Execute(shell="/bin/sh",
                              command="sudo apt update"))
node.addService(rspec.Execute(shell="/bin/sh",
                              command="sudo apt install -y apache2"))
node.addService(rspec.Execute(shell="/bin/sh",
                              command='sudo ufw allow in "Apache Full"'))
node.addService(rspec.Execute(shell="/bin/sh",
                              command='sudo systemctl status apache2'))
# Print the RSpec to the enclosing page.
portal.context.printRequestRSpec()
