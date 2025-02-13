#!/bin/bash
az network vnet update   --resource-group MyResourceGroup   --name MyVNET   --dns-servers 8.8.8.8 8.8.4.4
