#!/bin/bash
aws ec2 run-instances \
    --region ap-south-1 \
    --image-id ami-0f5ee92e2d63afc18 \
    --count 1 \
    --instance-type t2.micro \
    --key-name maina \
    --security-group-ids sg-014d0775ec1fafd6e \
    --subnet-id subnet-0deae3d5a5e73630c \
    --block-device-mappings "[{\"DeviceName\":\"/dev/sdf\",\"Ebs\":{\"VolumeSize\":30,\"DeleteOnTermination\":false}}]" \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=somanath-server}]' 'ResourceType=volume,Tags=[{Key=Name,Value=demo-server-disk}]'
    --