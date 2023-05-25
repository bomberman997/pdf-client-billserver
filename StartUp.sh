import requests
import subprocess

# Define the URL of the file to download
url = "https://raw.githubusercontent.com/bomberman997/pdf-client-billserver/main/docker-compose1.yml"
# Specify the filename to save the downloaded file as
filename = "docker-compose1.yml"

# Download the file
response = requests.get(url)
if response.status_code == 200:
    # Save the file
    with open(filename, "wb") as file:
        file.write(response.content)
    print("File downloaded successfully.")

    # Run Docker Compose
    try:
        subprocess.run(["docker-compose", "-f", filename, "up", "-d"], check=True)
        print("Docker Compose started successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Failed to start Docker Compose: {e}")
else:
    print("Failed to download the file.")
