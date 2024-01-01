from sys import argv

# def calculate_damage(base: int, char_specific: int):
#     r = char_specific * 0.5
#     r *= base
#     r /= 100
#     return base - r

def calculate_damage(base: int, ad: int, rd: int):
    char_base = base + ((base * ad) / 100.0 - base * 0.5)
    return char_base - (char_base * ((rd * 0.5) / 100.0))

DMG_BASE_PUNCH = 3
DMG_BASE_KICK = 6
DMG_BASE_AIRKICK = 5
DMG_BASE_SLAM = 20
DMG_BASE_FALL = 10

ab = float(argv[1])
rb = float(argv[2]) if len(argv) > 2 else 50

print("Punch:    {:.2f}".format(calculate_damage(DMG_BASE_PUNCH, ab, rb)))
print("Kick:     {:.2f}".format(calculate_damage(DMG_BASE_KICK, ab, rb)))
print("Air Kick: {:.2f}".format(calculate_damage(DMG_BASE_AIRKICK, ab, rb)))
print("Slam:     {:.2f}".format(calculate_damage(DMG_BASE_SLAM, ab, rb)))
print("Fall:     {:.2f}".format(calculate_damage(DMG_BASE_FALL, ab, rb)))

# multiplier = float(argv[1])
# print("Punch:    {}".format(DMG_BASE_PUNCH * multiplier))
# print("Kick:     {}".format(DMG_BASE_KICK * multiplier))
# print("Air Kick: {}".format(DMG_BASE_AIRKICK * multiplier))
# print("Slam:     {}".format(DMG_BASE_SLAM * multiplier))