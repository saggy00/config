#!/bin/bash

echo "Run this script from a newly spawned urxvt terminal after installation"
echo "Check that the next lines are bold/italic/bolditalic respectively"

echo -e "\e[1mbold\e[0m"
echo -e "\e[3mitalic\e[0m"
echo -e "\e[3m\e[1mbolditalic\e[0m\e[0m"
