#!/bin/sh
# comment
amazon-linux-extras install -y docker
# comment2
systemctl start docker
systemctl enable docker
