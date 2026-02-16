import requests

# API endpoint URL
url = "https://api.data.gov.in/resource/7b624b4a-1456-4945-80d0-dfb5e40ddcff?api-key=579b464db66ec23bdd000001cdd3946e44ce4aad7209ff7b23ac571b&format=xml"

# Make a GET request
response = requests.get(url)

# Check if the request was successful
if response.status_code == 200:
    # Print the XML response
    print("Response:")
    print(response.text)
else:
    print(f"Error: {response.status_code}")
    print(response.text)
