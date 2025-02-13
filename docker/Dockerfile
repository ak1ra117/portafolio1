# Dockerfile para ejecutar un script de monitoreo en Azure

FROM python:3.9

# Instalar dependencias necesarias
RUN pip install azure-mgmt-network azure-identity azure-monitor-query

# Copiar script de monitoreo al contenedor
COPY vpn_monitor.py /vpn_monitor.py

# Definir el comando de inicio
CMD ["python", "/vpn_monitor.py"]
