# Project 1, Iteration 3: BowShot

An implementation of Godot's physics system for Project 1, Iteration 3 of CS315.

## How to Play

- 'Space' to shoot the bow
- 'Up' angles the bow higher
- 'Down' angles the bow lower
- 'Right' increases the firing power
- 'Left' decreases the firing power
- 'Escape' Reloads the bow and arrow or resets the game if there are no arrows left.

## Third Party Assets

- Bow and arrow sprites from [Ravenmore's Fantasy Icon Pack](https://ravenmore.itch.io/fantasy-icon-pack), licensed as "free" and in the comments as, "for use in a single commercial product" as of September 5, 2022

- Tile and background sprites from [Bayat's Platform Game Assets](https://bayat.itch.io/platform-game-assets) with no modifications, and licensed under [Creative Commons Attribution v4.0 International](https://creativecommons.org/licenses/by/4.0/legalcode)

- Target sprite from [Kenny's Shooting Gallery](https://www.kenney.nl/assets/shooting-gallery), licensed under [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)

- Bow sound effect from [Erdie's bow01.wav](https://freesound.org/people/Erdie/sounds/65733/), licensed under [Creative Commons Attribution v4.0 International](https://creativecommons.org/licenses/by/4.0/legalcode)

## Project Report:

### Reflection

Throughout this iteration, I was pleasantly surprised to see that most of my code was already close to compliant with the Style Guide and only a few minor changes were necessary to bring it into compliance. Most of these changes were spacing and function placement differences. Animating my title and play button was relatively easy with the AnimationPlayer, and I breezed past that portion of the iteration. One thing I would like to note from the iteration is that in the GDQuest.com best practices guidelines it says to "have a folder structure that gives you information about the application’s architecture," and while I believe I did this correctly with how I moved my project directories around, I am not entirely sure. For instance, I moved my HUD scene and script into its own folder inside the World directory, and I moved the Target and Bow directories into the World folder as well. I believe this is correct because it mimics the structure of the game in Godot where those scenes are all nodes within the World scene.

### Self-Assessment

- [x] D-1: The repository contains a <code>README.md</code> file in its top-level directory.
- [x] D-2: The project content is eligible for an ESRB Rating of M or less.
- [x] C-1: Your repository is well-formed, in our course organization, with an appropriate .gitignore file, no unnecessary files tracked, and all commit messages following our commit message style guide.
- [x] C-2: The release is tagged using semantic versioning and the release name matches the release tag.
- [x] C-3: You have a clear legal right to use all incorporated assets, the licenses for all third-party assets are tracked in the <code>README.md</code> file, and you have satisfied all license requirements.
- [x] C-4: The <code>README.md</code> contains instructions for how to play the game.
- [x] C-5: The game starts on a title screen. Interacting with the title screen moves the player into the gameplay screen.
- [x] B-1: The project report is complete.
- [x] B-2: Earn one star.
- [x] A-1: Generate neither warnings nor errors at runtime.
- [x] A-2: Earn three stars.
- [x] ⭐ When the game is over, the player can interact to take the game back to the title screen, from which the game can be played again.
- [x] ⭐ Use an <code>AnimationPlayer</code> to add some pop to the HUD.
- [x] ⭐ The source code complies with <a href="https://www.gdquest.com/docs/guidelines/best-practices/godot-gdscript/"> the GDScript guidelines</a>.

This work therefore merits an A.