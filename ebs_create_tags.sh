#!/bin/bash
aws ec2 describe-volumes --query "Volumes[*].VolumeId" > ebs_volume_id.txt

sed -i '.bak' '1d;$d'  ebs_volume_id.txt
sed -i '.bak' 's/^[ \t]*//g' ebs_volume_id.txt
sed -i '.bak' 's/.$//' ebs_volume_id.txt
sed -i '.bak' 's/"//g' ebs_volume_id.txt

while read -r line
do
  aws ec2 create-tags --resources $line --tags "Key=key-001,Value=value-001"
done < ebs_volume_id.txt