from azure.monitor.query import LogsQueryClient
from azure.identity import DefaultAzureCredential

credential = DefaultAzureCredential()
client = LogsQueryClient(credential)

query = '''
AzureDiagnostics
| where Category == "NetworkSecurityGroupRuleCounter"
| where action_s == "Deny"
| summarize count() by TimeGenerated
'''

response = client.query_workspace("YOUR_WORKSPACE_ID", query)
for row in response.tables[0].rows:
    print(f"Blocked attempts: {row[1]} at {row[0]}")
