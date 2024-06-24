FROM amazonlinux:2023

COPY entrypoint.sh /entrypoint.sh
CMD chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
