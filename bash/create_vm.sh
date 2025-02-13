#!/bin/bash
az vm create   --resource-group MyResourceGroup   --name MyVM   --image UbuntuLTS   --admin-username adminuser   --admin-password SecurePass123!   --size Standard_B1s
