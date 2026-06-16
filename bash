#!/usr/bin/env bash

set -euo pipefail

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
WHITE='\033[0;37m'
CYAN='\033[0;36m'
CYAN_B='\033[0;95m'
NC='\033[0m'

# Header
echo -e "${CYAN}================================================${NC}"
echo -e "${YELLOW}          PERSONAL ORGANIZER${NC}"
echo -e "${CYAN}================================================${NC}"

# Create file if it doesn't exist
touch tasks.txt

choice() {
    echo
    echo "1. Enter task"
    echo "2. View tasks"
    echo "3. Mark complete"
    echo "4. Exit"
}

mark_complete() {
    if [[ ! -s tasks.txt ]]; then
        echo -e "${RED}No tasks available!${NC}"
        return
    fi

    nl -w2 -s'. ' tasks.txt

    read -p "Enter task number: " num

    if sed -n "${num}p" tasks.txt | grep -q '^\[ \]'; then
        sed -i "${num}s/\[ \]/[x]/" tasks.txt
        echo -e "${GREEN}Task marked as complete!${NC}"
    else
        echo -e "${RED}Invalid task number or task already completed!${NC}"
    fi
}

while true; do
    echo -e "${WHITE}MENU - SELECT A NUMBER${NC}"
    choice

    read -p "Choice: " user_choice

    case "$user_choice" in
        1)
            echo -e "${CYAN_B}ENTER TASK${NC}"
            read -p "Enter task: " task
            echo "[ ] $task" >> tasks.txt
            echo -e "${GREEN}Task added!${NC}"
            ;;
        2)
            echo -e "${CYAN_B}TASK LIST${NC}"
            if [[ -s tasks.txt ]]; then
                cat tasks.txt
            else
                echo "No tasks available."
            fi
            ;;
        3)
            mark_complete
            ;;
        4)
            echo -e "${YELLOW}Goodbye!${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}Invalid selection!${NC}"
            ;;
    esac
done
