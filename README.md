# AnySuper

<h4 style="margin-top: -3%">By Mizumo Project (MizPrjkt)</h4>

> NOTE:<br> This Project is still incomplete and cannot be used as normal. However you are free to do so if you have the balls to use your phone to get tortured 


Banners:


---

This project was inspired by: AnyKernel Project instead by putting kernels, it's now putting modified super images, you can run any android roms on your device.

Down with the use of Odin and try AnySuper now, surely this will benefit the users who don't have a PC to try mod their devices and only have an SDCard and your phone to begin with (Although ADB sideloading has been untested)

## Requirements

- A useable `/data` partition, if TWRP can't access it, set /data as `ext4` and then `f2fs` (you have to set the `/data` to `f2fs` because most android systems use `f2fs` for `/data`)

    AnySuper will add `anysuper` folder to `/data` to allow the package installer to install super image properly

- An SDCard (16GB minimum) (optional, for selecting the zip file in Install ZIP )

- Or if you don't have an SDCard, probably a computer with adb for sideload

## Third Party Components

- [AnyKernel3](https://github.com/osm0sis/AnyKernel3)
- [lz4](https://github.com/lz4/lz4)

