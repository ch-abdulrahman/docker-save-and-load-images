# ask user to create a seperate directory.
read -p "Do you want to create a seperate directory? (y/n): " inp1

# compare input value
if [[ "$inp1" == "y"* || "$inp1" == "Y"* ]]; then
    read -p "Enter directory name: " dir; 
    if [ ! -d "$dir" ]; then 
        mkdir $dir;
        echo -e "\n\"$dir\" is created successfully.\n";
    fi  
    cd $dir;
fi

for img in $(docker images --format "{{.Repository}}:{{.Tag}}");
# for n in $(docker images --format "{{.Repository}}:{{.Tag}}");
do
    # get input from user and save it inp variable
    read -p "Save \"$img\" image (y/n): " inp2

    # compare input value
    if [[ "$inp2" == "y"* || "$inp2" == "Y"* ]]; then
        echo saving $img ...;
        docker save $img -o "$(echo $img | tr /: -).tar";
        echo -e "\n$img saved successfully. \n";
        # docker save $img | tqdm --bytes --total $(docker image inspect $img --format='{{.Size}}') > $(echo $img | tr /: -).tar
    fi
    
done
