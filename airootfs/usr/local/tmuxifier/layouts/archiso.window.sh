window_root "~/"
new_window "archiso"
split_v 50
run_cmd "journalctl -f"
split_v 50
run_cmd "iostat -xm 5"
split_h 40
run_cmd "watch -t 'ip addr | grep inet'"
select_pane 0
