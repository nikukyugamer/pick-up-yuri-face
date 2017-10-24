# Overview
- pick up `YURI's face` from YURI's whole image (`YURI` is `Yuri Katsuki` on [Yuri!!! on ICE](http://yurionice.com/))
- use [`ruby-opencv`](https://github.com/ruby-opencv/ruby-opencv) which is an OpenCV wrapper for Ruby

# Prepare

## install ruby-opencv

```bash
$ gem install ruby-opencv
```

## collect Yuri's images
- by `Google Image Search`
- collect 10 images in this case
    - input_images/yuuri_[01-10].jpg

## classifier
- I used `Haar-like` classifier
    - `haarcascade_frontalface_alt.xml`

# exec script

```bash
$ ruby pick_up_yuri_face.rb
```

# output result
- You can gain Yuri's face images in `output_images/yuuri_[01-10]_face_region.jpg` as below

## from yuri_01.jpg (successful)

![yuri_01](input_images/yuri_01.jpg "yuri_01")

![yuri_01_face_region](output_images/yuri_01_face_region.jpg "yuri_01_face_region")

## from yuri_02.jpg (successful)

![yuri_02](input_images/yuri_02.jpg "yuri_02")

![yuri_02_face_region](output_images/yuri_02_face_region.jpg "yuri_02_face_region")

## from yuri_03.jpg (failed)

![yuri_03](input_images/yuri_03.jpg "yuri_03")

![yuri_03_face_region](output_images/yuri_03_face_region.jpg "yuri_03_face_region")

## from yuri_04.jpg (successful)

![yuri_04](input_images/yuri_04.jpg "yuri_04")

![yuri_04_face_region](output_images/yuri_04_face_region.jpg "yuri_04_face_region")

## from yuri_05.jpg (successful)

![yuri_05](input_images/yuri_05.jpg "yuri_05")

![yuri_05_face_region](output_images/yuri_05_face_region.jpg "yuri_05_face_region")

## from yuri_06.jpg (successful)

![yuri_06](input_images/yuri_06.jpg "yuri_06")

![yuri_06_face_region](output_images/yuri_06_face_region.jpg "yuri_06_face_region")

## from yuri_07.jpg (failed)

![yuri_07](input_images/yuri_07.jpg "yuri_07")

![yuri_07_face_region](output_images/yuri_07_face_region.jpg "yuri_07_face_region")

## from yuri_08.jpg (successful)

![yuri_08](input_images/yuri_08.jpg "yuri_08")

![yuri_08_face_region](output_images/yuri_08_face_region.jpg "yuri_08_face_region")

## from yuri_09.jpg (failed)

![yuri_09](input_images/yuri_09.jpg "yuri_09")

![yuri_09_face_region](output_images/yuri_09_face_region.jpg "yuri_09_face_region")

## from yuri_10.jpg (successful)

![yuri_10](input_images/yuri_10.jpg "yuri_10")

![yuri_10_face_region](output_images/yuri_10_face_region.jpg "yuri_10_face_region")

# note
- some images failed to be picked up
- I guess this is because classifier isn't suitable for anime graphic

# LICENSE
[MIT License](/LICENSE)
