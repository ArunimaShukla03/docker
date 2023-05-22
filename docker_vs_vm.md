## Docker vs virtual machine:
- docker and virtual machine are both virtualisation tools.

ON THE BASIS OF VARIOUS LAYERS OF OS:

- docker virtualises the application layer meaning that it only virtualises the targeted application, example: redis, postgres, etc and it uses the kernel of the host computer.

- virtual machine virtualises both, application layer as well as kernel, thus it virtualises the whole operating system.

ON THE BASIS OF SIZE:

- docker images are much smaller (megabytes) while virtual machine images are larger (gigabytes).

ON THE BASIS OF SPEED:

- docker containers run and start much faster than virtual machines.