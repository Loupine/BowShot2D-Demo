# Project 1, Iteration 1: BowShot
An implementation of Godot's physics system for Project 1, Iteration 1 of CS315.

## How to Play

- 'Space' to shoot the bow
- 'Up' angles the bow higher
- 'Down' angles the bow lower
- 'Right' increases the firing power
- 'Left' decreases the firing power
- 'Escape' resets the bow and arrow to be fired again

## Third Party Assets

- Bow and arrow sprites from [Ravenmore's Fantasy Icon Pack](https://ravenmore.itch.io/fantasy-icon-pack), licensed as "free" and in the comments as, "for use in a single commercial product" as of September 5, 2022

- Tile and background sprites from [Bayat's Platform Game Assets](https://bayat.itch.io/platform-game-assets) with no modifications, and licensed under [Creative Commons Attribution v4.0 International](https://creativecommons.org/licenses/by/4.0/legalcode)

- Target sprite from [Kenny's Shooting Gallery](https://www.kenney.nl/assets/shooting-gallery), licensed under [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)

## Project Report:

### Reflection

Throughout this project I was challenged in several different ways. For example, at one point I was having strange issues with Godot's physics system where upon applying an impulse to the RigidBody I wanted to move, its rotation reset and I was left confounded until I found a solution online and received some good advice from Dr.G. Although there were several other smaller problems I had with Godot, none took quite as long to fix as the last one at approximately two to three hours. One of the larger problems I faced was adjusting to using Git Bash. I eventually got the hang of it, but it definitely slowed me down through the earlier half of the project. Overall, besides having a few gripes with Git Bash and fighting with Godot through some minor issues, I think I gained a lot of good experience by simply trying things out and improving my project over time. 

### Self-Assessment

- [x] D-1: The repository contains a README.md file in its top-level directory.
- [x] D-2: The project content is eligible for an ESRB Rating of M or less.
- [x] C-1: The repository is well-formed, with a .gitignore file, no unnecessary files tracked, and all commit messages following our style guide.
- [x] C-2: The release is tagged with semantic versioning.
- [x] C-3: You have a clear legal right to use incorporated assets, the licenses are tracked in the README.md file, and you have satisfied all license requirements.
- [x] C-4: The README.md contains instructions for how to play the game.
- [x] C-5: The player can fire the projectile.
- [x] C-6: The player can control the projectile's angle.
- [x] C-7: The projectile's flight is affected by gravity using Godot Engine's physics system.
- [x] C-8: There is a ground that stops the projectile.
- [x] B-1: The project report is complete.
- [x] B-2: The projectile's firing angle is clamped between 0&deg; and 90&deg;.
- [x] B-3: There is a non-ground target that the projectile can hit.
- [x] A-1: The player can modify the projectile's firing strength.
- [x] A-2: The BowAndArrow scene's BowSprite shows the projectile's firing angle.
- [x] A-3: The projectile's hitting the target is recognized and logged to the console.

This work therefore merits an A.