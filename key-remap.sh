hidutil property --set $(cat key-remap.json | awk 'ORS=" "' | sed s/\ *//g)
