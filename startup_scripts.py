#!/bin/python

import os

base_path = "/home/fiona/Projects/startup_scripts/profiles"
dict_of_profiles = dict(enumerate((file.replace(".sh",'') for file in os.listdir(base_path) if os.path.isfile(os.path.join(base_path,file))), start = 1))
dict_of_profiles[max(dict_of_profiles.keys())+1] = "Exit"
# print(dict_of_profiles)

print("Available profiles:\n")
for key, value in dict_of_profiles.items():
    print(key, value)

while True:
    try:
        selected_profile = int(input("\nSelect a profile: "))
        if ((selected_profile <= max(dict_of_profiles.keys())) and (selected_profile >= min(dict_of_profiles.keys()))):
            break 
        else:
            print("Please Enter a number in the list. \n")
    except ValueError:
        print("Invalid input. Please enter a number. \n")

if selected_profile == max(dict_of_profiles.keys()):    # Exit
    print("Exiting...")
    exit()
else:
    print(f"\nStarting ({selected_profile}) {dict_of_profiles[selected_profile]} profile...\n")
    os.system(f'sh {base_path}/{dict_of_profiles[selected_profile]}.sh')