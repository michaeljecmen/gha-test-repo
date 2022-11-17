import os

live="https://www.twitch.tv/bufferbunny"
vod="https://www.twitch.tv/videos/1652600015"
clip="https://www.twitch.tv/hasanabi/clip/BlightedCrackyCaterpillarBabyRage-FPljWm6tgOFhAJAV"

# does not work
# os.environ['GITHUB_OUTPUT'] += f'live-web={live}'
# os.environ['GITHUB_OUTPUT'] += f'vod-web={vod}'
# os.environ['GITHUB_OUTPUT'] += f'clip-web={clip}'

# https://github.com/orgs/community/discussions/28146
bundle = {
	"live-web": live,
	"vod-web": vod,
	"clip-web": clip
}

with open(os.environ['GITHUB_OUTPUT'], 'a') as fh:
	for name, value in bundle.items():
		print(f'{name}={value}')
		print(f'{name}={value}', file=fh)
