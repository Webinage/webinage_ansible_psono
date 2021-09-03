#!/bin/bash
ufw app update certbot
ufw allow from any to any app certbot