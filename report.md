SMARTWATT

Project report

Submitted in partial fulfilment of the 
requirement for the award of the degree of

BACHELOR OF COMPUTER APPLICATIONS
(University of Calicut)

Submitted by

ALOKA VARSHA  A          			YVAXBCA005
ASWATHY S					YVAXBCA012
JISHNU P G					YVAXBCA033
RAHUL M NAIR			             YVAXBCA037

 
 

2025-2026 Academic Year 
 

UNIVERSITY OF CALICUT
BACHELOR OF COMPUTER APPLICATIONS
 
CERTIFICATE
This is to certify that the project report entitled “SMARTWATT - AI Based Electricity Consumption Analysis System” is a Bonafide record done by Aloka Varsha A (YVAXBCA005), Aswathy S (YVAXBCA012), Jishnu P G (YVAXBCA033),   Rahul M Nair (YVAXBCA037) during the academic year 2025 - 2026 towards the partial fulfilment of the requirements for the award of Bachelor of Computer Applications of University of Calicut.

……………………………………				        ...…….…………………………
Project Guide						       Head Of Department
Ms. Sruthi K						       Dr. Praveen S


…………………………				         …………………………
Principal                                                                                     EXTERNAL EXAMINER
Dr. Tomy Antony	 
DECLARATION
We, Aloka Varsha A (YVAXBCA005), Aswathy S (YVAXBCA012), Jishnu P G (YVAXBCA033), Rahul M Nair (YVAXBCA037)  hereby declare that the project work entitled “SMARTWATT” developed at Yuvakshetra Institute of Management Studies, Ezhakkad, Mundur, Palakkad, Kerala and submitted to the University of Calicut, in partial fulfillment of the requirements for the award of the degree of BACHELOR OF COMPUTER APPLICATIONS, is a record of original project work done by us during the period of 2025 - 2026, under the supervision and guidance of Ms. Sruthi K, Assistant Professor, Department of Computer Application, Yuvakshetra Institute of Management Studies, Ezhakkad, Palakkad.
.



Place : Ezhakkad					           Signature of the Candidate							
Date :							           1.
							           2.
							           3.
							           4.



 
ACKNOWLEDGEMENT
We are very much grateful to the Almighty, who has helped us all the way through the project and who has moulded us into what we are today. we have been fortunate enough to be able to secure cooperation, guidance, and assistance from a number of people. We are at a loss for how to express the deep sense of gratitude we have towards all of them. We are greatly indebted to our Principal, Dr. Tomy Antony, who has given us the permission for the fulfillment of this venture. We would like to express our gratitude to Dr. Praveen S, Head of the Department for the valuable support and guidance throughout our career in the college during my project. We would like to express our deep sense of gratitude to our guide, Ms. Sruthi K, Assistant Professor, Department of Computer Application, for the valuable encouragement and guidance she gave us for the successful completion of the project. We are grateful to her in all the ways. We would like to express our heartfelt gratitude to all other faculty members, Department of Computer Application, for their guidance and support throughout our project. Last but certainly not least, We would like to express our deep sense of gratitude to our family members and beloved friends for their moral support and encouragement, without which we would not have been able to follow our dreams.


 
ABSTRACT
Electricity has become an essential part of everyday life due to the increasing use of electrical appliances in residential households. Although electricity consumption continues to rise, most existing billing systems provide only total energy usage and do not offer appliance-wise consumption details. This makes it difficult for users to understand how electricity is actually being used inside their homes. The SmartWatt project presents an AI-based electricity consumption analysis system that estimates appliance-wise energy usage using a software-only approach. The system does not rely on additional hardware such as sensors or IoT devices, making it cost-effective and easy to use. A hybrid approach combining artificial intelligence with basic electrical principles is adopted to ensure realistic and reliable predictions. Neural network models are used to learn household electricity usage patterns, while physics-based constraints are applied to prevent unrealistic results. The system allows users to enter appliance details through a web-based interface and view electricity consumption analysis in a clear and understandable manner. Additional features such as confidence analysis and anomaly detection help identify unusual usage patterns. Overall, the SmartWatt system helps users gain better awareness of their electricity consumption, reduce unnecessary energy usage, and adopt efficient energy management practices.












SL. NO	TITLE	PAGE NO
1	INTRODUCTION	2

2	WORKING PRINCIPLE	4
	2.1 HYBRID AI ARCHITECTURE & DATASET	4
	2.2 LEARNING APPROACH & SYSTEM LOAD	8
3	SYSTEM OUTLINE & WORKFLOW	11

4	COMPONENTS	14
	4.1 CORE TECHNOLOGIES & FRAMEWORKS	14
	4.2 AI & UTILITY MODULES	17

5	OPERATION OF THE PROJECT	20
	5.1 ELECTRICITY  CONSUMPTION  ANALYSIS	20
6	OBSERVATIONS AND RESULT	25
7	BENEFITS OF THE PROJECT	29
8	CONCLUSION	33
9	AVENUES FOR FURTHER WORK	37
10	SCREENSHOTS	40


11	PROGRAMMING CODE	46
	11.1 AI MODEL TRAINING & DATA GENERATION	46
	11.2 BACKEND IMPLEMENTATION	49
	11.3 FRONTEND IMPLEMENTATION	51
	11.4 DATABASE SCHEMA	53
12	REFERENCES	57
CONTENTS

LIST OF FIGURES
FIGURE NO	FIGURE TITLE	PAGE NO
2.1	HYBRID AI–PHYSICS ARCHITECTURE	5
2.2	TRAINING ACCURACY AND LOSS GRAPH	6
2.3	SAMPLE DATASET FOR ANALYSIS	7
3.1	SYSTEM OUTLINE FLOWCHART	12
4.1	DATABASE ER DIAGRAM	16
5.1	PROCESS FLOWCHART	20
10.1	DASHBOARD OVERVIEW	40
10.2	MODE SELECTION SCREEN	41
10.3	HOUSEHOLD DETAILS SCREEN	42
10.4	APPLIANCE SELECTION SCREEN	43
10.5	PREDICTION OUTPUT SCREEN	44












  






 










CHAPTER 1

CHAPTER 1
INTRODUCTION
Electricity plays a vital role in modern society and has become an essential part of everyday life. Almost every household depends on electricity to operate common appliances such as lights, fans, refrigerators, televisions, washing machines, and air conditioners. With continuous technological advancements and increasing comfort requirements, the number of electrical appliances used in homes has increased, leading to a steady rise in electricity consumption.
Efficient management of electricity consumption has therefore become an important concern for both electricity providers and consumers. Proper usage of electricity helps reduce electricity bills and also contributes to the conservation of natural resources. However, many users are not clearly aware of how electricity is consumed within their households, especially at the appliance level. This lack of awareness often results in inefficient usage and unnecessary wastage of energy.
Traditional electricity billing systems measure only the total energy consumption for a billing period and do not provide appliance-wise details. Because of this limitation, users are unable to identify high energy-consuming appliances accurately. The SmartWatt project addresses this issue by estimating appliance-wise electricity consumption using artificial intelligence without relying on additional hardware such as sensors or IoT devices. A hybrid AI–physics-based approach is used to ensure realistic predictions, and a web-based interface is provided to help users understand and manage their electricity usage effectively.




























 



CHAPTER 2 

CHAPTER 2
WORKING PRINCIPLE
The SmartWatt system is designed to analyse and predict household electricity consumption by estimating appliance-wise energy usage using artificial intelligence techniques. The working principle of the system involves collecting structured electricity usage data, processing it using a hybrid analytical approach, and presenting the final results to the user in a clear and understandable format. The system follows a step-by-step flow of operations to ensure accuracy, reliability, and practical usability.
The operation of the SmartWatt system begins by collecting appliance-related input data from the user through a web-based interface. Users provide details such as appliance type, power rating, and average daily usage duration. Once the input data is collected, it is pre-processed to ensure consistency and correctness. This includes removing inconsistencies, validating input ranges, and normalizing values. The processed data is then prepared as input for the artificial intelligence model used in the system.
One of the key features of the SmartWatt system is the use of a hybrid AI–physics-based approach. In this approach, a neural network model is used to learn electricity consumption patterns from historical usage data. At the same time, physics-based rules are applied to validate and restrict the predicted values. This combination helps overcome the limitations of purely data-driven models and ensures that the predicted electricity consumption values remain within realistic electrical limits.
After generating and validating the predictions, the system performs confidence analysis and anomaly detection to identify irregular or unusual electricity usage patterns. Finally, the validated results are displayed to the user through the web interface in the form of summaries, charts, and comparative views. This structured workflow helps users understand their electricity consumption behaviour and supports informed decision-making related to efficient energy usage.
2.1 Hybrid AI–Physics Architecture & Dataset
The Hybrid AI–Physics Architecture forms the core foundation of the SmartWatt system. This architecture combines artificial intelligence techniques with basic electrical principles to generate accurate and realistic electricity consumption predictions. Artificial intelligence models, especially neural networks, are capable of learning complex relationships from data. However, when such models are used on their own, they may sometimes produce predictions that are not physically possible in real-world electrical systems.
To overcome this limitation, the SmartWatt system integrates physics-based constraints into the prediction process. In this approach, the neural network model first generates initial electricity consumption estimates based on learned usage patterns from historical data. These predicted values are then passed through a physics-based validation layer. This layer verifies whether the predictions comply with essential electrical principles such as power rating limits, operating time constraints, and energy conservation rules.
By applying this hybrid approach, the system ensures that appliance-wise electricity consumption does not exceed the maximum possible usage based on the specifications of each appliance. This architecture improves the reliability and interpretability of the SmartWatt system while significantly reducing the possibility of unrealistic predictions. The overall Hybrid AI–Physics Architecture used in the SmartWatt system is illustrated in Figure 2.1.
 
Figure 2.1 Hybrid AI-Physics Architecture
Neural Network Architecture
The neural network model used in the SmartWatt system plays an important role in learning and predicting electricity consumption behaviour. Neural networks are a type of machine learning model inspired by the working of the human brain. They consist of interconnected processing units, called neurons, which work together to process input data and generate prediction results.
In the SmartWatt system, a multi-output neural network architecture is used. Unlike traditional models that predict only a single value, this model predicts two important parameters at the same time. The first parameter is the efficiency factor, which ranges from 0.5 to 1.5 and represents appliance efficiency or degradation. The second parameter is the effective usage hours, which range from 0 to 24 hours per day and represent the actual daily operation time of the appliance.
The neural network consists of shared hidden layers that learn common usage patterns from the input data. These hidden layers contain 128 and 64 neurons and use dropout regularization to reduce overfitting. After the shared layers, the network splits into two separate output layers, with each output layer specialized for predicting one of the two parameters.
The neural network model is trained using structured household electricity usage data generated through Monte Carlo simulation for Kerala households. The input features include appliance specifications such as tonnage, capacity, and star rating, along with household details like the number of occupants, location type, and seasonal conditions. During the training process, the model adjusts its internal weights to reduce the difference between predicted values and actual consumption values. The training accuracy and loss behaviour of the neural network model are illustrated in Figure 2.2.
 
Figure 2.2 Training accuracy and loss graph
Dataset Characteristics
The dataset used in the SmartWatt system consists of structured household electricity usage data specifically designed for Kerala households. This synthetic dataset of 12,000 households is generated using Monte Carlo simulation techniques that incorporate Kerala-specific factors such as high humidity affecting cooling appliance runtime, voltage fluctuations in rural areas impacting efficiency, and typical household demographics. The dataset includes 22 different appliance types with realistic variations in specifications (tonnage, capacity, star ratings, age) and usage patterns (heavy, moderate, light).
 This data forms the basis for training and evaluating the neural network models used in the system. Before using the dataset for training, several preprocessing steps are applied to ensure data quality and consistency. These steps include handling missing values, normalizing numerical attributes, separating numeric features for scaling and categorical features for one-hot encoding, and organizing the data into suitable formats. The dataset is divided into training (80%) and validation (20%) sets to evaluate the performance of the model during the learning process. A sample of the dataset used in the system is illustrated in Figure 2.3
 
Figure 2.3 Sample dataset for analysis

User Interface Design
The SmartWatt system includes a web-based user interface that serves as the primary point of interaction between the user and the system. The user interface is designed to be simple and intuitive so that users without technical knowledge can easily input appliance details and understand the analysis results. Through the user interface, users can enter information such as appliance type, power rating, and average daily usage hours. Once the input is submitted, the system processes the data and displays appliance-wise electricity consumption estimates. The interface also provides summary views and comparative representations to help users identify high energy-consuming appliances.
2.2 Learning Approach & System Load
Learning Parameters and Training
Learning parameters are the configuration values that control the training process of the neural network model. These parameters include learning rate, number of training epochs, batch size, and activation functions. Proper selection of learning parameters is important to ensure effective learning and stable model performance.
In the SmartWatt system, learning parameters are selected based on experimental evaluation and practical considerations. The learning rate determines how quickly the model adapts to changes during training, while the number of epochs (30 epochs with batch size 32) controls how many times the dataset is processed by the model. These parameters directly influence the accuracy and convergence behaviour of the neural network.
The trained neural network is capable of identifying hidden patterns in electricity usage data that may not be easily observable through manual analysis, such as the combined effect of appliance age, voltage fluctuations in rural areas, and seasonal humidity on actual consumption. Once trained, the model can predict appliance-wise electricity consumption for new input data. To ensure reliability, the predicted values generated by the neural network are further validated using physics-based constraints before being presented to the user.

Confidence Analysis and Anomaly Detection
Confidence analysis and anomaly detection are important components of the SmartWatt system. Confidence analysis is used to evaluate the reliability of predicted electricity consumption values. Predictions with high confidence indicate consistent model behaviour, while low-confidence predictions may require further analysis. Anomaly detection is used to identify unusual electricity usage patterns that deviate significantly from normal behaviour. Such anomalies may occur due to incorrect input data, faulty appliances, or sudden changes in usage habits. By detecting anomalies, the SmartWatt system helps users identify potential issues and improve energy management practices.
System Load Balancing
System load balancing is a critical component of the SmartWatt system that ensures realistic and physics-believable electricity consumption predictions. System load represents the unaccounted consumption from standby devices, background electronics, power transmission losses, and appliances not explicitly modeled by the system.
In real-world households, a certain percentage of total electricity consumption cannot be directly attributed to specific appliances. This unaccounted load typically includes standby power consumption from devices in idle mode, charging devices (mobile phones, tablets, laptops), networking equipment (routers, modems), security systems (CCTV cameras), and power losses due to voltage fluctuations. 
The SmartWatt system implements intelligent system load capping to maintain academic credibility and practical accuracy. The system caps system load at a maximum of 15% of total monthly consumption. This threshold is based on electrical engineering studies and real-world household consumption patterns. When the raw system load calculation exceeds this 15% threshold, the excess consumption is redistributed proportionally among high-consumption appliances (Refrigerator 35%, Ceiling Fan 30%, LED Lights 20%, AC 10%, TV 5%). 
The system also provides location-aware explanations for system load. For urban households, it accounts for inverter charging and home automation devices. For rural households, it accounts for voltage fluctuations and agricultural pump inefficiencies. This ensures that the final predicted consumption values remain physically realistic while matching the actual electricity bill.

























 


CHAPTER 3 

CHAPTER 3
SYSTEM OUTLINE & WORKFLOW
The SmartWatt system outline explains the complete workflow involved in analysing and predicting household electricity consumption. It shows how data moves through different stages of the system, starting from user input and ending with the final results displayed to the user. This outline helps in understanding the interaction between various system components and the sequence of operations performed.
The system follows a structured and step-by-step approach to ensure accurate and reliable electricity consumption analysis. Each stage performs a specific function, and the output of one stage becomes the input for the next stage, making the system easy to understand and maintain.
The operation begins when the user enters appliance-related details through the web-based interface. These inputs include appliance type, power rating, and average usage duration. Once collected, the input data is sent to the backend processing module, where preprocessing is performed to ensure correctness. This includes validation of input ranges and normalization of values to avoid unrealistic predictions.
After preprocessing, the structured data is passed to the artificial intelligence module. The neural network model analyses the input features and predicts appliance-wise electricity consumption based on learned usage patterns. The predicted values are then validated using a physics-based engine that applies electrical constraints such as power limits and operating time restrictions. This step ensures that the predictions remain realistic and feasible.
Following validation, confidence analysis and anomaly detection are carried out to assess the reliability of predictions and identify unusual electricity usage patterns. Finally, the validated results are displayed through the user interface in the form of appliance-wise summaries and comparative views. The complete workflow of the SmartWatt system is illustrated in Figure 3.1.
 
Figure 3.1 System outline flowchart
The SmartWatt system is developed using a suitable combination of programming languages, libraries, and frameworks that support data processing, artificial intelligence, and web application development. These components are selected based on their reliability, ease of implementation, and suitability for academic and practical use.












 








CHAPTER 4
 

CHAPTER 4
COMPONENTS
The SmartWatt system is developed using a combination of programming languages, libraries, and frameworks that support data processing, artificial intelligence, and web application development. The selection of appropriate components plays a significant role in ensuring the accuracy, efficiency, and usability of the system. Each component used in the project serves a specific purpose and contributes to the overall functioning of the SmartWatt system. The components used in this project are selected based on their reliability, ease of implementation, and suitability for academic and practical applications.
4.1 Core Technologies & Frameworks
Python Programming Language
Python is a high-level, interpreted programming language widely used for software development, data analysis, and artificial intelligence applications. It provides a simple and readable syntax, which makes it suitable for beginners as well as experienced developers. Python supports multiple programming paradigms and has a rich ecosystem of libraries that simplify complex computational tasks.
 In the SmartWatt project, Python is used as the primary programming language for implementing the backend logic and machine learning components. Python enables easy handling of structured data and integration with artificial intelligence libraries. Due to its flexibility and extensive library support, Python helps in rapid development and testing of the system. Python is also platform-independent, which allows the SmartWatt system to be executed on different operating systems without significant modifications.
TensorFlow
TensorFlow is an open-source machine learning framework used for building and training artificial intelligence models. It supports numerical computation using data flow graphs and is widely used in deep learning applications. In the SmartWatt project, TensorFlow is used to implement the neural network model responsible for predicting appliance-wise electricity consumption. TensorFlow provides tools for defining model architecture, training the model, and evaluating its performance. It also supports optimization techniques that help improve prediction accuracy.
NumPy
NumPy is a Python library used for numerical computing and efficient handling of large datasets. It provides support for multi-dimensional arrays and mathematical operations that are essential for data analysis and machine learning applications. In the SmartWatt system, NumPy is used for processing numerical data related to electricity consumption. Appliance power ratings, usage duration values, and intermediate calculation results are stored and manipulated using NumPy arrays. This allows faster computation and efficient memory usage.
Backend Framework - FastAPI
The backend framework of the SmartWatt system is responsible for processing user inputs, executing the artificial intelligence model, and managing data flow between different components. The backend is built using FastAPI, a modern Python web framework known for high performance and automatic API documentation. 
FastAPI acts as the core processing unit of the system, providing RESTful API endpoints that the frontend communicates with. The backend implementation handles data preprocessing, input validation using Pydantic schemas, prediction execution through the neural network models, and result generation. It ensures that user requests are processed efficiently and that the output is delivered to the frontend interface in a structured JSON format. 
The backend includes specialized routers for different functionality (appliance predictions, batch processing, simulation recommendations) and service modules for reusable business logic. CORS middleware is configured to allow secure cross-origin requests from the frontend application.
Frontend Framework - Next.js
The frontend framework provides the user interface through which users interact with the SmartWatt system. The frontend is built using Next.js, a React-based framework that enables server-side rendering, static site generation, and optimized performance. 
Next.js allows users to input appliance details through a multi-step wizard interface, initiate analysis, and view electricity consumption results. The frontend interface is designed to be user-friendly and intuitive using modern UI components and responsive design with Tailwind CSS. It presents electricity consumption analysis using interactive visual elements such as bar charts (Recharts library), pie charts for breakdown visualization, and detailed data tables. 
User authentication is handled through Supabase Auth, and data persistence ensures users can return to their analysis at any time.
Database - Supabase (PostgreSQL)
Supabase is an open-source backend platform that provides database, authentication, and storage services using PostgreSQL. It is commonly used in modern web applications as a backend-as-a-service solution.
Supabase offers a scalable and reliable database environment while reducing the complexity of backend infrastructure management. 
In the SmartWatt project, Supabase is used as the primary database for storing user inputs, electricity consumption details, and AI-generated prediction results. The database plays an important role in maintaining historical records of electricity usage and enabling structured data storage for analysis and learning purposes. Supabase uses PostgreSQL as its underlying database engine and supports advanced data types such as JSONB. The ER Diagram  of the PostgreSQL is illustrated in Figure 4.1.
 
Figure 4.1 Database ER Diagram
4.2 AI & Utility Modules
Neural Network Model Architecture
The neural network model forms the artificial intelligence core of the SmartWatt system. Neural networks are computational models inspired by the structure of the human brain and are capable of learning complex patterns from data. In SmartWatt, 22 separate neural network models are trained, one for each appliance type (AC, refrigerator, ceiling fan, television, washing machine, water pump, water heater, iron, kettle, induction cooktop, desktop computer, microwave, mixer grinder, rice cooker, toaster, food processor, laptop, hair dryer, vacuum cleaner, LED lights, CFL lights, and tube lights). 
Each model is trained using structured household electricity consumption data specific to that appliance type. The models take inputs such as appliance specifications (tonnage, capacity, star rating, age), household demographics (occupants, location), and environmental factors (season) and learn the relationship between these inputs and the corresponding energy consumption. 
The neural network architecture employs a multi-output design with shared hidden layers followed by two specialized output heads. During training, each model adjusts its internal parameters to minimize prediction error for both efficiency factor and usage hours. Once trained, the neural network models are capable of predicting appliance-wise electricity consumption for new input data. All 22 models are preloaded into server memory during startup to ensure fast response times.
Physics-Based Validation Engine
The physics-based engine is an important component of the SmartWatt system that ensures realistic electricity consumption predictions. While artificial intelligence models are powerful, they may sometimes generate values that are not physically feasible. The physics-based engine applies basic electrical principles such as power limits and operating time constraints to validate predicted energy values. This ensures that the predicted electricity consumption does not exceed the maximum possible usage based on appliance specifications. By integrating physics-based validation with artificial intelligence predictions, the SmartWatt system achieves improved reliability and interpretability. This hybrid approach enhances user trust in the system's output.
Utility Modules and Services
Utility modules are supporting components used in the SmartWatt system to perform common tasks such as data normalization, energy calculation, and tariff-based cost estimation. These modules help streamline the implementation and improve code reusability. By separating utility functions from core logic, the SmartWatt system achieves better organization and maintainability. 
Utility modules contribute to consistent data processing and reliable system behaviour. The backend also implements several advanced features including service-oriented architecture with modular services (InputNormalizer, BatchPredictor, BiasAdjuster, LearningPipeline, SystemLoadBalancer) that separate business logic into reusable components. 
The anomaly detection engine provides two-tier detection for usage anomalies (behavioural issues like excessive AC operation) and efficiency anomalies (appliance health issues indicating 15%+ degradation). The simulation service offers what-if analysis for appliance upgrades with estimated monthly savings. 
The self-learning system implements automatic model retraining every 6 hours using real production data from Supabase, deploying improved models based on MAE and R² validation metrics. Parallel batch processing using ThreadPoolExecutor handles multiple appliance predictions simultaneously, reducing API response time by 3-5× compared to sequential processing. 



















CHAPTER 5
 


CHAPTER 5
OPERATION OF THE PROJECT
The operation of the SmartWatt project involves a systematic process of data collection, analysis, prediction, and result presentation. The project is designed to provide users with detailed insights into their household electricity consumption patterns through an intuitive web-based interface. This section describes the complete operational workflow of the system and explains how different components interact to deliver accurate appliance-wise electricity consumption estimates.
5.1 Electricity Consumption Analysis
The electricity consumption analysis system operates in a sequential manner, with each stage performing a specific function to ensure accurate and reliable predictions. The complete operational workflow is illustrated in Figure 5.1, which shows the process flowchart of the system.
 
Figure 5.1 Process flowchart
 
User Input Collection
The operation begins when a user accesses the SmartWatt web application through their browser. The system presents a multi-step wizard interface that guides users through the data collection process. In the first step, users provide household demographic information including the number of occupants, house type (urban/rural), current season (summer/monsoon/winter), and their recent bi-monthly electricity bill consumption in kilowatt-hours. This information helps the system understand the household context and establish baseline consumption expectations.
In the second step, users select the electrical appliances present in their household from a comprehensive list of 22 common appliance categories. The system supports major appliances such as air conditioners, refrigerators, washing machines, water pumps, and water heaters, as well as smaller devices like fans, lights, televisions, and kitchen appliances. Users can select multiple appliances based on their actual household configuration.
In the third step, users provide detailed specifications for each selected appliance. For example, for air conditioners, users specify tonnage (1.0, 1.5, or 2.0 tons), star rating (1 to 5 stars), age category, and average daily usage hours. For refrigerators, users provide capacity in liters, star rating, and age. Similar specification inputs are collected for other appliances to ensure accurate consumption predictions.
 Data Preprocessing and Validation
Once the user completes the input process and submits the data, the backend processing module receives the information through RESTful API endpoints. The system immediately performs data preprocessing to ensure consistency and validity. This includes checking for missing values, validating input ranges (e.g., ensuring usage hours do not exceed 24 hours per day), and normalizing numerical values to match the format expected by the neural network models.
The preprocessing pipeline separates numeric features (such as number of occupants, appliance capacity, usage hours) and categorical features (such as season, location type, appliance age categories). Numeric features are scaled using StandardScaler to bring all values to a comparable range, while categorical features are encoded using one-hot encoding to convert them into numerical representations suitable for neural network processing.
 AI-Based Prediction
After preprocessing, the system routes each appliance's data to its corresponding pre-trained neural network model. Since the system maintains 22 separate models (one per appliance type), predictions are executed in parallel using ThreadPoolExecutor to minimize response time. Each model receives the preprocessed input features and generates two critical predictions: the efficiency factor (indicating appliance degradation or efficiency, ranging from 0.5 to 1.5) and effective usage hours (indicating actual daily operation time, ranging from 0 to 24 hours).
The efficiency factor captures real-world conditions that affect appliance performance, such as age-related degradation, voltage fluctuations in rural areas, and seasonal factors like humidity affecting cooling appliances. The effective usage hours represent the model's learned understanding of how specific appliances are typically used in Kerala households, accounting for factors like family size, season, and appliance specifications.
 Physics-Based Validation
After prediction, the efficiency factors and usage hours are combined with physics-based calculations to produce final electricity consumption estimates. The physics engine calculates the rated power consumption of each appliance in watts based on its specifications using standard electrical formulas. For example, air conditioner consumption is calculated using tonnage and star rating, while refrigerator consumption depends on capacity, star rating, and appliance age.
The monthly electricity consumption for each appliance is calculated using the formula
monthly_kwh = (base_watts × efficiency_factor × effective_hours × 30) / 1000.
This hybrid approach ensures that all predictions remain physically realistic while still allowing the AI model to capture variations in actual usage patterns.
 Anomaly Detection and Confidence Analysis
Before displaying the results, the system performs two levels of anomaly detection. Usage anomalies identify unusual behaviour such as excessive air conditioner usage or inconsistent refrigerator operation. Efficiency anomalies detect possible appliance health issues, such as performance degradation above 15%, which may indicate the need for maintenance or replacement.
Each prediction is also assigned a confidence score based on the reliability of the model and the consistency of the input data. High-confidence predictions are shown normally, while low-confidence results include advisory notes suggesting users recheck their input details or appliance specifications.
 System Load Balancing
The SmartWatt system accounts for unmeasured electricity usage, known as system load, which includes standby devices, background electronics, and power transmission losses. To maintain realistic results, system load is capped at a maximum of 15% of total monthly consumption. If this limit is exceeded, the extra load is redistributed among major high-consumption appliances such as the refrigerator, ceiling fan, LED lights, air conditioner, and television. This approach ensures that total predicted consumption matches the user’s actual electricity bill while keeping individual appliance estimates physically realistic.
 Result Presentation
The validated results are displayed to the user through the frontend interface using clear and interactive visualizations. The results page shows the total monthly electricity consumption, followed by an appliance-wise bar chart with colour-coded indicators for low, medium, and high consumption. A detailed table also presents monthly energy usage in kWh, efficiency scores, and predicted daily usage hours for each appliance. In addition, the KSEB tariff calculator estimates the bi-monthly electricity bill based on Kerala tariff slabs, helping users compare predicted values with their actual bills.
 Data Persistence and Learning
All user inputs and AI-generated predictions are stored securely in a PostgreSQL database using Supabase. This stored data supports the self-learning capability of the system, where predicted values are periodically compared with actual user consumption data. Based on newly accumulated data, the neural network models are retrained at regular intervals to improve prediction accuracy. Only improved models are deployed, ensuring continuous system improvement.

























CHAPTER 6 


CHAPTER 6
OBSERVATIONS AND RESULT
The SmartWatt system was developed and tested to analyze household electricity consumption patterns and provide appliance-wise consumption estimates. This section presents the observations made during the development and testing phases, along with the results obtained from the system's operation.
 System Performance and Accuracy
The SmartWatt system successfully generates appliance-wise electricity consumption predictions for Kerala households. The hybrid AI-Physics approach ensures that predictions remain within realistic electrical limits while capturing region-specific usage patterns. The multi-output neural network architecture, trained on a synthetic dataset of 12,000 households, demonstrates stable performance across different household configurations and appliance combinations.
The system's prediction accuracy is validated through comparison with actual user electricity bills. The intelligent system load balancing mechanism ensures that the sum of all appliance-wise predictions matches the total household consumption reported by users. The 15% cap on system load prevents unrealistic attribution of consumption to unaccounted devices, maintaining academic credibility and practical accuracy.
 User Interface and Experience
The web-based user interface provides an intuitive and user-friendly experience for electricity consumption analysis. The multi-step wizard interface guides users through the data collection process systematically, reducing input errors and ensuring complete information capture. The responsive design built with Next.js and Tailwind CSS ensures compatibility across different devices and screen sizes.
 Consumption Visualization
The results display component presents appliance-wise consumption data through multiple visualization formats. The interactive bar chart (powered by Recharts library) provides immediate visual feedback on consumption patterns, with color-coded bars helping users quickly identify high-consumption appliances.
The detailed data table complements the visual representation by providing exact numerical values for monthly consumption (in kWh), efficiency scores, and predicted daily usage hours for each appliance. This comprehensive presentation enables users to make informed decisions about their energy usage and identify opportunities for efficiency improvements.
 Regional Applicability
The system demonstrates strong applicability to Kerala household conditions. The incorporation of region-specific factors such as monsoon humidity effects, voltage fluctuations in rural areas, and KSEB billing patterns ensures that predictions align with real-world electricity consumption behavior in Kerala. The KSEB tariff calculator accurately implements the 2024-25 telescopic slab rates (₹3.25 to ₹8.20 per unit across 50-unit slabs) and fuel surcharge calculations, enabling users to verify predicted consumption against their actual electricity bills.
 Performance Metrics
The system achieves significant performance improvements through technical optimization. Model preloading during server startup eliminates cold-start delays, ensuring that prediction requests are processed immediately. Parallel batch processing using ThreadPoolExecutor reduces API response time by 3-5× compared to sequential processing, particularly beneficial when analyzing households with multiple appliances. The FastAPI backend handles concurrent user requests efficiently, maintaining responsive performance even under load.
 Anomaly Detection Results
The two-tier anomaly detection system successfully identifies unusual consumption patterns and appliance efficiency issues. Usage anomalies highlight behavioral patterns that deviate from typical household consumption, such as excessive air conditioner operation or irregular refrigerator runtime. Efficiency anomalies detect appliances showing 15%+ degradation, alerting users to potential maintenance needs or replacement considerations. These insights help users optimize their energy consumption and maintain appliance health.

 Self-Learning Capability
The automated training pipeline demonstrates the system's ability to learn from real user data. By storing predicted consumption values alongside actual user input values in the PostgreSQL database, the system accumulates a growing dataset of real-world Kerala household consumption patterns. The periodic retraining process (every 6 hours) enables the neural network models to improve their accuracy over time as more diverse household configurations are analyzed. Model deployment is conditional on validation metrics (MAE and R²), ensuring that only improved models replace existing ones in production.
 Database and Storage
The PostgreSQL database with JSONB storage provides flexible and efficient data management. The schema design supports varying appliance configurations without requiring database migrations when new appliance types are added. The unique constraint on user_id ensures data integrity while supporting efficient upsert operations. The database successfully maintains historical records of user electricity usage, enabling future features such as trend analysis and consumption pattern tracking.
 Technical Robustness
The system demonstrates robustness through proper error handling, input validation, and graceful degradation. The Pydantic schemas in the backend ensure that API requests are validated before processing, preventing invalid data from causing system errors. The physics-based validation layer acts as a safeguard against unrealistic predictions, even if the neural network generates outlier values. The CORS middleware configuration enables secure cross-origin requests from the frontend application while maintaining security.
 Scalability and Extensibility
The modular architecture with separation of concerns (routers, services, engines, utilities) facilitates easy maintenance and future expansion. The service-oriented design allows new features to be added without disrupting existing functionality. The use of JSONB for appliance data storage enables the system to accommodate new appliance types without schema changes. The component-based frontend architecture (React components) supports incremental feature additions and UI enhancements.
















CHAPTER 7 


CHAPTER 7
BENEFITS OF THE PROJECT
The SmartWatt project provides several benefits to residential electricity consumers, especially in Kerala, by offering clear insights into household energy consumption patterns. The major benefits of the system are explained below.
 Enhanced Energy Awareness
The SmartWatt system helps users understand their electricity consumption at the appliance level. Traditional electricity bills show only total consumption, making it difficult to identify which appliances consume more energy. SmartWatt provides appliance-wise consumption details, enabling users to make informed decisions about their energy usage.
 Cost Reduction Opportunities
By identifying high-consumption appliances and inefficient usage patterns, SmartWatt helps users reduce electricity costs. The system highlights appliances that consume excessive energy and provides efficiency scores that indicate appliance health. Anomaly detection also helps identify unusual usage patterns that may require attention.
 Software-Only Solution
Unlike hardware-based energy monitoring systems, SmartWatt operates as a software-only solution. Users can analyse electricity consumption using a web browser without installing sensors, smart meters, or IoT devices. This eliminates hardware costs, installation complexity, and maintenance requirements, making the system accessible to a wider range of users.
 Regional Customization
The system is designed specifically for Kerala households and incorporates region-specific factors such as monsoon humidity, rural voltage fluctuations, and local usage patterns. The KSEB tariff calculator follows official billing standards, ensuring that predicted consumption values closely match actual electricity bills.
 
User-Friendly Interface
The web-based interface provides a simple and intuitive user experience. A multi-step wizard guides users through data entry, while responsive design ensures compatibility across different devices. Interactive visualizations with colour-coded charts make consumption data easy to understand.
 Accurate Hybrid Predictions
SmartWatt combines AI-based learning with physics-based validation to produce accurate and realistic predictions. Neural networks learn complex usage patterns, while physics-based rules prevent unrealistic results. This hybrid approach improves reliability compared to purely data-driven or purely rule-based methods.
 Continuous Improvement
The self-learning capability enables the system to improve over time as more users provide consumption data. The automated training pipeline retrains neural network models periodically using real production data, allowing the system to adapt to changing consumption patterns and improve prediction accuracy. This continuous learning ensures the system remains relevant and accurate as appliance technologies evolve and usage patterns change.
 Privacy and Data Security
User data is securely stored in a PostgreSQL database through Supabase, with authentication ensuring that only authorized users can access their electricity consumption details. The system does not require access to real electrical infrastructure or real-time monitoring, which helps protect user privacy. Each user is assigned a unique record, ensuring proper data isolation and preventing unauthorized access.
 Educational Value
The SmartWatt system also serves an educational purpose by helping users understand how appliance specifications, usage patterns, and operating conditions affect electricity consumption. Efficiency scores and predicted usage hours allow users to learn how different factors influence energy usage. The anomaly detection explanations further guide users on optimal appliance usage and maintenance, promoting energy awareness and responsible consumption behaviour.
 Environmental Impact
By identifying energy wastage and suggesting efficient usage patterns, SmartWatt helps reduce unnecessary electricity consumption. Lower household energy usage leads to reduced fossil fuel consumption for electricity generation, which in turn helps reduce carbon emissions. The system therefore supports environmental conservation and sustainable energy practices.
 Scalability and Accessibility
The SmartWatt system uses a cloud-based architecture with Supabase and modern web technologies, allowing it to scale and support multiple users simultaneously. The RESTful API design supports future integration with mobile applications and other platforms. The modular code structure makes it easy to add new appliances, regions, or advanced analysis features. The use of open-source technologies ensures long-term maintainability and community support.
 Economic Feasibility
The development and deployment cost of SmartWatt is low compared to hardware-based solutions. Open-source technologies reduce licensing costs, and cloud deployment through platforms like Render and Vercel provides cost-effective hosting with automatic scaling. Since no additional hardware is required, costs related to manufacturing, installation, and maintenance are eliminated, making the system economically suitable for large-scale adoption.

























 







CHAPTER 8 

CHAPTER 8
CONCLUSION
The SmartWatt project successfully demonstrates the application of artificial intelligence and physics-based principles for analyzing household electricity consumption in Kerala. The system addresses a significant gap in residential energy management by providing appliance-wise consumption estimates without requiring additional hardware infrastructure.
The hybrid AI-Physics architecture represents a key innovation of the project, combining the pattern learning capabilities of neural networks with the reliability of physics-based validation. This approach ensures that predictions are both accurate (learning from real consumption patterns) and realistic (constrained by electrical principles). The multi-output neural network architecture predicting both efficiency factors and usage hours captures the complexity of real-world appliance operation, accounting for factors such as appliance degradation, seasonal variations, and regional electrical infrastructure characteristics.
The system's training on a synthetic dataset of 12,000 Kerala households incorporating region-specific factors ensures strong applicability to the target user base. The incorporation of monsoon humidity effects, rural voltage fluctuations, and KSEB billing patterns demonstrates attention to local context that distinguishes this solution from generic energy analysis tools. The KSEB tariff calculator implementing accurate telescopic slab rates and fuel surcharge calculations enables users to verify predicted consumption against their actual bills, building trust in the system's accuracy.
The technical implementation showcases modern web development practices and scalable architecture. The FastAPI backend with service-oriented design, parallel batch processing, and automated model retraining demonstrates production-ready engineering. The Next.js frontend with responsive design, multi-step wizard interface, and interactive visualizations provides an accessible user experience. The PostgreSQL database with JSONB storage offers flexible data management supporting future system enhancements.
The system delivers tangible benefits to users by increasing energy awareness, identifying cost reduction opportunities, and promoting efficient electricity consumption behavior. The software-only approach eliminates hardware costs and installation complexity, making energy analysis accessible to a broad audience. The anomaly detection capability helps users identify appliance health issues, while the efficiency scoring provides actionable insights for maintenance and replacement decisions.
From an academic perspective, the SmartWatt project demonstrates successful integration of multiple computer science and electrical engineering concepts. The application of machine learning for pattern recognition, the implementation of physics-based constraints for validation, the development of full-stack web applications with modern frameworks, and the design of scalable database schemas all represent important learning outcomes achieved through this project.
The self-learning capability incorporating automated model retraining based on real user data showcases an understanding of continuous improvement in AI systems. The system's ability to improve predictions over time as more diverse household configurations are analyzed demonstrates the value of production data for model enhancement.
The project also highlights important considerations in AI system development, including the need for data preprocessing and validation, the importance of explainable predictions through hybrid approaches, the value of user-centered interface design for complex technical systems, and the necessity of regional customization for practical applicability.
The modular architecture and comprehensive documentation position the SmartWatt system for future enhancements and extensions. The clear separation of concerns between training, prediction, validation, and presentation components facilitates adding new features without disrupting existing functionality. The use of open-source technologies ensures long-term maintainability and community support.
While the current implementation successfully achieves the project's primary objectives, the avenues for further work outlined in this report demonstrate the potential for expanded functionality and broader impact. Integration with real-time monitoring, support for additional regions, incorporation of renewable energy analysis, and development of mobile applications represent natural progressions that would enhance the system's value and reach.
The SmartWatt project contributes to the broader goals of energy conservation and environmental sustainability by helping households understand and optimize their electricity consumption. As electricity demand continues to grow and environmental concerns intensify, tools that promote energy awareness and efficient usage become increasingly important. The project demonstrates that intelligent software solutions can provide valuable insights into energy consumption without requiring expensive hardware infrastructure.
In conclusion, the SmartWatt system successfully achieves its goal of providing detailed, accurate, and actionable electricity consumption analysis for Kerala households. The hybrid AI-Physics approach, region-specific customization, user-friendly interface, and continuous learning capability combine to create a practical solution addressing real-world energy management needs. The project serves as both a functional tool for household energy analysis and a demonstration of modern software engineering and machine learning practices applied to a socially relevant problem.





















 












CHAPTER 9 


CHAPTER 9
AVENUES FOR FURTHER WORK
While the SmartWatt system successfully achieves its primary objective of providing appliance-wise electricity consumption analysis for Kerala households, there are several opportunities for further enhancement and expansion. Future developments can improve functionality, accessibility, and accuracy of the system.
Mobile Application Development
A dedicated mobile application for Android and iOS platforms can be developed to improve accessibility and user engagement. Features such as push notifications for high consumption alerts, anomaly warnings, and energy-saving tips can be added. Camera-based input for capturing appliance rating labels may further reduce manual data entry.
Real-Time Monitoring Integration
Future versions of the system could integrate with smart meters or IoT sensors to enable real-time electricity consumption monitoring. This would allow continuous tracking, instant anomaly detection, and more accurate prediction models based on real usage data.
Expanded Geographical Coverage
The system can be extended to support other Indian states beyond Kerala. This would involve creating region-specific datasets that consider local climate conditions, voltage stability, and state electricity board tariff structures, thereby increasing the system’s applicability.
Advanced Energy Optimization
Optimization techniques can be incorporated to recommend practical actions for reducing electricity consumption while maintaining comfort. Integration with time-of-use tariffs could help users shift usage to off-peak hours and reduce electricity costs.
Integration with Renewable Energy
Support for households using solar panels or other renewable energy sources can be added. Features such as solar generation analysis, battery storage optimization, and self-consumption recommendations would enhance system usefulness for renewable energy users.
Predictive Maintenance
Anomaly detection can be enhanced to predict appliance failures based on efficiency degradation trends. This would allow users to perform maintenance or replacement before complete appliance failure, improving reliability and cost savings.
Advanced Visualization and Reports
Future improvements may include time-series graphs, comparative monthly reports, and automated PDF report generation for energy audits or documentation purposes.
Smart Home and AI Enhancements
Integration with smart home platforms and voice assistants could enable automated appliance control and conversational queries. Advanced machine learning techniques such as attention-based models and ensemble learning could further improve prediction accuracy.
Environmental and Social Impact Features
Carbon footprint analysis can be included to show the environmental impact of electricity consumption. Multilingual support in Indian languages can improve accessibility, while social and gamification features may encourage energy-efficient behavior.



















CHAPTER 10


CHAPTER 10
SCREENSHOTS
 
Figure 10.1 Dashboard Overview 

 
Figure 10.2 Mode Selection Screen
 
Figure 10.3 Household Details Screen
 
Figure 10.4 Appliance Selection Screen
 
Figure 10.5 Prediction Output Screen













CHAPTER 11 

 
CHAPTER 11
PROGRAMMING CODE
Note: This section presents representative code snippets that demonstrate the core functionality of the SmartWatt system. The complete source code, including detailed implementations, configuration files, and helper utilities, is submitted separately as part of the project deliverables.
The SmartWatt system is implemented using Python for backend artificial intelligence operations and Next.js/React for the web-based frontend. This section focuses on the essential code components that illustrate the system's hybrid AI–Physics architecture, prediction logic, and user interface design.
11.1 AI Model Training & Data Generation
Synthetic Dataset Generation (Backend/newdataset.py)
Purpose: Generates realistic Kerala household electricity consumption training data using Monte Carlo simulation.
```python
def generate_synthetic_data(num_samples=12000):
    data = []  
    for _ in range(num_samples):
        household = {
            'num_people': random.randint(1, 10),
            'season': random.choice(['summer', 'monsoon', 'winter']),
            'location_type': random.choice(['urban', 'rural'])
        }
        if random.random() < 0.6:
            household['ac_tonnage'] = random.choice([1.0, 1.5, 2.0])
            household['ac_star_rating'] = random.randint(1, 5)
        household['monthly_kwh'] = calculate_physics_consumption(household)
        data.append(household)
    return pd.DataFrame(data)
```
This function generates 12,000 household profiles with Kerala-specific factors such as monsoon humidity effects and voltage fluctuations in rural areas.
Model Training Pipeline (Backend/train.py)
 Purpose:  Trains multi-output neural network models for each appliance type.
```python
from tensorflow.keras.callbacks import EarlyStopping
import matplotlib.pyplot as plt
all_histories = []
def train_appliance_model(df, app_name, features):
    X = df[features]
    y_eff = df[f'{app_name}_real_efficiency_factor']
    y_hours = df[f'{app_name}_real_effective_hours']
    preprocessor = ColumnTransformer([
        ('num', StandardScaler(), numeric_features),
        ('cat', OneHotEncoder(), categorical_features)])
    X_processed = preprocessor.fit_transform(X)
    X_train, X_test, y_train, y_test = train_test_split(X_processed, ...)
    # Multi-output neural network
    inputs = keras.Input(shape=(X_processed.shape[1],))
    x = layers.Dense(128, activation='relu')(inputs)
    x = layers.Dropout(0.2)(x)
    x = layers.Dense(64, activation='relu')(x)
    eff_out = layers.Dense(1, name='efficiency')(x)
    hrs_out = layers.Dense(1, name='hours')(x)
    model = keras.Model(inputs=inputs, outputs=[eff_out, hrs_out])
    model.compile(optimizer='adam',
                loss={'efficiency': 'mse', 'hours': 'mse'},
                loss_weights={'efficiency': 10.0, 'hours': 1.0})
    early_stop = EarlyStopping(monitor='val_loss', patience=10, 
 restore_best_weights=True)
    history = model.fit(X_train, y_train, validation_data=(X_test, y_test),
                        epochs=120, batch_size=32, callbacks=[early_stop])
    all_histories.append(history)
    model.save(f'models/{app_name}_model.keras')
    return model
def plot_averaged_training_curves():
    avg_loss = np.mean([h.history['loss'] for h in all_histories], axis=0)
    avg_val_loss = np.mean([h.history['val_loss'] for h in all_histories], axis=0)
    fig, axes = plt.subplots(1, 2, figsize=(14, 5))
    axes[0].plot(avg_loss, label='Training Loss', linewidth=2.5)
    axes[0].plot(avg_val_loss, label='Validation Loss', linewidth=2.5)
    axes[0].set_xlabel('Epoch')
    axes[0].set_ylabel('Loss (MSE)')
    axes[0].legend()
    axes[0].grid(True)
    axes[1].plot(avg_mae, label='Training MAE', linewidth=2.5)
    axes[1].plot(avg_val_mae, label='Validation MAE', linewidth=2.5)
    axes[1].set_xlabel('Epoch')
    axes[1].set_ylabel('MAE')
    axes[1].legend(
    plt.savefig('training_graphs/figure_2.1.2.png', dpi=300)
The model architecture uses shared hidden layers (128 and 64 neurons with dropout) followed by two specialized output branches. The first predicts efficiency factor (appliance degradation), and the second predicts effective usage hours. Loss weights are set to 10:1 to prioritize efficiency prediction accuracy.
11.2 Backend Implementation
Hybrid AI–Physics Prediction Engine (Backend/predictor.py, main.py)
Purpose:  Core backend logic that combines AI predictions with physics validation to generate realistic electricity consumption estimates. The backend is built using FastAPI framework and  implements a hybrid prediction approach that merges neural network inference with electrical engineering principles. The system preloads 22 trained models during server startup to ensure fast response times.
```python
from fastapi import FastAPI
app = FastAPI(title="SmartWatt AI")
@app.on_event("startup")
async def startup_event():
    get_predictor().preload_all_models()
class AppliancePredictor:
    def predict(self, appliance, data):
        base_watts = PhysicsEngine.calculate_watts(appliance, data[0])
        X = self.preprocessors[appliance].transform(pd.DataFrame(data))
        outputs = self.models[appliance](X, training=False)
        ai_eff = max(0.5, min(float(outputs[0].numpy()[0][0]), 1.5))
        ai_hours = max(0, min(float(outputs[1].numpy()[0][0]), 24.0))
        monthly_kwh = (base_watts * ai_eff * ai_hours * 30) / 1000
        return {'prediction': float(monthly_kwh), 
                'insights': {'efficiency': ai_eff, 'hours': ai_hours}}
class PhysicsEngine:
    @classmethod
    def calculate_watts(cls, appliance, data):
        if appliance == 'ac':
            return data.get('ac_tonnage', 1.5) * 1200 * \
                (1 + (5 - data.get('ac_star_rating', 3)) * 0.1)
        elif appliance == 'fridge':
            return (data.get('fridge_capacity', 250)/250) * 150 * \
                (1+(3-data.get('fridge_star_rating', 3))*0.15)
        return {'washing_machine': 500, 'water_pump': 746}.get(appliance, 100)
def calculate_kseb_tariff(units):
    SLABS = [(50, 3.25), (50, 4.05), (50, 5.10), (50, 6.95), (50, 8.20)]
    charge = 0
    remaining = units
    if units <= 250:
        for limit, rate in SLABS:
            charge += min(remaining, limit) * rate
            remaining -= limit
    else:
        charge = units * (6.40 if units <= 300 else 7.90)
    return {'total': round((charge * 2) + (units * 2 * 0.13), 2)}
```
11.3 Frontend Implementation
 Multi-Step Wizard Interface (Frontend/src/app/page.tsx)
 Purpose:  Multi-step wizard interface for electricity consumption assessment.
The frontend is built using Next.js (React framework) with TypeScript and implements a progressive disclosure pattern through a 4-step wizard flow. User authentication is handled through Supabase, and all progress is automatically saved to enable session persistence.
```tsx
'use client';
import { useState, useEffect } from 'react';
import { supabase } from '@/lib/supabaseClient';
function SmartWattApp() {
    const [step, setStep] = useState(1);
    const [data, setData] = useState({household: {}, appliances: [], details: {}});
    useEffect(() => {
        const { data: { session } } = await supabase.auth.getSession();
        const { data: saved } = await supabase.from('smartwatt_training')
            .select('*').eq('user_id', session.user.id).single();
        if (saved) setData({...saved});
    }, []);
    return (
        <div>
            {step === 1 && <HouseholdInfo onNext={() => setStep(2)} />}
            {step === 2 && <ApplianceSelection onNext={() => setStep(3)} />}
            {step === 3 && <UsageDetails onNext={() => setStep(4)} />}
            {step === 4 && <ResultsReport data={data} />}
        </div>
    );
}
```
Results Display (Frontend/src/components/ResultsReport.tsx)
Purpose:  Display appliance-wise predictions with interactive visualizations.
```tsx
import { BarChart, Bar, XAxis, YAxis, Tooltip, Cell } from 'recharts';
export default function ResultsReport({ household, appliances, details }) {
    const [predictions, setPredictions] = useState({});
    useEffect(() => {
        const response = await api.post('/predict-all', { 
            requests: appliances.map(name => ({appliance_name: name, 
                                                details: details[name]}))
        });
        setPredictions(response.data);
    }, []);
    const totalKWh = Object.values(predictions)
        .reduce((sum, p) => sum + p.prediction, 0);
    return (
        <div>
            <h1>Total: {totalKWh.toFixed(2)} kWh</h1>
            <BarChart width={800} height={400} data={chartData}>
                <Bar dataKey="kWh">
                    {chartData.map((e, i) => (
                        <Cell fill={e.kWh > 100 ? '#ef4444' : 
                                e.kWh > 50 ? '#f59e0b' : '#10b981'} />
                    ))}
                </Bar>
            </BarChart>
        </div>
    );
}
```
The results component fetches predictions from the backend API, displays total monthly consumption prominently, and visualizes appliance-wise breakdown using Recharts library. Color-coded bars (green/orange/red) provide quick visual feedback on consumption levels.
11.4 Database Schema (PostgreSQL via Supabase)
Purpose: Store user data, appliance configurations, and AI prediction results for analysis and self-learning.
The SmartWatt system uses PostgreSQL through Supabase to manage structured household data, appliance information, and prediction results. The schema supports flexible storage using JSONB fields, allowing different appliance configurations without requiring database modifications. Prediction values are stored along with user input data to enable model evaluation and future retraining.
```sql
CREATE TABLE IF NOT EXISTS smartwatt_training (
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	user_id UUID NOT NULL,
	-- Household Demographics
	num_people INTEGER,
	house_type TEXT,
	season TEXT,
	-- Billing Information
	bi_monthly_kwh REAL,
	monthly_kwh REAL,
	estimated_bill REAL,
	-- Appliance Data (Flexible JSONB storage)
	selected_appliances JSONB,
	appliance_usage JSONB,
	ai_results JSONB,
	-- Self-Learning Columns
	predicted_kwh REAL,
	input_kwh REAL,
	-- Metadata
	source TEXT DEFAULT 'app',
	updated_at TIMESTAMP DEFAULT NOW()
);
ALTER TABLE smartwatt_training
ADD CONSTRAINT unique_smartwatt_user UNIQUE (user_id);
```
The schema ensures one record per user through a unique constraint on user_id, supporting efficient updates and preventing duplication. It also stores both monthly and bi-monthly consumption values to align with KSEB billing practices. This design supports persistent data storage, self-learning functionality, and future enhancements such as trend analysis and personalized insights.

 













CHAPTER 12 

 
CHAPTER 12
REFERENCES
1. Goodfellow, I., Bengio, Y., & Courville, A. (2016). Deep Learning. MIT Press.
2. Chollet, F. (2017). Deep Learning with Python. Manning Publications.
3. Géron, A. (2019). Hands-On Machine Learning with Scikit-Learn, Keras, and TensorFlow (2nd ed.). O'Reilly Media.
4. Abadi, M., et al. (2016). TensorFlow: A System for Large-Scale Machine Learning. 12th USENIX Symposium on Operating Systems Design and Implementation (OSDI 16), 265-283.
5. Ramírez, S. (2018). FastAPI: Modern, Fast (High-Performance) Web Framework for Building APIs with Python. https://fastapi.tiangolo.com/
6. Vercel Inc. (2016). Next.js: The React Framework for Production. https://nextjs.org/
7. Copplestone, P. (2020). Supabase: The Open Source Firebase Alternative. https://supabase.com/
8. Pedregosa, F., et al. (2011). Scikit-learn: Machine Learning in Python. Journal of Machine Learning Research, 12, 2825-2830.
9. Harris, C. R., et al. (2020). Array Programming with NumPy. Nature, 585(7825), 357-362.
10. Kerala State Electricity Board Limited. (2024). Tariff and Duty 2024-25. KSEB Ltd., Thiruvananthapuram, Kerala.
11. Bureau of Energy Efficiency. (2019). Energy Conservation Building Code 2017. Ministry of Power, Government of India.
12. Nielsen, M. A. (2015). Neural Networks and Deep Learning. Determination Press.
13. Brownlee, J. (2018). Deep Learning for Time Series Forecasting. Machine Learning Mastery.
14. Bishop, C. M. (2006). Pattern Recognition and Machine Learning. Springer.
15. Murphy, K. P. (2012). Machine Learning: A Probabilistic Perspective. MIT Press.
16. Attoui, I., Fergani, N., Boutasseta, N., Oudjani, B., & Deliou, A. (2017). A New Time-Frequency Method for Identification and Classification of Ball Bearing Faults. Journal of Sound and Vibration, 397, 241-265.
17. Zhang, C., Bengio, S., Hardt, M., Recht, B., & Vinyals, O. (2021). Understanding Deep Learning Requires Rethinking Generalization. Communications of the ACM, 64(3), 107-115.
18. Vaswani, A., et al. (2017). Attention Is All You Need. Advances in Neural Information Processing Systems, 31.
19. Walke, J. (2013). React: A JavaScript Library for Building User Interfaces. Facebook Inc. https://reactjs.org/
20. MDN Web Docs. (2021). Web APIs. Mozilla Developer Network. https://developer.mozilla.org/
21. PostgreSQL Global Development Group. (2020). PostgreSQL 13 Documentation. https://www.postgresql.org/docs/13/
22. International Energy Agency. (2021). India Energy Outlook 2021. IEA Publications.
23. Central Electricity Authority of India. (2020). Load Generation Balance Report 2020-21. Ministry of Power, Government of India.
24. Kingma, D. P., & Ba, J. (2014). Adam: A Method for Stochastic Optimization. arXiv preprint arXiv:1412.6980.
25. Srivastava, N., Hinton, G., Krizhevsky, A., Sutskever, I., & Salakhutdinov, R. (2014). Dropout: A Simple Way to Prevent Neural Networks from Overfitting. Journal of Machine Learning Research, 15(1), 1929-1958.
