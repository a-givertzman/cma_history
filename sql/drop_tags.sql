/*
    DROP PROCESS TAG
*/
read -r -d '' sql << EOF
    \connect $db
    drop table if exists tags
    drop type if exists tag_type_enum;
EOF