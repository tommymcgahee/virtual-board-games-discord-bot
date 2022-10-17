# A Discord bot for virtual board games

![](https://github.com/tommymcgahee/virtual-board-games-discord-bot/workflows/Node/badge.svg)

Currently configured for a generic game with three groups, but can be easily expanded to accommodate others. 

This is a discord bot that automates the beginning of a virtual board game and notifies players who their fellow team members are. It is built using [discordjs](https://discord.js.org/). 

## How it works

Use `!newgame <# of players>` in any channel to reset game data and begin listening for player DMs. Once setup, players should DM the bot with either `!setparty groupA`, `!setparty groupB` or `!setparty groupBLeader`, and the bot will track and announce progress in the channel provided in [config.json](https://github.com/tommymcgahee/virtual-board-games-discord-bot/blob/master/config.example.json#L5). Once all memberships are recorded the bot privately notifies all groupB team members (except groupBLeader, who is secret) a list of their teammates. 

Additional commands can also be added to [config.json](https://github.com/tommymcgahee/virtual-board-games-discord-bot/blob/master/config.example.json#L4). 

Use this [discordjs guide](https://discordjs.guide/preparations/setting-up-a-bot-application.html) to register and configure the bot inside Discord's developer portal. 

## Requirements

Currently compatible with [Node.js 10, 12 and 14](https://github.com/tommymcgahee/virtual-board-games-discord-bot/actions?query=workflow%3ANode). 

## Docker Requirements

`Docker Compose` is required. 

To run nodemon and set `NODE_ENV` to development:  
`docker-compose -f docker-compose.yml -f development.yml up`

To build for production:  
`docker-compose up`
