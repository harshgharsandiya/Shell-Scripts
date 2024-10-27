#!/bin/bash

echo "This is a Simple File Encrypter/Decrypter"
echo "Please Choose What you want to do"

choices=("Encrypt" "Decrypt")

select option in "${choices[@]}"; do
    if [[ $option == "Encrypt" ]]; then
        echo "You have selected Encryption"
        echo "Please Enter file name (with full path): "
        read file1
        gpg -c "$file1"
        echo "The file has been encrypted"
        break
    elif [[ $option == "Decrypt" ]]; then
        echo "You have selected Decryption"
        echo "Please Enter file name (with full path): "
        read file2
        gpg -d "$file2"
        echo "The file has been decrypted"
        break
    else
        echo "Invalid option, please try again."
    fi
done
