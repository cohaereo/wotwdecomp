from sys import argv

# def calculate_damage(base: int, char_specific: int):
#     r = char_specific * 0.5
#     r *= base
#     r /= 100
#     return base - r

def calculate_damage(base: int, cd: int):
    return base + ((base * cd) / 100.0 - base * 0.5)

DMG_BASE_PUNCH = 3
DMG_BASE_KICK = 6
DMG_BASE_AIRKICK = 5
DMG_BASE_SLAM = 20

cb = float(argv[1])

print("Punch:    {}".format(calculate_damage(DMG_BASE_PUNCH, cb)))
print("Kick:     {}".format(calculate_damage(DMG_BASE_KICK, cb)))
print("Air Kick: {}".format(calculate_damage(DMG_BASE_AIRKICK, cb)))
print("Slam:     {}".format(calculate_damage(DMG_BASE_SLAM, cb)))

# multiplier = float(argv[1])
# print("Punch:    {}".format(DMG_BASE_PUNCH * multiplier))
# print("Kick:     {}".format(DMG_BASE_KICK * multiplier))
# print("Air Kick: {}".format(DMG_BASE_AIRKICK * multiplier))
# print("Slam:     {}".format(DMG_BASE_SLAM * multiplier))