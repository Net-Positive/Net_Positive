
import pandas as pd


def score_cat_calc (value : float, upper_w : list, lower_w : list):
    #normalize score
    score = (value - lower_w) / (upper_w - lower_w)

    #catch outliers
    if score > 1 :
        return 1
    elif score < 0 :
        return 0
    else: 
        return score 



def df_scores_calc(row : pd.Series ,categories : list, upper_whiskers : list, lower_whiskers : list):
    #points
    categories[0].append(score_cat_calc(row['Ps'],upper_whiskers[0],lower_whiskers[0]))
    #assists
    categories[1].append(score_cat_calc(row['As'], upper_whiskers[1],lower_whiskers[1]))
    #efg
    if (row['FG_A']+row['FT_A']) == 0:
        categories[2].append(0.0)
    else:
        efg = ((row['3P_P']*1.5 + row['2P_P'] + row['FT_P']*0.5)/ (row['FG_A']+row['FT_A']))
        categories[2].append(score_cat_calc(efg, upper_whiskers[2], lower_whiskers[2]))
    #turnovers
    categories[3].append(1 - score_cat_calc(row['TOs'], upper_whiskers[3], lower_whiskers[3]))
    #steals & blocks
    categories[4].append(score_cat_calc(row['STs']+row['BLs'], upper_whiskers[4], lower_whiskers[4]))
    #rebounds
    categories[5].append(score_cat_calc(row['Rs'], upper_whiskers[5], lower_whiskers[5]))
    #time
    categories[6].append(score_cat_calc(row['sec'] / 2400, upper_whiskers[6], lower_whiskers[6]))



def zero_fill(categories: list):
    for i in range(len(categories)):
        categories[i].append(0.0)




def df_score_categories(df : pd.DataFrame):
    #Whiskers
    #points, assists, efg, turnover, steals & blocks, rebounds
    pg_uw = [26,10,1.1,7,2,8,1]
    pg_lw = [0,0,0.136,0,0,0,0]
    sg_uw = [27,7,1.115,4,2,8,1]
    sg_lw = [0,0,0.136,0,0,0,0]
    sf_uw = [24,4,1.111,4,2,8,1]
    sf_lw = [0,0,0.136,0,0,0,0]
    pf_uw = [25,4,1.115,4,2,11,1]
    pf_lw = [0,0,0.136,0,0,0,0]
    c_uw = [23,2,1.2,4,4,14,1]
    c_lw = [0,0,0.083,0,0,0,0]

    points = []
    assists = []
    efg = []
    to = []
    stbl = []
    reb = []
    min = []

    score_list = [points,assists,efg,to,stbl,reb,min]


    for index,row in df.iterrows():
        if row['name'] == 'Team' or row['sec'] == 0:
            zero_fill(score_list)
        else:
            if row['position'] == 'PG':
                df_scores_calc(row, score_list, pg_uw, pg_lw)
            elif row['position'] == 'SG':
                df_scores_calc(row, score_list, sg_uw, sg_lw)
            elif row['position'] == 'SF':
                df_scores_calc(row, score_list, sf_uw, sf_lw)
            elif row['position'] == 'PF':
                df_scores_calc(row, score_list, pf_uw, pf_lw)
            elif row['position'] == 'C':
                df_scores_calc(row, score_list, c_uw, c_lw)
            else:
                print('An error occured : NULL-Position at :')
                display(row)
                break

    print('Everything went well')

    df['Points_score'] = score_list[0]
    df['Assist_score'] = score_list[1]
    df['EFG_score'] = score_list[2]
    df['TO_score'] = score_list[3]
    df['STBL_score'] = score_list[4]
    df['Reb_score'] = score_list[5]
    df['time_score'] = score_list[6]

    return df
    