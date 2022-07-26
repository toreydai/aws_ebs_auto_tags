# AWS EBS卷自动打标签脚本

> 说明：本文中的脚本需要使用macOS进行操作。

## 1 自动给所有EBS卷打指定标签


>注意：需要修改脚本中的Key和Value为实际需要的值。

执行脚本，为所有EBS卷打标签。

``` 
chmod +x ./ebs_create_tags.sh
./ebs_create_tags.sh
```
## 2 自动删除所有EBS卷上的指定标签

>注意：需要修改脚本中的Key和Value为实际需要的值。

执行脚本，为所有EBS卷删除指定标签。

```
chmod +x ./ebs_delete_tags.sh
./ebs_delete_tags.sh
```
