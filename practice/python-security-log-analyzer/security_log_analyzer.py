from collections import Counter

failed_ips = []
successful_logins = 0

with open("sample_auth.log", "r") as log:
    for line in log:
        if "Failed password" in line:
            ip = line.split("from ")[1].strip()
            failed_ips.append(ip)

        elif "Accepted password" in line:
            successful_logins += 1

print("SECURITY LOG ANALYSIS")
print("---------------------")
print("Failed login attempts:", len(failed_ips))
print("Successful logins:", successful_logins)

print("\nFailed attempts by IP:")

for ip, count in Counter(failed_ips).items():
    print(ip, ":", count)
print("\nSUSPICIOUS ACTIVITY")

for ip, count in Counter(failed_ips).items():
    if count >= 3:
        print("ALERT:", ip, "had", count, "failed attempts")
