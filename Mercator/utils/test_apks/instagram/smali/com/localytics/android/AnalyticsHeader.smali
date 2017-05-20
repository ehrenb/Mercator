.class Lcom/localytics/android/AnalyticsHeader;
.super Ljava/lang/Object;
.source "AnalyticsHeader.java"


# instance fields
.field private mCustomerID:Ljava/lang/String;

.field final mHeaderBlob:Lorg/json/JSONObject;

.field private mIdentifiers:Lorg/json/JSONObject;

.field private mLastSessionStart:J

.field private mOpenSessionUUID:Ljava/lang/String;

.field private mSessionSequenceNumber:I

.field private mUserType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/localytics/android/AnalyticsHeader;->setupHeader(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private _buildHeaderAttributes(Lcom/localytics/android/AnalyticsHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 136
    const-string v2, "dt"

    const-string v4, "a"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v2, "au"

    move-object/from16 v0, p6

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    invoke-static {p2}, Lcom/localytics/android/DatapointHelper;->getAndroidIdHashOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 139
    if-eqz v2, :cond_0

    .line 141
    const-string v4, "du"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    :cond_0
    const-string v2, "phone"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 146
    const-string v4, "lv"

    sget-object v5, Lcom/localytics/android/Constants;->LOCALYTICS_CLIENT_LIBRARY_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v4, "av"

    invoke-static {p2}, Lcom/localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v4, "dp"

    const-string v5, "Android"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v4, "dll"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v4, "dlc"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v4, "nc"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v4, "dc"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v4, "dma"

    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v4, "dmo"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v4, "dov"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v4, "nca"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v4, "dac"

    invoke-static {v2, p2}, Lcom/localytics/android/DatapointHelper;->getNetworkType(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v2, "iu"

    invoke-virtual {v3, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v4, "push"

    if-nez p8, :cond_8

    const-string v2, ""

    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v4, "ne"

    if-eqz p10, :cond_9

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 165
    if-eqz p7, :cond_1

    .line 167
    const-string v2, "fbat"

    move-object/from16 v0, p7

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_1
    if-eqz p9, :cond_2

    .line 172
    const-string v2, "aid"

    move-object/from16 v0, p9

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    :cond_2
    invoke-static {p2}, Lcom/localytics/android/DatapointHelper;->getAndroidIdOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 176
    const-string v4, "caid"

    if-nez v2, :cond_3

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_3
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-static {p2}, Lcom/localytics/android/DatapointHelper;->getAdvertisingInfo(Landroid/content/Context;)Lcom/localytics/android/DatapointHelper$AdvertisingInfo;

    move-result-object v4

    .line 179
    if-eqz v4, :cond_4

    iget-object v2, v4, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 181
    const-string v2, "gadid"

    iget-object v5, v4, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v2, "gcadid"

    iget-object v5, v4, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    :cond_4
    if-eqz p3, :cond_5

    .line 186
    const-string v2, "pkg"

    invoke-virtual {v3, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    :cond_5
    if-eqz p4, :cond_6

    .line 190
    const-string v2, "aurl"

    invoke-virtual {v3, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    :cond_6
    const-string v5, "lad"

    if-eqz v4, :cond_a

    iget-boolean v2, v4, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;->limitAdTracking:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 194
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 195
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 196
    invoke-virtual {v2, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    add-int/2addr v2, v5

    .line 197
    :goto_3
    const-string v5, "tz"

    int-to-long v6, v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 199
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getSerialNumberHashOrNull()Ljava/lang/String;

    move-result-object v2

    .line 200
    const-string v5, "dms"

    if-nez v2, :cond_7

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_7
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v2, "dsdk"

    sget v5, Lcom/localytics/android/Constants;->CURRENT_API_LEVEL:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v2, "lpg"

    invoke-static {p2}, Lcom/localytics/android/DatapointHelper;->isLocationPermissionGranted(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    const/4 v2, 0x0

    invoke-virtual {p1, p4, v3, v4, v2}, Lcom/localytics/android/AnalyticsHandler;->_updateHeaderForTestModeAttribution(Ljava/lang/String;Lorg/json/JSONObject;Lcom/localytics/android/DatapointHelper$AdvertisingInfo;Z)V

    .line 205
    return-object v3

    :cond_8
    move-object/from16 v2, p8

    .line 160
    goto/16 :goto_0

    .line 162
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 192
    :cond_a
    const/4 v2, 0x0

    goto :goto_2

    .line 196
    :cond_b
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    goto :goto_3
.end method

.method private _getIdentifiersObject(Lcom/localytics/android/BaseProvider;)Lorg/json/JSONObject;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 216
    .line 217
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 220
    :try_start_0
    const-string v1, "identifiers"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 222
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    const-string v1, "key"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 232
    :goto_1
    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    .line 238
    :goto_2
    return-object v0

    .line 232
    :cond_1
    if-eqz v0, :cond_2

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    .line 238
    goto :goto_2

    .line 232
    :catchall_0
    move-exception v0

    move-object v0, v7

    :goto_3
    if-eqz v0, :cond_3

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    .line 238
    goto :goto_2

    .line 232
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 227
    :catch_1
    move-exception v0

    move-object v0, v7

    goto :goto_1
.end method

.method private setupHeader(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/localytics/android/AnalyticsHeader;->mSessionSequenceNumber:I

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mOpenSessionUUID:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mCustomerID:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mUserType:Ljava/lang/String;

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/localytics/android/AnalyticsHeader;->mLastSessionStart:J

    .line 79
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    const-string v1, "dt"

    const-string v2, "h"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    const-string v1, "u"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 83
    const/4 v6, 0x0

    .line 86
    :try_start_0
    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 88
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    const-string v1, "pa"

    const-string v2, "created_time"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 91
    const-string v0, "next_session_number"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/localytics/android/AnalyticsHeader;->mSessionSequenceNumber:I

    .line 92
    const-string v0, "customer_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mCustomerID:Ljava/lang/String;

    .line 93
    const-string v0, "user_type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mUserType:Ljava/lang/String;

    .line 94
    const-string v0, "current_session_uuid"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mOpenSessionUUID:Ljava/lang/String;

    .line 95
    const-string v0, "next_header_number"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 96
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    const-string v1, "seq"

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    const-string v0, "last_session_open_time"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/localytics/android/AnalyticsHeader;->mLastSessionStart:J

    .line 100
    const-string v0, "package_name"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    const-string v0, "play_attribution"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    const-string v0, "first_android_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 103
    const-string v0, "registration_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 104
    const-string v0, "fb_attribution"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 105
    const-string v0, "push_disabled"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v10, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 107
    invoke-direct/range {v0 .. v10}, Lcom/localytics/android/AnalyticsHeader;->_buildHeaderAttributes(Lcom/localytics/android/AnalyticsHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    move v1, v12

    .line 113
    :goto_1
    if-eqz v11, :cond_0

    .line 115
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/localytics/android/AnalyticsHeader;->updateNextHeaderNumber(Lcom/localytics/android/BaseProvider;I)V

    .line 120
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    const-string v2, "attrs"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    invoke-direct {p0, p2}, Lcom/localytics/android/AnalyticsHeader;->_getIdentifiersObject(Lcom/localytics/android/BaseProvider;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mIdentifiers:Lorg/json/JSONObject;

    .line 124
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mIdentifiers:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    const-string v1, "ids"

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHeader;->mIdentifiers:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :cond_1
    return-void

    .line 105
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_3

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 113
    :catchall_1
    move-exception v0

    move-object v1, v11

    goto :goto_2

    :cond_4
    move-object v0, v7

    move v1, v8

    goto :goto_1
.end method

.method private updateNextHeaderNumber(Lcom/localytics/android/BaseProvider;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 245
    const-string v1, "next_header_number"

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v1, "info"

    invoke-virtual {p1, v1, v0, v3, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 247
    return-void
.end method


# virtual methods
.method getCustomerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mCustomerID:Ljava/lang/String;

    return-object v0
.end method

.method getHeaderBlob()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mHeaderBlob:Lorg/json/JSONObject;

    return-object v0
.end method

.method getIdentifiersObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mIdentifiers:Lorg/json/JSONObject;

    return-object v0
.end method

.method getLastSessionStartTime()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/localytics/android/AnalyticsHeader;->mLastSessionStart:J

    return-wide v0
.end method

.method getOpenSessionUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mOpenSessionUUID:Ljava/lang/String;

    return-object v0
.end method

.method getSessionSequenceNumber()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/localytics/android/AnalyticsHeader;->mSessionSequenceNumber:I

    return v0
.end method

.method getUserType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHeader;->mUserType:Ljava/lang/String;

    return-object v0
.end method
