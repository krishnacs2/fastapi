import psutil

# Calculate worker count based on CPU usage and memory availability
cpu_cores = psutil.cpu_count(logical=False)  # Number of physical CPU cores
cpu_usage = psutil.cpu_percent(interval=1)  # CPU usage percentage
available_memory = psutil.virtual_memory().available  # Available system memory in bytes

# Calculate worker count based on your custom logic
worker_count = max(int(cpu_cores * 0.75 * (1 + cpu_usage / 100)), 2)

print(worker_count)  # Output the calculated worker count
