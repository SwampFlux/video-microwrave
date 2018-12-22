# Notes and stuff

Apparently there are a lot of options, and sleep is not one of them. It blocks the main thread. I discovered that not merging a thread via join() prevents the main thread from being hung up, but the thread itself is blocked for some stupid reason. If I execute a sleep, print, sleep, print only the final print will execute. It's as if the sleep happens so quickly that the output never gets a chance to be read. I don't really understand.
