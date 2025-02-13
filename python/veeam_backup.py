import requests

# Define Veeam API endpoint and credentials
veeam_server = "https://veeam-server:9398/api"
username = "admin"
password = "SecurePass123!"

# Start a backup job
response = requests.post(
    f"{veeam_server}/jobs/{'BackupJobID'}/start",
    auth=(username, password),
    verify=False
)

if response.status_code == 200:
    print("Veeam backup job started successfully")
else:
    print("Failed to start backup job:", response.text)
