# Save Docker Images

root@localhost:/docker$ ./save.sh 
Do you want to create a seperate directory? (y/n): y
Enter directory name: abdul

"abdul" is created successfully.

Save "ubuntu:latest" image (y/n): y
saving ubuntu:latest ...

ubuntu:latest saved successfully.

# Load Docker Images

Goto your directory.
root@localhost:/docker/abdul$ ../load.sh 
Load "ubuntu-latest.tar" (y/n): y
loading ubuntu-latest.tar ...
Loaded image: ubuntu:latest

ubuntu-latest.tar loaded successfully.
