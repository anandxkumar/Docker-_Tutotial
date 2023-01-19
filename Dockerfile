# importing base image
FROM alpine 

# copying the bash file 
COPY file.sh /

# Creating Intermediate Container to make bash file executable
RUN chmod +x /file.sh

# Running the Executable Bash file that was earlier created | Alternative CMD ["sh", "file.sh", no need to create Bash file Executable in this case
ENTRYPOINT ["/file.sh"]
