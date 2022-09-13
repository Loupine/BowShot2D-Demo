# Project 1, Iteration 2: BowShot
An implementation of Godot's physics system for Project 1, Iteration 2 of CS315.

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

- Bow sound effect from [Erdie's bow01.wav](https://freesound.org/people/Erdie/sounds/65733/), licensed under [Creative Commons Attribution v4.0 International](https://creativecommons.org/licenses/by/4.0/legalcode)

## Project Report:

### Reflection

This iteration was interesting because of how the Control nodes work in Godot. Through my experience, I was able to get the gist of how labels, VBoxes, and other nodes work together to create a HUD for the user, even if it is still a rather rudimentary implementation. I also learned how instancing works and used it to separate my arrows from the bow object so they can be created at will and used in an inventory system. Although I had a few small issues with this, they were solved pretty easily and not too much trouble. Overall, I think I am better prepared for the last iteration and the upcoming projects after this brief introduction to Godot's Control nodes.

### Self-Assessment

- [x] D-1: The repository contains a README.md file in its top-level directory.
- [x] D-2: The project content is eligible for an ESRB Rating of M or less.
- [x] C-1: The repository is well-formed, with a .gitignore file, no unnecessary files tracked, and all commit messages following our style guide.
- [x] C-2: The release is tagged with semantic versioning.
- [x] C-3: You have a clear legal right to use incorporated assets, the licenses are tracked in the README.md file, and you have satisfied all license requirements.
- [x] C-4: The README.md contains instructions for how to play the game.
- [x] C-5: The projectile and targets are shown with 2D graphics.
- [x] C-6: The game plays an appropriate sound effect when the projectile is fired, and the sound effect is correctly stored as a .wav asset.
- [x] B-1: The project report is complete.
- [x] B-2: Earn one star.
- [x] A-1: Earn three stars.

This work therefore merits an A.