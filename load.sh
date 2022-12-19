for tar in $(ls *.tar) ;
do
    # get input from user and save it inp variable
    read -p "Load \"$tar\" (y/n): " inp

    # compare input value
    if [[ "$inp" == "y"* || "$inp" == "Y"* ]]; then
        echo loading $tar ...;
        docker load -i $tar;
        echo -e "\n$tar loaded successfully. \n";
        # docker save $img | tqdm --bytes --total $(docker image inspect $img --format='{{.Size}}') > $(echo $img | tr /: -).tar
    fi
    
done