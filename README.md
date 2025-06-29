

# Warehouse Robot (EVC Final Project)

> This is the final project for the Embedded Visual Control (EVC) course, based on ROS Melodic and the NVIDIA Jetson platform. The system integrates camera input, motor control, face and QR code/Bar code detection, and autonomous task execution.


## Project Structure

```

jetson_camera/
├── config/                  # Parameter and model configuration files
├── launch/                  # ROS launch files
├── msg/                     # Custom ROS message definitions
├── src/                     # Python nodes and drivers
├── calibration\_result.npz   # Camera calibration result (NumPy format)
├── camera\_calibration.py    # Calibration utility
├── CMakeLists.txt, package.xml

```


## config/ — Configuration Files

| File                          | Description |
|-------------------------------|-------------|
| `haarcascade_frontalface_default.xml` | Haar cascade classifier for frontal face detection |
| `known_faces_1.pkl`| Serialized known face encodings (used for recognition) |
| `motor_params.yaml`          | Motor control parameters |
| `parameters.yaml`            | Camera parameters |


## launch/ — ROS Launch Files

| File                        | Purpose |
|-----------------------------|---------|
| **`erik.launch`**           | Main entry point — launches all major components |
| `camera_publisher.launch`   | Launches camera publishing node |
| `face_recognition.launch`       | Launches face recognition node |
| `motor_controller.launch`   | Loads motor configuration parameters and starts the motor and encoder controller nodes |
| `encoder_controller.launch` | Launches encoder controller node |
| `qr_navigation.launch`      | Launches SimpleQR Node |
| `routing.launch`            | Launches TaskExecutor Node |
| `task_manager.launch`       | Launches TaskManager Node |



## msg/ — Custom Message Types

| Message        | Description |
|----------------|-------------|
| `QRdata.msg`   | Encodes the QR task ID, movement and rotation commands, and alignment status for robot control |
| `ImagePair.msg`| Contains both raw and annotated image for visualization/debugging |



## src/ — Core Scripts and Nodes

| Script                      | Description |
|-----------------------------|-------------|
| `camera_publisher_node.py`  | Publishes raw and undistorted camera frames |
| `face_recognition.py`           | Detects and recognizes faces (Obama, Trump, Unknown) from camera input and publishes face ID |
| `qr_navigation.py`          | Detects QR codes, aligns the robot to them, and extracts barcode numbers to trigger task decisions |
| `motor_controller.py`       | Controls robot motion with encoder feedback |
| `encoder_controller.py`     | Reads wheel encoder data and publishes ticks and time intervals for motion tracking |
| `taskManager.py`            | Central controller that listens to QR/face/barcode info |
| `routing.py`                | Executes fixed motion sequences based on task ID |



## How to Run

Run the full system using the main launch file:

```bash
roslaunch jetson_camera erik.launch
```

This will start:

* Camera publisher
* Face recognition
* Motor & encoder control
* QR/barcode processing
* Task manager & executor



##  Task Execution Flow

1. **Navigate to QR code**  
   Robot detects a QR code and aligns precisely to a predefined target position.

2. **Perfect positioning check**  
   Once alignment is achieved (`perfect = 1`), the robot pauses and proceeds to the next step.

3. **Detection priority**  
   - **If face detected** → perform the corresponding face-associated task  
     *(e.g., Obama → Task 1, Trump → Doesn't Execute Tasks)*  
   - **Else if barcode detected** → extract the last digit of the number and map to a predefined task  
   - **Else** → wait until either a face or barcode is detected

4. **Task execution**  
   Once a task is selected, the routing logic is triggered to execute the corresponding motion sequence.

5. **Return to QR detection**  
   After finishing the task, the robot resumes QR detection to begin the next cycle.



## Environment Requirements

* Ubuntu 18.04
* ROS Melodic
* Python 2.7
* Jetson Nano / Xavier (recommended)




## Authors & Credits

This project was developed by Group 3 for the 2025 TU/e Embedded Visual Control course, using the NVIDIA Jetson platform and ROS Melodic.

## Demo


[▶ Click to view demo video](DemoVideo_EVC_FinalProject.mp4)


