failed_attempts = {}

with open("auth.log", "r") as file:
    for line in file:
        if "Failed password" in line:
            parts = line.split()

            if "from" in parts:
                ip = parts[parts.index("from") + 1]

                if ip in failed_attempts:
                    failed_attempts[ip] += 1
                else:
                    failed_attempts[ip] = 1

print("FAILED LOGIN ANALYSIS")
print("---------------------")

for ip, count in failed_attempts.items():
    print(f"{ip}: {count} failed attempts")
