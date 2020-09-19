aws ec2 run-instances \
    --image-id ami-06b263d6ceff0b3dd \
    --instance-type t2.large \
    --subnet-id subnet-11d27930 \
    --security-group-ids sg-04ec195713934f89c \
    --count 3 \
    --key-name big_data \
    --user-data file://install_cassandra.sh \
    --profile bigdata