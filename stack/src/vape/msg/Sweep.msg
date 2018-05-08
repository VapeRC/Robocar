# This message contains a 1D Lidar Image

Header header        # Header timestamp should be acquisition time of sweep
                     # Header frame_id should be optical frame of sweep
                     # origin of frame should be optical center of sweep
                     # +x should point to the right in the sweep

uint32 width          # image width, that is, number of columns
uint8[] data          # actual matrix data, size is width
