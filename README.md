# docker-node-karma
Simplest dumbest possible Node (official image) + xvfb + chrome. Built to run builds including Karma on Wercker,
but should work for anything.

Chrome is installed for tests to run in it. If you need to use it manually, it's runnable (wrapped with Xvfb) as `google-chrome`.

A pre-built Chrome user data dir exists at /root/chrome-user-data-dir, to handle some more niche cases where you need to
guarantee consistency in how Chrome is set up. If you don't already know you need this, you can ignore it.

If you do need this, you can start Chrome using it with `google-chrome --user-data-dir=/root/chrome-user-data-dir`.
This will start Chrome using that existing profile, which can be useful for consistency (e.g. because all Chrome instances
will start from the same profile data, not regenerating a new random profile from scratch).
