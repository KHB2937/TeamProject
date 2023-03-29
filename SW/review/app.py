import streamlit as st
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsRegressor
from sklearn.metrics import mean_squared_error
from sklearn.ensemble import RandomForestRegressor
from sklearn.linear_model import LinearRegression
from sklearn.tree import DecisionTreeRegressor
import xgboost as xgb
from lightgbm import LGBMRegressor
from xgboost import XGBRegressor
from data import get_city_list, get_gu_list, get_town_list, get_village_list
from service import get_filtered_data, handle_preprocessing
import datetime
import pandas as pd
import numpy as np
def main():
    with st.sidebar: sidebar()
    contents()

def sidebar() :
    title =  '지역을 선택해주세요.'
    st.title(title)
    label_city_list = '시/도 선택'
    label_gu_list = '시/군/구 선택'
    label_town_list = '읍/면/동 선택'
    city_choice = st.selectbox(label_city_list, get_city_list(),
    key='city')
    gu_choice = st.selectbox(label_gu_list, get_gu_list(city_choice),
    key='gu')
    town_choice = st.selectbox(label_town_list, get_town_list(city_choice, gu_choice),
    key='town')
    vl = get_village_list(city_choice, gu_choice, town_choice)
    if len(vl)>0:
        village_choice = st.selectbox(label_town_list, vl, key='village')

    else:
        st.session_state['village'] = ''


def col_():
    col1,col2 = st.columns([1, 1])
    with col1 :
        area = st.slider('전용 면적을 선택해 주세요', 0.0, 300.0)
        # st.write("전용 면적 ", area, '(㎡)을 선택하셨습니다.')
        st.markdown(f"<div style='margin-top: 25px;'></div>", unsafe_allow_html=True)
        genre = st.radio(
            "거래 유형을 선택해 주세요",
            ('중개거래', '직거래'))
        st.markdown(f"<div style='margin-top: 25px; margin-right: 20px;'></div>", unsafe_allow_html=True)
    with col2 :
        year_apt = st.slider('건축 년도를 선택해 주세요', min_value = 1940, max_value=2023,step=1)
        # st.write("건축 년도 ", year_of_construction, '년을 선택하셨습니다.')
        st.markdown(f"<div style='margin-top: 25px;'></div>", unsafe_allow_html=True)
        if st.button('현재 금리 적용'):
            today = datetime.date.today()
            int_rate = 3.75
            st.write(f'현재 선택한 금리는 {int_rate} 입니다')
        else:
            today = datetime.date.today()
            
    if st.button('입력 완료'):
        st.write("입력이 완료 되었습니당")            
        input_data = pd.DataFrame(np.array([area,year_apt,genre,int_rate]).reshape(1,-1),
                                    columns = ['전용면적(㎡)','건축년도','거래유형','금리'])

        return input_data
    else:
        st.write("")            

def contents():

    tab0, tab1, tab2, tab3, tab4, tab5, tab6 = st.tabs(['df',"Linear Regressor", 'KNN', "Decision Tree", 'Random Forest', "XGBoost", "LightGBM"])
    
    with tab0:
        background()
        aa=col_()
    with tab1: 
        tab1.subheader("📈Linear Regression📈")
        lr(aa) 
    with tab2: 
        tab2.subheader("🤝KNN🤝")
        knn(aa)
    with tab3:
        tab3.subheader("🌲Decision Tree🌲")
        dct(aa)
    with tab4:
        tab4.subheader("🌳Random Forest🌳") 
        rdf(aa)
    with tab5:
        tab5.subheader("💪XGBoost💪") 
        xgb(aa)
    with tab6: 
        tab6.subheader("⚡️LightGBM⚡️")
        lgbm(aa)
        

def background():
    st.dataframe(handle_preprocessing())
def load_data():
    datas = handle_preprocessing()
    train = datas.loc[datas.index < '2023-01-01']
    test = datas.loc[datas.index >= '2023-01-01']
    X_train = train.drop(['시군구','거래금액(만원)','평당가'],axis=1)
    y_train = train['평당가']
    X_test = test.drop(['시군구','거래금액(만원)','평당가'],axis=1)
    y_test = test['평당가']

    return X_train,y_train,X_test,y_test
# lr 모델
def lr(data = None):
    X_train,y_train,X_test,y_test = load_data()
    models = []
    for i in range(0,5):
        if i==0:
            continue
        model = LinearRegression(n_jobs=-1)
        model.fit(X_train,y_train)

        pred= model.predict(X_test)
        rmse = mean_squared_error(y_test,pred)**0.5
        
        models.append(rmse)
    st.write('모델의 RMSE 값',models)
    st.write('모델의 예측 값',pred)

    if data!=None:
        input_pred = model.predict(data)
        st.write('입력한 정보에대한 결과는 ',input_pred)

# knn 모델
def knn(data = None):
    X_train,y_train,X_test,y_test = load_data()
    
    models = []
    for i in range(0,5):
        if i==0:
            continue
        model = KNeighborsRegressor(n_neighbors=i,weights='distance')
        model.fit(X_train,y_train)

        pred=model.predict(X_test)
        rmse = mean_squared_error(y_test,pred)**0.5
        
        models.append(rmse)

    st.write(models)
    st.write('모델의 예측 값',pred)

# 랜덤포레스트 모델
def rdf(data = None):
    X_train,y_train,X_test,y_test = load_data()

    models = []
    for i in range(0,5):
        if i==0:
            continue
        model = RandomForestRegressor(n_estimators=150,max_depth=4)
        model.fit(X_train,y_train)

        pred=model.predict(X_test)
        rmse = mean_squared_error(y_test,pred)**0.5
        
        models.append(rmse)

    st.write(models)
    st.write('모델의 예측 값',pred)

# 결정트리 모델
def dct(data = None):
    X_train,y_train,X_test,y_test = load_data()

    models = []
    for i in range(0,5):
        if i==0:
            continue
        model = DecisionTreeRegressor(random_state=i)
        model.fit(X_train,y_train)

        pred=model.predict(X_test)
        rmse = mean_squared_error(y_test,pred)**0.5
        
        models.append(rmse)

    st.write(models)
    st.write('모델의 예측 값',pred)

# XGBoost 모델
def xgb(data = None):
    X_train,y_train,X_test,y_test = load_data()
    models = []
    for i in range(0,5):
        if i==0:
            continue
        model = XGBRegressor(n_estimators=100, learning_rate=0.1, max_depth=3, random_state=100)
        model.fit(X_train,y_train)

        pred=model.predict(X_test)
        rmse = mean_squared_error(y_test,pred)**0.5
        models.append(rmse)

    st.write(models)
    st.write('모델의 예측 값',pred)

# LGBM 모델
def lgbm(data = None):
    X_train,y_train,X_test,y_test = load_data()

    models = []
    for i in range(0,5):
        if i==0:
            continue
        model = LGBMRegressor(num_leaves=16, max_depth=4, learning_rate=0.1)
        model.fit(X_train,y_train)

        pred=model.predict(X_test)
        rmse = mean_squared_error(y_test,pred)**0.5
        models.append(rmse)

    st.write(models)
    st.write('모델의 예측 값',pred)

if __name__ == '__main__':
    main()