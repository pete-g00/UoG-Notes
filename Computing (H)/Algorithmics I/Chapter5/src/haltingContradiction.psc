bool opposite(Program program):
    if halting(program, program.toString()):
        while true:
            pass
    else:
        return true