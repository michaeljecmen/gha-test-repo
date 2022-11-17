import os

live="https://www.twitch.tv/bufferbunny",
vod="https://www.twitch.tv/videos/1652600015",
clip="https://www.twitch.tv/hasanabi/clip/BlightedCrackyCaterpillarBabyRage-FPljWm6tgOFhAJAV"

os.environ['GITHUB_OUTPUT'] += f'live-web={live}'
os.environ['GITHUB_OUTPUT'] += f'vod-web={vod}'
os.environ['GITHUB_OUTPUT'] += f'clip-web={clip}'