import winshell
try:
    winshell.recycle_bin().empty(confirm=False,
                                 show_progress=False, sound=True)
    print("Recyle bin is emptied Now.")
except:
    print("Recyle bin is already empty")
