#!/bin/bash

read -p "Enter environment: " ENV
 if [ "$ENV" = "dev" ]; then
	 echo "Environment is dev. Running the script..."
 else
	 echo "ENV variable is not set to 'dev'. Exiting."
                
 fi
