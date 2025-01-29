# Job_Posting_Fake_Detection_Model


Objective:
Developed a machine learning model to detect fraudulent job postings by analyzing key features such as job title, location, salary range, employment type, required qualifications, and screening rounds. The goal was to identify fake job listings and protect job seekers from fraudulent opportunities.

Dataset & Features:
The dataset contains various job posting attributes, including:

Job & Company Information: title, location, company_logo, industry, department
Job Offer Details: salary_range, employment_type, work_from_home
Screening & Qualification Requirements: screening_round, required_experience, required_education
Target Variable: is_authentic (Binary: 1 = Real, 0 = Fake)
Approach & Methodology:
✅ Exploratory Data Analysis (EDA):

Analyzed word frequency in job titles and descriptions to identify common patterns in fake vs. real job postings.
Examined salary distributions and employment types for anomalies that indicate fraudulent listings.
Checked missing values and inconsistencies in company logos, industries, and screening rounds.
✅ Feature Engineering:

Extracted text-based features using TF-IDF and Word Embeddings (Word2Vec, BERT embeddings).
Created new categorical features from employment_type, industry, and required_experience.
Encoded company logo presence as a binary feature, assuming fake job listings often lack a legitimate company logo.
✅ Model Development & Evaluation:

Built and compared multiple classifiers:
🔹 Logistic Regression, Random Forest, XGBoost, and Deep Learning models (LSTMs for text processing).
Optimized models using GridSearchCV and hyperparameter tuning.
Evaluated performance using Precision, Recall, F1-score, and ROC-AUC to prioritize reducing false positives (minimizing legitimate jobs falsely flagged as fake).
Tools & Technologies Used:
🛠 Languages & Libraries: Python, Pandas, NumPy, Scikit-learn, TensorFlow, XGBoost, NLTK, SpaCy
📊 Visualization & Analysis: Matplotlib, Seaborn, Plotly
🔍 NLP Techniques: TF-IDF, Word2Vec, BERT embeddings, Sentiment Analysis
⚡ Big Data & Cloud: AWS S3, Google Colab (for training large-scale models)

Key Takeaways & Impact:
🚀 Successfully built a fraud detection model that improved classification accuracy and reduced false positives.
📈 Found strong correlations between low screening rounds, missing company logos, and vague job descriptions with fraudulent job postings.
💡 Future work includes integrating real-time detection for job platforms and expanding the dataset with external fraud indicators.

This project highlights the importance of AI in cybersecurity and fraud prevention for job seekers. Would love any feedback or collaboration ideas! 🔥
