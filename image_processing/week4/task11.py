import numpy as np
import cv2


def radius_change(value):
    global radius
    if value < 1:
        value = 1
    radius = value


def thickness_change(value):
    global thickness
    if value < 1:
        value = 1
    thickness = value


def onMouse(event, x, y, flag, param):
    global title, thickness, radius
    if event == cv2.EVENT_LBUTTONDOWN:
        rec_start_pt = (x - 15, y - 15)
        rec_end_pt = (x + 15, y + 15)
        cv2.rectangle(image, rec_start_pt, rec_end_pt, (255, 0, 0), thickness)
        cv2.imshow(title, image)

    elif event == cv2.EVENT_RBUTTONDOWN:
        cv2.circle(image, (x, y), radius, (0, 0, 255), thickness)
        cv2.imshow(title, image)


thickness = 1
radius = 1
size = (400, 600, 3)
bgColor = (255, 255, 255)
image = np.full(size, bgColor, np.uint8)
title = "task11"
cv2.imshow(title, image)
cv2.createTrackbar("radius", title, radius, 50, radius_change)
cv2.createTrackbar("thickness", title, thickness, 50, thickness_change)
cv2.setMouseCallback(title, onMouse)
cv2.waitKey(0)

