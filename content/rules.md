+++
title = "4MB Jam 2025 Rules"
description = "Comprehensive rules for the 4MB Game Jam"
+++

You must submit a standard Linux Mint, MacOS or Windows desktop application which adheres to the following conditions:
1. Excluding readme and copyright attribution, the project is under 4 megabytes in size using the power of 2 system also known as [Mebibytes (MiB)](https://en.wikipedia.org/wiki/Byte#Multiple-byte_units).
    * It is the size of the entire unpacked project which is counted, not the compressed archive size.
    * Anything that needs to be downloaded to make the project work, like say python packages for example, will count towards size.
2. It doesn't contain anything that violates any Canadian federal law.
    * We don't want a repeat of last time, please.
    * Don't ask what happened last time.
3. Isn't porn, doesn't have gratuitous nudity and explicit or implict sexual acts.
4. It is a video game.
5. You have a full month to do it, so it is expected it will be made during that month (may 2025).
    * Premade art, sound assets and engine code are allowed.
6. It isn't a game mod or hack.
7. It isn't a multiplayer-only game.
    * Games with a multiplayer component are fine as long as the main part of the game is entirely playable in solo. This is for judging reasons. 
    * Excluding file size, Judges are free to not include the multiplayer part of the game in their evaluation.
    * If there's a dedicated server application for online multiplayer, those files also count and must be included in the submission.
8. It doesn't stream nor download content from the internet.
9. It is available for free for the duration of the judging period.
10. It can be downloaded for the duration of the judging period.
11. For clarification, a standard desktop application is an application that isn't a web/mobile/gaming console application and is for the x64 version of Linux Mint or Windows... or MacOS on a device with an M-series chip.
    * Something that embeds a web game into a binary desktop application, like Electron or Tauri is allowed. However, please keep in mind that some of these tools, like electron for example, will blow up the size of the executable way past the 4mb limit, so alternatives like tauri should be preferred.
    * Something that embeds an emulator in order to play a console or mobile game is allowed.
    * Console games, as in games that use a terminal emulator, are allowed.
    * You can include a web version in addition to your submission containing a native desktop version, but only the native version will be evaluated,

## Ranking

This year, games are ranked twice as the competition is in dual mode; games compete for the size category and fun category. An entry can win in either or both categories. There's also a Community Award which is awarded by the popular will of the 4MB Jam community.

### Fun Category

Ranked by judges and their ranking is entirely subjective.
Entries are ranked along four criteria: sound/music, graphics, theme and gameplay. Each criterion is worth a maximum of 5 points each for a theoritical maximum of 25 points. Do note that there's a bias for gameplay as each point in gameplay is worth double.

The true point score is the average of the total point score from each judge. 

In case two or more games have an equal score, the smallest game in size wins. If that still doesn't produce a single winner, it is submitted to a vote by the 4MB Jam community using the same system as the Community Award vote. 

### Size Category

Ranked by judges and their ranking is mostly subjective with one exception.
Entries are ranked along four criteria: size, technique, value and theme. Each criterion is worth a maximum of 5 points each for a theoritical maximum of 25 points. Do note that there's a bias for size as each point in size is worth double.

The true point score is the average of the total point score from each judge. 

In case two or more games have an equal score, the smallest game in size wins. If that still doesn't produce a single winner, it is submitted to a vote by the 4MB Jam community using the same system as the Community Award vote. 
#### Size
The size criterion is completely objective. Points are automatically awarded in relation to the size of the game. See the chart below:
|Size tier|Points|Adjusted for bias|
|---------|------|-----------------|
| > 2MB   | 0    | 0               |
|<= 2MB   | .5   | 1               |
|<= 1MB   | 1    | 2               |
|<= 800KB | 1.5  | 3               |
|<= 512KB | 2    | 4               |
|<= 256KB | 2.5  | 5               |
|<= 128KB | 3    | 6               |
|<= 80KB  | 3.5  | 7               |
|<= 64KB  | 3.8  | 7.6             |
|<= 32KB  | 4    | 8               |
|<= 16KB  | 4.5  | 9               |
|<= 8KB   | 5    | 10              |

#### Technique
Technique is how impressed a judge is by the size of the game and/or the techniques used to bring down the size of the game. 

#### Value
Quantity and/or quality of the game's content. It's understood that someone who choose to optimise their game for the size category will make many sacrifices that will have a major impact on gameplay and presentation. There is no question to that. However, we hope people won't use that excuse to submit low effort "games" that have very little value. An example of a game with little value would be a hangman implementation for the terminal emulator. Value != gameplay; value == effort to provide good presentation and/or gameplay in satisfying quantity.

### Community Award

The voting system used is a variant of instant runoff voting where everyone votes for their favourite entry, then ranks up to five alternatives from most favourite to least favourite. If no game obtains a majority, then the last game is eliminated from the vote and its votes are transferred according to people's rankings. This process is repeated until a winner with a majority is found or 5 rounds have elapsed, in which case the remaining game with the most votes win.

#### Voting rights

People who are eligible to vote belong to one or more of the following categories:
* Participant
* Staff
* Active discord member
   * They must have been active during the event's duration and have made more than 9 non consecutive posts which aren't spam.
* Active member and contributor of the 4MB resource project.
* People and entities who have donated money for the prize pool.
   * And/or Sponsors of the jam.
* Former participants and staff.
   * Everyone on Discord with the Ancient, Former Host or Former Judge role.

## Other Rules
Libraries, frameworks and runtimes also count towards size unless they're already installed on a __stock__ Linux Mint, MacOS or Windows machine. Those are:
* Linux Mint Wilma (Cinnamon, Mate or XFCE)
* MacOS Sonoma or Sequoia
* Windows 10 22h2 or 11 24h2

An example of something that doesn't count towards size is the SDL2 library, because it's shipped  with Linux Mint. Although SDL2 isn't installed on Windows by default, it is pre-installed on Linux Mint. Thus, as a matter of fairness, SDL2 won't be counted for Windows either.

An example of something that does count towards size is the raylib game library, because it is not installed on Linux Mint, nor MacOS and Windows by default.

Executable packers like upx are allowed as an exception to the unpacked size rule.

Just a suggestion, but if you're using a compiled language, you should submit a binary. You *can* submit your source code with a build script and in that case, it's the uncompiled project size that will be evaluated, not the compiled state of the project, but sincerely source files are most often larger than the final executable. Also, while judges will be required to try to run the build script once, if that build script fails, they are free to simply give your game a rank of 0 in all categories and move on. Judges don't have to try to build your game if they don't want to. You are responsible for making available a working build script. If you can't do that, then don't submit a project that wasn't precompiled for us.

Participants are allowed to work in groups of any size.

The owner, the host, the judges and discord/itch moderators may participate, but their entries may not win in either category nor are they eligible for the Community Award.