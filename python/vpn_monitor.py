import os
import time

ip_address = "X.X.X.X"  # Replace with your Azure VPN IP

for i in range(5):
    response = os.popen(f"ping -c 1 {ip_address}").read()
    print(response)
    time.sleep(1)
