read -r -d '' sql << EOF
    \connect $db
    drop view if exists event_view;
EOF