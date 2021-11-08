__all__ = ()

def _up(args):
    """Go up any number of directories"""
    if not args or len(args) < 1:
        args = [1]
    balloons = ('../' * int(args[0]))
    command cd @(balloons)
aliases['up'] = _up

def _upp(args):
    """Get the path of an ancestor directory"""
    if not args or len(args) < 1:
        args = [1]
    balloons = ('../' * int(args[0]))
    return pf"{$PWD}/{balloons}".resolve()
aliases['upp'] = _upp

def _lup(args):
    """`ls` ancestor directories"""
    if not args or len(args) < 1:
        args = [1]
    balloons = ('../' * int(args[-1]))
    command ls @(args[0:-1]) @(balloons)
aliases['lup'] = _lup
