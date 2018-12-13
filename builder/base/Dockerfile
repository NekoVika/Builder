# ---
FROM ubuntu:18.04
COPY ansible /etc/ansible
RUN apt-get update && apt-get install -y ansible

RUN ansible-playbook /etc/ansible/bot_image.yaml
