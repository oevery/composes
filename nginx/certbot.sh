#!/bin/sh
echo "sudo_password" | sudo -S docker run --rm --name certbot \
            -v "$(pwd)/letsencrypt:/etc/letsencrypt" \
            -v "$(pwd)/cloudflare.ini:/cloudflare.ini" \
            certbot/dns-cloudflare certonly \
            --register-unsafely-without-email \
            --agree-tos \
            --dns-cloudflare \
            --dns-cloudflare-credentials "/cloudflare.ini" \
            --key-type ecdsa \
            -d example.com