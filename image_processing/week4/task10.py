import numpy as np
import cv2


def onMouse(event, x, y, flag, param):
    global title
    if event == cv2.EVENT_LBUTTONDOWN:
        rec_start_pt = (x - 15, y - 15)
        rec_end_pt = (x + 15, y + 15)
        cv2.rectangle(image, rec_start_pt, rec_end_pt, (255, 0, 0))
        cv2.imshow(title, image)

    elif event == cv2.EVENT_RBUTTONDOWN:
        cv2.circle(image, (x, y), 20, (0, 0, 255))
        cv2.imshow(title, image)


size = (400, 600, 3)
bgColor = (255, 255, 255)
title = "week4_task10"
image = np.full(size, bgColor, np.uint8)

cv2.imshow(title, image)
cv2.setMouseCallback(title, onMouse)
cv2.waitKey(0)
