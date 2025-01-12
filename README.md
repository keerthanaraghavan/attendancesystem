**Attendance System Using Face Recognition**

**Project Overview**
This project is an Attendance System that uses a webcam to recognize individuals based on a pre-trained machine learning model. 
The system marks attendance in a PostgreSQL database after verifying the individual's identity.

**Features**
* Real-time face detection and recognition.
* Automatic attendance marking with date and time.
* Integration with PostgreSQL for storing and updating attendance data.
* Prevents duplicate attendance for the same day.

**System Requirements**
**1.Software:**
Python 3.10 or higher
PyCharm IDE or any preferred Python IDE
PostgreSQL database

**2.Python Libraries:**
OpenC
NumPy
Keras
psycopg2

**3.Hardware:**
Webcam or any external camera for real-time detection.

**Setup and Procedures**
**1.Environment Setup**
Install Python 3.10 or higher.
Set up a virtual environment using PyCharm or venv.
Install the required Python libraries using
**pip install -r requirements.txt**

**2. Database Setup**
Create a PostgreSQL database named attendance.
Define two tables:
**Persons:**
**regno (Primary Key)**
**name**
**attendance (default to 0)**
**Attendance:**
**person_name**
**regno**
**date**
**time**
Insert the required data into the Persons table (e.g., student or employee details).

**3. Model Training**
**1. Open Google Teachable Machine**
Go to Google Teachable Machine.
Select the Get Started button.
![Screenshot (45)](https://github.com/user-attachments/assets/22e15bbb-134d-48f1-aa1e-531ae27191e8)

**2. Create a New Project**
Click on Image Project to start an image recognition project.
Select Standard Image Model.
![Screenshot (33)](https://github.com/user-attachments/assets/6c76b7ec-a57a-4d9a-8280-861138c8ade3)

**3. Collect Training Data**
Use your webcam or upload images for each class:
Webcam: Capture images directly from your webcam.
Upload: Drag and drop or upload multiple images for better accuracy.
![Screenshot (46)](https://github.com/user-attachments/assets/b86a2f3d-552f-4b0e-865a-7e8825aa16ee)


**4. Train the Model**
Once all images are uploaded for each class, click on the Train Model button.
Wait while the model is trained. This process might take a few seconds to minutes
![Screenshot (47)](https://github.com/user-attachments/assets/d866b246-bdfb-43ff-bd29-c1128bdd3415)
.
**5. Test the Model**
After training is complete, use the Preview section to test the model:
Point your webcam at a person to see the predictions.
Verify if the confidence score is accurate for each individual.
![Screenshot (51)](https://github.com/user-attachments/assets/daa0972b-1fb9-4423-968a-5cce601604f6)


Save the labels.txt file containing class labels.
**downlad the model**
![Screenshot (52)](https://github.com/user-attachments/assets/7e809c05-2145-4f00-885f-441ca40406f9)



**4. Running the Project**
Place the keras_Model.h5 and labels.txt files in the project directory.
Open the project in PyCharm.
Run the main Python file to start the system.
**The webcam will activate, and the system will recognize faces.**
![Screenshot (55)](https://github.com/user-attachments/assets/203331a0-fcbb-4182-9569-4e41b21b06ff)

**5. Attendance Workflow**
The system predicts the individual's identity from the webcam feed.
![Screenshot (59)](https://github.com/user-attachments/assets/590eb94e-d214-4d86-9131-546dd47b7cb9)

It matches the detected person with the database.
If the person is identified and hasn't been marked for the day:
Attendance is recorded with the current date and time.

The count of attendance is updated in the Persons table.
If already marked, it notifies the user.
![Screenshot (61)](https://github.com/user-attachments/assets/199a727a-8173-400c-b228-7c437e14a461)


**Usage Notes**
Ensure that the Persons table is populated before running the project.
Maintain the database connection settings (host, username, password, database name) in the code.
To stop the program, press the ESC key.

**Project Folder Structure**
css
Copy code
**project/**
**├── keras_Model.h5**
**├── labels.txt**
**├── main.py**
**├── requirements.txt**
**└── README.md**

**Troubleshooting**
Webcam not detected:Ensure the camera is connected and accessible by the system.
Check OpenCV installation.
Database errors:Verify PostgreSQL connection details.
Check if the required tables exist and are correctly structured.
Low confidence predictions: Ensure the model is well-trained with clear, diverse images of the individuals.

**Future Enhancements**
Add GUI for better user interaction.
Enable email notifications for attendance.
Implement multi-camera support for larger spaces.



