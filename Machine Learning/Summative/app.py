# import streamlit as st
# import numpy as np
# from PIL import Image
# from tensorflow.keras.models import load_model
# from tensorflow.keras.applications.vgg16 import VGG16, preprocess_input

# # Load your binary classification model
# MODEL_PATH = 'drugprediction2.h5'
# model = load_model(MODEL_PATH)

# # Load VGG16 model for feature extraction (without the top layers)
# model_vgg = VGG16(weights='imagenet', include_top=False)

# def preprocess_image(image_pil):
#     image_pil = image_pil.resize((224, 224))  # Resize image to match VGG16 input size
#     image_np = np.asarray(image_pil)
#     image_np = preprocess_input(image_np)  # Apply VGG16 preprocessing
#     return image_np

# def extract_vgg_features(img_data):
#     img_data = np.expand_dims(img_data, axis=0)  # Add batch dimension
#     vgg_features = model_vgg.predict(img_data)
#     return vgg_features.flatten()

# def predict_image(image_pil):
#     preprocessed_img = preprocess_image(image_pil)
#     features = extract_vgg_features(preprocessed_img)
#     features = np.expand_dims(features, axis=0)  # Add batch dimension for prediction
#     prediction = model.predict(features)
#     return 'Genuine' if prediction[0][0] > 0.5 else 'Counterfeit'  # Adjust threshold if needed

# st.title("Counterfeit Drug Detection")
# uploaded_file = st.file_uploader("Choose an image...", type=["jpg", "jpeg", "png"])

# if uploaded_file is not None:
#     image_pil = Image.open(uploaded_file)
#     st.image(image_pil, caption='Uploaded Image', use_column_width=True)

#     if st.button('Predict'):
#         result = predict_image(image_pil)
#         st.write(f"Prediction: {result}")

# # Footer
# st.sidebar.text("By Your Name")



# import streamlit as st
# import numpy as np
# import cv2
# from PIL import Image
# from tensorflow.keras.models import load_model
# from tensorflow.keras.applications.vgg16 import VGG16, preprocess_input

# # Load the binary classification model
# MODEL_PATH = 'drugprediction2.h5'
# model = load_model(MODEL_PATH)

# # Load VGG16 model for feature extraction (without the top layers)
# model_vgg = VGG16(weights='imagenet', include_top=False)

# def preprocess_image(image_pil):
#     image_pil = image_pil.resize((224, 224))  # Resize image to match VGG16 input size
#     image_np = np.asarray(image_pil)
#     image_np = preprocess_input(image_np)  # Apply VGG16 preprocessing
#     return image_np

# def extract_vgg_features(img_data):
#     img_data = np.expand_dims(img_data, axis=0)  # Add batch dimension
#     vgg_features = model_vgg.predict(img_data)
#     return vgg_features.flatten()

# def is_drug_package_image(image_np):
#     predefined_threshold = 14  # Example threshold, needs to be tuned
#     gray_image = cv2.cvtColor(image_np, cv2.COLOR_BGR2GRAY)
#     edges = cv2.Canny(gray_image, threshold1=90, threshold2=100)
#     edge_area = np.mean(edges)
#     return edge_area > predefined_threshold

# def predict_image(image_pil):
#     preprocessed_img = preprocess_image(image_pil)
#     features = extract_vgg_features(preprocessed_img)
#     features = np.expand_dims(features, axis=0)  # Add batch dimension for prediction
#     prediction = model.predict(features)
#     return 'Genuine' if prediction[0][0] > 0.5 else 'Counterfeit'  # Adjust threshold if needed

# # Set up the Streamlit app layout
# st.title("Counterfeit Drug Detection")
# uploaded_file = st.file_uploader("Choose an image...", type=["jpg", "jpeg", "png"])

# if uploaded_file is not None:
#     image_pil = Image.open(uploaded_file)
#     st.image(image_pil, caption='Uploaded Image', use_column_width=True)
    
#     # Convert PIL image to numpy array for edge detection
#     image_np = np.array(image_pil)
    
#     if st.button('Predict'):
#         if is_drug_package_image(image_np):
#             result = predict_image(image_pil)
#             st.write(f"Prediction: {result}")
#         else:
#             st.write("The uploaded image does not appear to be a drug package.")

# # Footer
# st.sidebar.text("By Your Name")




import streamlit as st
import numpy as np
import cv2
from PIL import Image
from tensorflow.keras.models import load_model
from tensorflow.keras.applications.vgg16 import VGG16, preprocess_input

# Custom CSS for styling
st.markdown("""
<style>
.main-header {
    font-size: 40px;
    font-weight: bold;
    color: #0c9ace;
    padding-bottom: 10px;
    border-bottom: 2px solid #0c9ace;
    text-align: center;
}

.streamlit-file-uploader {
    background-color: #0c9ace;
    color: white;
    padding: 8px 16px;
    border-radius: 4px;
    border: 1px solid #0c9ace;
    cursor: pointer;
}

.stButton>button {
    background-color: #4caf50;
    color: white;
    padding: 8px 16px;
    border-radius: 4px;
    border: 1px solid #4caf50;
    cursor: pointer;
}
</style>
""", unsafe_allow_html=True)

# Load the binary classification model
MODEL_PATH = 'drugprediction2.h5'
model = load_model(MODEL_PATH)

# Load VGG16 model for feature extraction (without the top layers)
model_vgg = VGG16(weights='imagenet', include_top=False)


def preprocess_image(image_pil):
    image_pil = image_pil.resize((224, 224))  # Resize image to match VGG16 input size
    image_np = np.asarray(image_pil)
    image_np = preprocess_input(image_np)  # Apply VGG16 preprocessing
    return image_np

def extract_vgg_features(img_data):
    img_data = np.expand_dims(img_data, axis=0)  # Add batch dimension
    vgg_features = model_vgg.predict(img_data)
    return vgg_features.flatten()

def is_drug_package_image(image_np):
    predefined_threshold = 14  # Example threshold, needs to be tuned
    gray_image = cv2.cvtColor(image_np, cv2.COLOR_BGR2GRAY)
    edges = cv2.Canny(gray_image, threshold1=90, threshold2=100)
    edge_area = np.mean(edges)
    return edge_area > predefined_threshold

def predict_image(image_pil):
    preprocessed_img = preprocess_image(image_pil)
    features = extract_vgg_features(preprocessed_img)
    features = np.expand_dims(features, axis=0)  # Add batch dimension for prediction
    prediction = model.predict(features)
    return 'Genuine' if prediction[0][0] > 0.5 else 'Counterfeit'  # Adjust threshold if needed

# Set up the Streamlit app layout
st.markdown('<div class="main-header">Counterfeit Drug Detection</div>', unsafe_allow_html=True)
st.markdown("""
    Upload an image of the drug packaging, and the AI will predict whether it's likely to be genuine or counterfeit.
    Please note that the AI is trained to recognize specific features of drug packaging and may not work correctly with other types of images.
""")

uploaded_file = st.file_uploader("Choose an image...", type=["jpg", "jpeg", "png"], key="file_uploader")

if uploaded_file is not None:
    with st.spinner('Processing the image...'):
        image_pil = Image.open(uploaded_file)
        st.image(image_pil, caption='Uploaded Image', use_column_width=True)
        
        # Convert PIL image to numpy array for edge detection
        image_np = np.array(image_pil)

        if st.button('Predict'):
            if is_drug_package_image(image_np):
                result = predict_image(image_pil)
                st.success(f"Prediction: {result}")
            else:
                st.error("The uploaded image does not appear to be a drug package.")

# Footer
st.sidebar.markdown("## About")
st.sidebar.info("""
    This application is powered by machine learning to assist in identifying counterfeit drugs.
    \n\n
""")