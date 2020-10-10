#!/bin/bash
cat mystery_img1.txt | base64 --decode > myster_img1_decode.jpg
cat mystery_img2.txt | base64 --decode > myster_img2_decode.jpg
cat msg.txt | base64 > msg_codificado.txt
cat fcfm.png | base64 > fcfm_codificada.txt
