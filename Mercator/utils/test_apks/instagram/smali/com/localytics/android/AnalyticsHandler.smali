.class Lcom/localytics/android/AnalyticsHandler;
.super Lcom/localytics/android/BaseHandler;
.source "AnalyticsHandler.java"

# interfaces
.implements Lcom/localytics/android/LocationListener;


# static fields
.field private static final BASE_PUSH_REGISTRATION_BACKOFF:J = 0x1388L

.field private static final MAX_PUSH_REGISTRATION_RETRIES:I = 0x3

.field private static final MESSAGE_CLOSE:I = 0x66

.field private static final MESSAGE_DISABLE_NOTIFICATIONS:I = 0x6e

.field private static final MESSAGE_OPEN:I = 0x65

.field private static final MESSAGE_OPT_OUT:I = 0x6c

.field private static final MESSAGE_REGISTER_PUSH:I = 0x6d

.field private static final MESSAGE_RETRIEVE_TOKEN_FROM_INSTANCEID:I = 0x71

.field private static final MESSAGE_SET_CUSTOM_DIMENSION:I = 0x6b

.field private static final MESSAGE_SET_IDENTIFIER:I = 0x69

.field private static final MESSAGE_SET_LOCATION:I = 0x6a

.field private static final MESSAGE_SET_PUSH_REGID:I = 0x6f

.field private static final MESSAGE_SET_REFERRERID:I = 0x70

.field private static final MESSAGE_TAG_EVENT:I = 0x67

.field private static final MESSAGE_TAG_SCREEN:I = 0x68

.field private static final PARAM_LOCALYTICS_REFERRER_TEST_MODE:Ljava/lang/String; = "localytics_test_mode"

.field private static final PROJECTION_SET_CUSTOM_DIMENSION:[Ljava/lang/String;

.field private static final PROJECTION_SET_IDENTIFIER:[Ljava/lang/String;

.field private static final SELECTION_SET_CUSTOM_DIMENSION:Ljava/lang/String;

.field private static final SELECTION_SET_IDENTIFIER:Ljava/lang/String;

.field private static sLastLocation:Landroid/location/Location;

.field private static sNumPushRegistrationRetries:I


# instance fields
.field private mAppWasUpgraded:Z

.field private mCachedCustomDimensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedIdentifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFirstSessionEver:Z

.field private mInstallId:Ljava/lang/String;

.field mIsSessionOpen:Z

.field private mLastScreenTag:Ljava/lang/String;

.field protected final mListeners:Lcom/localytics/android/ListenersSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/localytics/android/ListenersSet",
            "<",
            "Lcom/localytics/android/AnalyticsListener;",
            ">;"
        }
    .end annotation
.end field

.field mReferrerTestModeEnabled:Z

.field private mSanitizingDictionary:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSentReferrerTestMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "custom_dimension_value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->PROJECTION_SET_CUSTOM_DIMENSION:[Ljava/lang/String;

    .line 136
    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "custom_dimension_key"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_CUSTOM_DIMENSION:Ljava/lang/String;

    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v4

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->PROJECTION_SET_IDENTIFIER:[Ljava/lang/String;

    .line 146
    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "key"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_IDENTIFIER:Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->sLastLocation:Landroid/location/Location;

    .line 156
    sput v3, Lcom/localytics/android/AnalyticsHandler;->sNumPushRegistrationRetries:I

    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BaseHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 166
    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mAppWasUpgraded:Z

    .line 167
    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    .line 168
    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mReferrerTestModeEnabled:Z

    .line 169
    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mSentReferrerTestMode:Z

    .line 171
    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    .line 191
    const-string v0, "Analytics"

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->siloName:Ljava/lang/String;

    .line 192
    new-instance v0, Lcom/localytics/android/ListenersSet;

    const-class v1, Lcom/localytics/android/AnalyticsListener;

    invoke-direct {v0, v1}, Lcom/localytics/android/ListenersSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mSanitizingDictionary:Ljava/util/HashMap;

    .line 196
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mSanitizingDictionary:Ljava/util/HashMap;

    const-string v1, "facebook"

    const-string v2, "Facebook"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mSanitizingDictionary:Ljava/util/HashMap;

    const-string v1, "twitter"

    const-string v2, "Twitter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mSanitizingDictionary:Ljava/util/HashMap;

    const-string v1, "native"

    const-string v2, "Native"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method private _addLocationIDsAndCustomDimensions(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 1387
    :try_start_0
    sget-object v0, Lcom/localytics/android/AnalyticsHandler;->sLastLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 1389
    sget-object v0, Lcom/localytics/android/AnalyticsHandler;->sLastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 1390
    sget-object v2, Lcom/localytics/android/AnalyticsHandler;->sLastLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 1391
    cmpl-double v4, v0, v8

    if-eqz v4, :cond_0

    cmpl-double v4, v2, v8

    if-eqz v4, :cond_0

    .line 1393
    const-string v4, "lat"

    invoke-virtual {p1, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1394
    const-string v0, "lng"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1398
    :cond_0
    const-string v0, "cid"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1399
    const-string v0, "utp"

    invoke-virtual {p1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1401
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1403
    const-string v0, "ids"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "custom_dimensions"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1414
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1416
    const-string v0, "custom_dimension_key"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1417
    const-string v2, "custom_dimension_value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1418
    const-string v3, "custom_dimension_"

    const-string v4, "c"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1419
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1424
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_2

    .line 1426
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1427
    :cond_2
    throw v0

    .line 1431
    :catch_0
    move-exception v0

    .line 1434
    :cond_3
    :goto_2
    return-void

    .line 1424
    :cond_4
    if-eqz v1, :cond_3

    .line 1426
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1424
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method private _areNotificationsDisabled()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 912
    .line 916
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "push_disabled"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move v0, v7

    .line 917
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 919
    const-string v0, "push_disabled"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 920
    if-ne v0, v6, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v7

    goto :goto_0

    .line 925
    :cond_1
    if-eqz v1, :cond_2

    .line 927
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 931
    :cond_2
    return v0

    .line 925
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_3

    .line 927
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 925
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private _clearScreens()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1469
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "screens"

    invoke-virtual {v0, v1, v2, v2}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1470
    iput-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mLastScreenTag:Ljava/lang/String;

    .line 1471
    return-void
.end method

.method private _createCloseBlob(Lcom/localytics/android/AnalyticsHeader;ZJ)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 1295
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1296
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1297
    const-string v2, "dt"

    const-string v3, "c"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1298
    const-string v2, "u"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1299
    const-string v0, "su"

    invoke-virtual {p1}, Lcom/localytics/android/AnalyticsHeader;->getOpenSessionUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1300
    invoke-virtual {p1}, Lcom/localytics/android/AnalyticsHeader;->getLastSessionStartTime()J

    move-result-wide v2

    .line 1301
    const-string v0, "ss"

    long-to-double v4, v2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1302
    const-string v0, "ct"

    long-to-double v4, p3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1303
    const-string v0, "ctl"

    sub-long v2, p3, v2

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1305
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_getScreens()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1306
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1308
    const-string v2, "fl"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1310
    :cond_0
    const-string v0, "isl"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1312
    invoke-virtual {p1}, Lcom/localytics/android/AnalyticsHeader;->getIdentifiersObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/localytics/android/AnalyticsHeader;->getCustomerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/localytics/android/AnalyticsHeader;->getUserType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->_addLocationIDsAndCustomDimensions(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v0, "%s\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/localytics/android/AnalyticsHeader;->getHeaderBlob()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private _dequeQueuedCloseSessionTag(Z)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1548
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1550
    if-eqz p1, :cond_1

    .line 1557
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "queued_close_session_blob"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "queued_close_session_blob_upload_format"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1558
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1560
    const-string v0, "queued_close_session_blob"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1561
    const-string v0, "queued_close_session_blob_upload_format"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 1566
    :goto_0
    if-eqz v1, :cond_0

    .line 1568
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1573
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    if-nez v0, :cond_3

    .line 1577
    :try_start_2
    new-instance v0, Lcom/localytics/android/AnalyticsHeader;

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getInstallationId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHeader;-><init>(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->_createCloseBlob(Lcom/localytics/android/AnalyticsHeader;ZJ)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 1579
    :try_start_3
    sget-object v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    .line 1586
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1588
    const-string v2, "blob"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const-string v1, "upload_format"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1590
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "events"

    invoke-virtual {v0, v1, v10}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1591
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 1592
    iput-boolean v9, p0, Lcom/localytics/android/AnalyticsHandler;->mAppWasUpgraded:Z

    .line 1593
    iput-boolean v9, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    .line 1594
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_clearScreens()V

    .line 1598
    :cond_1
    const-string v0, "queued_close_session_blob"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1599
    const-string v0, "queued_close_session_blob_upload_format"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1600
    const-string v0, "last_session_close_time"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1601
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    invoke-virtual {v0, v1, v10, v8, v8}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1602
    return-void

    .line 1566
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_2

    .line 1568
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1569
    :cond_2
    throw v0

    .line 1581
    :catch_0
    move-exception v0

    move-object v0, v7

    :goto_3
    move-object v1, v0

    move v0, v6

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3

    .line 1566
    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_3
    move v0, v6

    move-object v1, v7

    goto :goto_1

    :cond_4
    move v6, v9

    move-object v7, v8

    goto/16 :goto_0
.end method

.method private _getCustomDimension(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 954
    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-lt p1, v0, :cond_2

    :cond_0
    move-object v0, v6

    .line 980
    :cond_1
    :goto_0
    return-object v0

    .line 960
    :cond_2
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->getCustomDimensionAttributeKey(I)Ljava/lang/String;

    move-result-object v5

    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "custom_dimensions"

    sget-object v2, Lcom/localytics/android/AnalyticsHandler;->PROJECTION_SET_CUSTOM_DIMENSION:[Ljava/lang/String;

    sget-object v3, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_CUSTOM_DIMENSION:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 966
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 968
    const-string v0, "custom_dimension_value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 973
    :goto_1
    if-eqz v1, :cond_1

    .line 975
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 973
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_3

    .line 975
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 976
    :cond_3
    throw v0

    .line 973
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    :cond_4
    move-object v0, v6

    goto :goto_1
.end method

.method private _getPushRegistrationId()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 888
    .line 892
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "registration_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 894
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 896
    const-string v0, "registration_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 901
    :goto_0
    if-eqz v1, :cond_0

    .line 903
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 907
    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0

    .line 901
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_2

    .line 903
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 901
    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v0, v6

    goto :goto_0
.end method

.method private _registerPush(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_getPushSenderId()Ljava/lang/String;

    move-result-object v0

    .line 876
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/AnalyticsHandler;->_setPushID(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_0
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_retrieveTokenFromInstanceId(Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method private _retrieveLastScreenTag()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1476
    .line 1477
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v1, v1, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT MAX(rowid), %s FROM %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "screens"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1481
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1483
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1485
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1487
    return-object v0
.end method

.method private _retrieveTokenFromInstanceId()V
    .locals 1

    .prologue
    .line 2012
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_getPushSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_retrieveTokenFromInstanceId(Ljava/lang/String;)V

    .line 2013
    return-void
.end method

.method private _retrieveTokenFromInstanceId(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2017
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.permission.RECEIVE"

    invoke-static {v0, v1}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 2022
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2024
    const-string v0, "GCM registration failed, got empty sender id"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 2063
    :cond_0
    :goto_0
    return-void

    .line 2028
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/iid/a;->c(Landroid/content/Context;)Lcom/google/android/gms/iid/a;

    move-result-object v0

    .line 2029
    const-string v1, "GCM"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/iid/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2030
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2032
    const-string v1, "GCM registered, new id: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 2033
    invoke-direct {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_setPushID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2040
    :catch_0
    move-exception v0

    .line 2042
    const-string v1, "Exception while registering GCM"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2043
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2044
    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2046
    :cond_2
    sget v0, Lcom/localytics/android/AnalyticsHandler;->sNumPushRegistrationRetries:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/localytics/android/AnalyticsHandler;->sNumPushRegistrationRetries:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 2048
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sget v2, Lcom/localytics/android/AnalyticsHandler;->sNumPushRegistrationRetries:I

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x1388

    mul-long/2addr v0, v2

    .line 2049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GCM registration ERROR_SERVICE_NOT_AVAILABLE. Retrying in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " milliseconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 2050
    invoke-virtual {p0, p1, v0, v1}, Lcom/localytics/android/AnalyticsHandler;->registerPush(Ljava/lang/String;J)V

    goto :goto_0

    .line 2037
    :cond_3
    :try_start_1
    const-string v0, "GCM registration failed, got empty token"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2054
    :cond_4
    sput v4, Lcom/localytics/android/AnalyticsHandler;->sNumPushRegistrationRetries:I

    goto/16 :goto_0

    .line 2061
    :cond_5
    const-string v0, "\'com.google.android.c2dm.permission.RECEIVE\' missing from AndroidManifest.xml"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private _reuploadFirstSession(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2185
    invoke-virtual {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_replaceAttributionInFirstSession(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2188
    new-instance v1, Lcom/localytics/android/ReferralUploader;

    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_getCustomerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/localytics/android/ReferralUploader;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    invoke-virtual {v1}, Lcom/localytics/android/ReferralUploader;->start()V

    .line 2190
    :cond_0
    return-void
.end method

.method private _setCustomDimension(ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 1642
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->getCustomDimensionAttributeKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1643
    monitor-enter p0

    .line 1645
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1647
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "custom_dimensions"

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "custom_dimension_key"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    :cond_0
    :goto_0
    monitor-exit p0

    .line 1670
    return-void

    .line 1654
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1655
    const-string v2, "custom_dimension_key"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const-string v2, "custom_dimension_value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "custom_dimensions"

    sget-object v4, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_CUSTOM_DIMENSION:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1659
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "custom_dimensions"

    invoke-virtual {v0, v2, v1}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1669
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1666
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private _setNotificationsDisabled(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 801
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 802
    const-string v1, "push_disabled"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 803
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "info"

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 804
    return-void
.end method

.method private _setOptedOut(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1905
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_isOptedOut()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1920
    :goto_0
    return-void

    .line 1910
    :cond_0
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_tagOptEvent(Z)V

    .line 1912
    iget-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1914
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_close()V

    .line 1917
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1918
    const-string v1, "opt_out"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1919
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "info"

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private _setPushID(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1964
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_getPushRegistrationId()Ljava/lang/String;

    move-result-object v0

    .line 1965
    if-nez p1, :cond_0

    const-string p1, ""

    .line 1967
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1968
    const-string v2, "registration_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    const-string v2, "registration_version"

    iget-object v3, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "info"

    invoke-virtual {v2, v3, v1, v4, v4}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1972
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1974
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_tagPushRegisteredEvent()V

    .line 1976
    :cond_1
    return-void
.end method

.method private _setPushID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1980
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_getPushRegistrationId()Ljava/lang/String;

    move-result-object v0

    .line 1981
    if-nez p2, :cond_0

    const-string p2, ""

    .line 1983
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1984
    const-string v2, "sender_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const-string v2, "registration_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "info"

    invoke-virtual {v2, v3, v1, v4, v4}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1988
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1990
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_tagPushRegisteredEvent()V

    .line 1992
    :cond_1
    return-void
.end method

.method private _setReferrerId(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2158
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "play_attribution"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2160
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2162
    const-string v0, "play_attribution"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2165
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2166
    const-string v2, "play_attribution"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "info"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[REFERRAL] _setReferrerId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->i(Ljava/lang/String;)I

    .line 2169
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_reuploadFirstSession(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2175
    :cond_0
    if-eqz v1, :cond_1

    .line 2177
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2181
    :cond_1
    return-void

    .line 2175
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    .line 2177
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 2175
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private _tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 1134
    :try_start_0
    new-instance v0, Lcom/localytics/android/AnalyticsHeader;

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getInstallationId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHeader;-><init>(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1137
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 1138
    iget-object v4, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v4

    .line 1139
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1140
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1141
    const-string v9, "dt"

    const-string v10, "e"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1142
    const-string v9, "ct"

    long-to-double v2, v2

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v8, v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1143
    const-string v2, "u"

    invoke-virtual {v8, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1144
    const-string v2, "su"

    iget-boolean v1, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getOpenSessionUUID()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v8, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1145
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1147
    const-string v1, "n"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1157
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 1159
    const-string v1, "v"

    invoke-virtual {v8, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1162
    :cond_0
    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getIdentifiersObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getCustomerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getUserType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v8, v1, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->_addLocationIDsAndCustomDimensions(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    if-eqz p2, :cond_1

    .line 1166
    const-string v1, "attrs"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1169
    :cond_1
    const-string v1, "blob"

    const-string v2, "%s\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getHeaderBlob()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string v0, "upload_format"

    sget-object v1, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v1}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1172
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1174
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "events"

    invoke-virtual {v0, v1, v5}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1176
    :cond_2
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/AnalyticsListener;

    if-nez p3, :cond_5

    move-wide v2, v6

    :goto_2
    invoke-interface {v0, p1, p2, v2, v3}, Lcom/localytics/android/AnalyticsListener;->localyticsDidTagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 1181
    :goto_3
    return-void

    .line 1144
    :cond_3
    const-string v1, ""

    goto/16 :goto_0

    .line 1151
    :cond_4
    const-string v1, "n"

    invoke-virtual {v8, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1178
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1176
    :cond_5
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_2
.end method

.method private _tagOpenEvent()V
    .locals 14

    .prologue
    .line 1187
    :try_start_0
    new-instance v0, Lcom/localytics/android/AnalyticsHeader;

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getInstallationId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHeader;-><init>(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1191
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1192
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v6

    .line 1193
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1194
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1195
    const-string v2, "dt"

    const-string v3, "s"

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1196
    const-string v2, "ct"

    long-to-double v10, v6

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v5, v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1197
    const-string v2, "u"

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1199
    const-wide/16 v2, 0x0

    .line 1200
    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getLastSessionStartTime()J

    move-result-wide v10

    .line 1201
    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_0

    .line 1203
    sub-long v2, v6, v10

    .line 1206
    :cond_0
    const-string v9, "sl"

    long-to-double v2, v2

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v5, v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1211
    const-string v2, "nth"

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getSessionSequenceNumber()I

    move-result v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1213
    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getIdentifiersObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getCustomerID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getUserType()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v5, v2, v3, v9}, Lcom/localytics/android/AnalyticsHandler;->_addLocationIDsAndCustomDimensions(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string v2, "%s\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getHeaderBlob()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x1

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1216
    const-string v3, "blob"

    invoke-virtual {v8, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v3, "upload_format"

    sget-object v5, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v5}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1219
    const-string v3, "last_session_open_time"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1220
    const-string v3, "next_session_number"

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getSessionSequenceNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1221
    const-string v0, "current_session_uuid"

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    iget-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    if-eqz v0, :cond_1

    .line 1224
    const-string v0, "first_open_event_blob"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "info"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1227
    invoke-virtual {v8}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1229
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "events"

    invoke-virtual {v0, v1, v8}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    :cond_2
    :goto_0
    return-void

    .line 1232
    :catch_0
    move-exception v0

    .line 1234
    const-string v1, "Failed to save session open event"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _tagOptEvent(Z)V
    .locals 8

    .prologue
    .line 1268
    :try_start_0
    new-instance v0, Lcom/localytics/android/AnalyticsHeader;

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getInstallationId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHeader;-><init>(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1271
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 1272
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1273
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1274
    const-string v6, "dt"

    const-string v7, "o"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1275
    const-string v6, "u"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1276
    const-string v1, "out"

    invoke-virtual {v4, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1277
    const-string v1, "ct"

    long-to-double v2, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v4, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1279
    const-string v1, "blob"

    const-string v2, "%s\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHeader;->getHeaderBlob()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const-string v0, "upload_format"

    sget-object v1, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v1}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1282
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "events"

    invoke-virtual {v0, v1, v5}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1287
    :catch_0
    move-exception v0

    .line 1289
    const-string v1, "Failed to save opt in/out event"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _tagPushRegisteredEvent()V
    .locals 2

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const-string v1, "Localytics Push Registered"

    invoke-interface {v0, v1}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;)V

    .line 1997
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->upload()V

    .line 1998
    return-void
.end method

.method private _tagQueuedCloseEvent(Z)V
    .locals 6

    .prologue
    .line 1242
    :try_start_0
    new-instance v0, Lcom/localytics/android/AnalyticsHeader;

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getInstallationId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHeader;-><init>(Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/BaseProvider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1245
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 1247
    if-nez p1, :cond_0

    .line 1249
    const-string v4, "last_session_close_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1252
    :cond_0
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->_createCloseBlob(Lcom/localytics/android/AnalyticsHeader;ZJ)Ljava/lang/String;

    move-result-object v0

    .line 1253
    const-string v2, "queued_close_session_blob"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v0, "queued_close_session_blob_upload_format"

    sget-object v2, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v2}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1256
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "info"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    :goto_0
    return-void

    .line 1258
    :catch_0
    move-exception v0

    .line 1260
    const-string v1, "Failed to save queued session close event"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _tagScreen(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1451
    iget-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    if-eqz v0, :cond_1

    .line 1453
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLastScreenTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1455
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler;->mLastScreenTag:Ljava/lang/String;

    .line 1456
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1457
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "screens"

    invoke-virtual {v1, v2, v0}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    const-string v0, "Screen not tagged because a session is not open"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/localytics/android/AnalyticsHandler;)Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_areNotificationsDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->_tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/localytics/android/AnalyticsHandler;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_getCustomDimension(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/localytics/android/AnalyticsHandler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mInstallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/localytics/android/AnalyticsHandler;->PROJECTION_SET_IDENTIFIER:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_IDENTIFIER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_tagScreen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/localytics/android/AnalyticsHandler;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/AnalyticsHandler;->_setCustomDimension(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_setPushID(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/localytics/android/AnalyticsHandler;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_setNotificationsDisabled(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/localytics/android/AnalyticsHandler;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_setOptedOut(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_registerPush(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->_setReferrerId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/localytics/android/AnalyticsHandler;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_retrieveTokenFromInstanceId()V

    return-void
.end method

.method private getCustomDimensionAttributeKey(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 985
    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-ge p1, v0, :cond_0

    .line 987
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "custom_dimension_"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 992
    :goto_0
    return-object v0

    .line 991
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Custom dimension index cannot exceed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 992
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sanitizeMethodString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mSanitizingDictionary:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 550
    if-eqz v0, :cond_0

    .line 553
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method protected _close()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1616
    iget-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    if-nez v0, :cond_0

    .line 1618
    const-string v0, "Session was not open, so close is not possible."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1631
    :goto_0
    return-void

    .line 1622
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/AnalyticsListener;

    invoke-interface {v0}, Lcom/localytics/android/AnalyticsListener;->localyticsSessionWillClose()V

    .line 1624
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1625
    const-string v1, "last_session_close_time"

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1626
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "info"

    invoke-virtual {v1, v2, v0, v5, v5}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1628
    invoke-direct {p0, v4}, Lcom/localytics/android/AnalyticsHandler;->_tagQueuedCloseEvent(Z)V

    .line 1630
    iput-boolean v4, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    goto :goto_0
.end method

.method protected _deleteUploadedData(I)V
    .locals 4

    .prologue
    .line 796
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "events"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 797
    return-void
.end method

.method protected _getCustomerId()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1010
    .line 1011
    iget-object v7, p0, Lcom/localytics/android/AnalyticsHandler;->mInstallId:Ljava/lang/String;

    .line 1014
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "customer_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1016
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1018
    const-string v0, "customer_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1023
    :goto_0
    if-eqz v1, :cond_0

    .line 1025
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1029
    :cond_0
    return-object v0

    .line 1023
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_1

    .line 1025
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1023
    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    move-object v0, v7

    goto :goto_0
.end method

.method protected _getDataToUpload()Ljava/util/TreeMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 840
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "events"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 846
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    .line 848
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 849
    const-string v2, "blob"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 850
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 855
    :catchall_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    .line 857
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    .line 861
    :goto_2
    return-object v0

    .line 855
    :cond_1
    if-eqz v0, :cond_2

    .line 857
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    .line 861
    goto :goto_2

    .line 855
    :catchall_1
    move-exception v0

    move-object v0, v7

    goto :goto_1
.end method

.method _getIdentifiers()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 213
    .line 214
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "identifiers"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 221
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    const-string v1, "key"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    const-string v2, "value"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    .line 236
    :goto_2
    return-object v0

    .line 230
    :cond_1
    if-eqz v0, :cond_2

    .line 232
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    .line 236
    goto :goto_2

    .line 230
    :catchall_1
    move-exception v0

    move-object v0, v7

    goto :goto_1
.end method

.method protected _getMaxRowToUpload()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 815
    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "events"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 820
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 822
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 827
    :goto_0
    if-eqz v1, :cond_0

    .line 829
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 833
    :cond_0
    :goto_1
    return v0

    .line 827
    :catchall_0
    move-exception v0

    move-object v0, v7

    :goto_2
    if-eqz v0, :cond_1

    .line 829
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v6

    .line 833
    goto :goto_1

    .line 827
    :catchall_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method _getPushSenderId()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1094
    .line 1097
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sender_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1099
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1101
    const-string v0, "sender_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1106
    if-eqz v1, :cond_0

    .line 1108
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1112
    :cond_0
    :goto_0
    return-object v0

    .line 1106
    :cond_1
    if-eqz v1, :cond_2

    .line 1108
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    .line 1112
    goto :goto_0

    .line 1106
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_3

    .line 1108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1106
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method

.method _getScreens()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1319
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1320
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "screens"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1322
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1324
    const-string v1, "name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1326
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1328
    return-object v6
.end method

.method protected _getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/localytics/android/BaseUploadThread;"
        }
    .end annotation

    .prologue
    .line 868
    new-instance v0, Lcom/localytics/android/AnalyticsUploadHandler;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/localytics/android/AnalyticsUploadHandler;-><init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    return-object v0
.end method

.method protected _init()V
    .locals 3

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    if-nez v0, :cond_0

    .line 2069
    new-instance v0, Lcom/localytics/android/AnalyticsProvider;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->siloName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/AnalyticsProvider;-><init>(Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    .line 2072
    :cond_0
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_initApiKey()V

    .line 2073
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_initCachedIdentifiers()V

    .line 2074
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_initCachedCustomDimensions()V

    .line 2075
    return-void
.end method

.method protected _initApiKey()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2079
    .line 2082
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 2083
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_version"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "uuid"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "next_session_number"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "customer_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2085
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2088
    const-string v0, "Loading details for API key %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 2090
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2091
    const-string v2, "app_version"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2093
    const-string v2, "app_version"

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/localytics/android/AnalyticsHandler;->mAppWasUpgraded:Z

    .line 2097
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2099
    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "info"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2102
    :cond_1
    const-string v0, "next_session_number"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_3

    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    .line 2103
    const-string v0, "uuid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mInstallId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2135
    :goto_1
    if-eqz v1, :cond_2

    .line 2137
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2141
    :cond_2
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_retrieveLastScreenTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLastScreenTag:Ljava/lang/String;

    .line 2143
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 2144
    return-void

    :cond_3
    move v0, v8

    .line 2102
    goto :goto_0

    .line 2108
    :cond_4
    :try_start_2
    const-string v0, "Performing first-time initialization for new API key %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 2110
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2111
    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mInstallId:Ljava/lang/String;

    .line 2112
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2113
    const-string v3, "api_key"

    iget-object v4, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    const-string v3, "uuid"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    const-string v3, "created_time"

    iget-object v4, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2116
    const-string v3, "opt_out"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2117
    const-string v3, "push_disabled"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2118
    const-string v3, "customer_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    const-string v0, "user_type"

    const-string v3, "anonymous"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    const-string v0, "fb_attribution"

    iget-object v3, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/localytics/android/DatapointHelper;->getFBAttribution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    const-string v0, "first_android_id"

    iget-object v3, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/localytics/android/DatapointHelper;->getAndroidIdOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    const-string v0, "package_name"

    iget-object v3, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    const-string v0, "app_version"

    invoke-virtual {v2, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    const-string v0, "next_session_number"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2125
    const-string v0, "next_header_number"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2126
    const-string v0, "last_session_open_time"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2127
    const-string v0, "last_session_close_time"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2128
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "info"

    invoke-virtual {v0, v3, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 2135
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_5

    .line 2137
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 2135
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method protected _initCachedCustomDimensions()V
    .locals 4

    .prologue
    .line 1841
    monitor-enter p0

    .line 1843
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1845
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    .line 1847
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 1849
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_getCustomDimension(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1851
    :cond_1
    monitor-exit p0

    .line 1852
    return-void

    .line 1851
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected _initCachedIdentifiers()V
    .locals 2

    .prologue
    .line 1829
    monitor-enter p0

    .line 1831
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1833
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    .line 1835
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_getIdentifiers()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1836
    monitor-exit p0

    .line 1837
    return-void

    .line 1836
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected _isOptedOut()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1880
    .line 1883
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "opt_out"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1885
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1887
    const-string v0, "opt_out"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    .line 1892
    :goto_0
    if-eqz v1, :cond_0

    .line 1894
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1899
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v7

    .line 1887
    goto :goto_0

    .line 1892
    :cond_2
    if-eqz v1, :cond_3

    .line 1894
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 1899
    goto :goto_1

    .line 1892
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_4

    .line 1894
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1895
    :cond_4
    throw v0

    .line 1892
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method protected _onUploadCompleted(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 810
    return-void
.end method

.method protected _open()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1501
    iget-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    if-eqz v0, :cond_1

    .line 1503
    const-string v0, "Session was already open"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1544
    :cond_0
    :goto_0
    return-void

    .line 1510
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "last_session_close_time"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1511
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1513
    const-string v0, "last_session_close_time"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1514
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    sget-wide v4, Lcom/localytics/android/Constants;->SESSION_EXPIRATION:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    move v3, v7

    .line 1516
    :goto_1
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/AnalyticsListener;

    iget-boolean v4, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    iget-boolean v5, p0, Lcom/localytics/android/AnalyticsHandler;->mAppWasUpgraded:Z

    if-nez v3, :cond_5

    move v2, v7

    :goto_2
    invoke-interface {v0, v4, v5, v2}, Lcom/localytics/android/AnalyticsListener;->localyticsSessionWillOpen(ZZZ)V

    .line 1518
    if-eqz v3, :cond_6

    const-string v0, "Opening new session"

    :goto_3
    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 1520
    invoke-direct {p0, v3}, Lcom/localytics/android/AnalyticsHandler;->_dequeQueuedCloseSessionTag(Z)V

    .line 1521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mIsSessionOpen:Z

    .line 1523
    if-eqz v3, :cond_2

    .line 1525
    invoke-direct {p0}, Lcom/localytics/android/AnalyticsHandler;->_tagOpenEvent()V

    .line 1530
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/BaseProvider;->deleteOldFiles(Landroid/content/Context;)V

    .line 1533
    :cond_2
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/AnalyticsListener;

    iget-boolean v4, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    iget-boolean v5, p0, Lcom/localytics/android/AnalyticsHandler;->mAppWasUpgraded:Z

    if-nez v3, :cond_7

    move v2, v7

    :goto_4
    invoke-interface {v0, v4, v5, v2}, Lcom/localytics/android/AnalyticsListener;->localyticsSessionDidOpen(ZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1538
    :cond_3
    if-eqz v1, :cond_0

    .line 1540
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    move v3, v8

    .line 1514
    goto :goto_1

    :cond_5
    move v2, v8

    .line 1516
    goto :goto_2

    .line 1518
    :cond_6
    :try_start_2
    const-string v0, "Opening old closed session and reconnecting"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :cond_7
    move v2, v8

    .line 1533
    goto :goto_4

    .line 1538
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_5
    if-eqz v1, :cond_8

    .line 1540
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1541
    :cond_8
    throw v0

    .line 1538
    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method _replaceAttributionInFirstSession(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2196
    .line 2199
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "first_open_event_blob"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2201
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2203
    const-string v0, "first_open_event_blob"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2209
    const-string v2, "[\n]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 2212
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2213
    const-string v0, "attrs"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 2215
    iget-object v4, p0, Lcom/localytics/android/AnalyticsHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/DatapointHelper;->getAdvertisingInfo(Landroid/content/Context;)Lcom/localytics/android/DatapointHelper$AdvertisingInfo;

    move-result-object v4

    .line 2216
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/localytics/android/AnalyticsHandler;->_updateHeaderForTestModeAttribution(Ljava/lang/String;Lorg/json/JSONObject;Lcom/localytics/android/DatapointHelper$AdvertisingInfo;Z)V

    .line 2218
    const-string v4, "aurl"

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2219
    const-string v0, "%s\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    const/4 v3, 0x1

    const/4 v5, 0x1

    aget-object v2, v2, v5

    aput-object v2, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 2230
    if-eqz v1, :cond_0

    .line 2232
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2236
    :cond_0
    :goto_0
    return-object v0

    .line 2221
    :catch_0
    move-exception v0

    .line 2223
    :try_start_3
    const-string v2, "JSONException"

    invoke-static {v2, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2230
    :cond_1
    if-eqz v1, :cond_2

    .line 2232
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    .line 2236
    goto :goto_0

    .line 2230
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_3

    .line 2232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 2230
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method

.method protected _setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1674
    if-eqz p2, :cond_0

    .line 1676
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1679
    :cond_0
    const-string v0, "customer_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1681
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler;->_getCustomerId()Ljava/lang/String;

    move-result-object v0

    .line 1684
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1737
    :goto_0
    return-void

    .line 1691
    :cond_1
    const-string v0, "first_name"

    invoke-virtual {p0, v0, v3}, Lcom/localytics/android/AnalyticsHandler;->_setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    const-string v0, "last_name"

    invoke-virtual {p0, v0, v3}, Lcom/localytics/android/AnalyticsHandler;->_setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const-string v0, "full_name"

    invoke-virtual {p0, v0, v3}, Lcom/localytics/android/AnalyticsHandler;->_setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    const-string v0, "email"

    invoke-virtual {p0, v0, v3}, Lcom/localytics/android/AnalyticsHandler;->_setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1697
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1699
    const-string v1, "customer_id"

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler;->mInstallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const-string v1, "user_type"

    const-string v2, "anonymous"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    :goto_1
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "info"

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1710
    :cond_2
    monitor-enter p0

    .line 1712
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1714
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "identifiers"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "key"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1716
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    :cond_3
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1704
    :cond_4
    const-string v1, "customer_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    const-string v1, "user_type"

    const-string v2, "known"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1721
    :cond_5
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1722
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "identifiers"

    sget-object v3, Lcom/localytics/android/AnalyticsHandler;->SELECTION_SET_IDENTIFIER:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 1726
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "identifiers"

    invoke-virtual {v1, v2, v0}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 1728
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1733
    :cond_6
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method _updateHeaderForTestModeAttribution(Ljava/lang/String;Lorg/json/JSONObject;Lcom/localytics/android/DatapointHelper$AdvertisingInfo;Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1334
    iget-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mSentReferrerTestMode:Z

    if-nez v0, :cond_6

    .line 1342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1344
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[&]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1345
    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    .line 1347
    const-string v6, "[=]"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1348
    array-length v6, v0

    if-le v6, v1, :cond_1

    .line 1350
    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1351
    const-string v7, "localytics_test_mode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "true"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mReferrerTestModeEnabled:Z

    .line 1345
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1351
    goto :goto_1

    .line 1355
    :cond_3
    if-nez p4, :cond_4

    iget-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mFirstSessionEver:Z

    if-eqz v0, :cond_6

    :cond_4
    iget-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mReferrerTestModeEnabled:Z

    if-eqz v0, :cond_6

    .line 1359
    :try_start_0
    const-string v0, "[REFERRAL] using fake id for attribution test mode"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->i(Ljava/lang/String;)I

    .line 1360
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 1361
    const-string v1, "aid"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1362
    const-string v1, "du"

    invoke-static {v0}, Lcom/localytics/android/DatapointHelper;->getSha256_buggy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1363
    const-string v1, "caid"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1364
    if-eqz p3, :cond_5

    .line 1366
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1367
    const-string v1, "gadid"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1368
    const-string v1, "gcadid"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1370
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/AnalyticsHandler;->mSentReferrerTestMode:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    :cond_6
    :goto_2
    return-void

    .line 1372
    :catch_0
    move-exception v0

    .line 1374
    const-string v1, "Exception adding values to object"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method addListener(Lcom/localytics/android/AnalyticsListener;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/ListenersSet;->add(Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method areNotificationsDisabled()Z
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$1;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getBool(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method closeSession()V
    .locals 1

    .prologue
    .line 1798
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1799
    return-void
.end method

.method getCachedCustomDimensions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1816
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1817
    monitor-enter p0

    .line 1819
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1821
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedCustomDimensions:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1823
    :cond_0
    monitor-exit p0

    .line 1824
    return-object v0

    .line 1823
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCachedIdentifiers()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1803
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1804
    monitor-enter p0

    .line 1806
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1808
    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler;->mCachedIdentifiers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1810
    :cond_0
    monitor-exit p0

    .line 1811
    return-object v0

    .line 1810
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCustomDimension(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 936
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$14;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/AnalyticsHandler$14;-><init>(Lcom/localytics/android/AnalyticsHandler;I)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getString(Ljava/util/concurrent/Callable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCustomerIdFuture()Ljava/util/concurrent/FutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 998
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$15;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$15;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getFuture(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method getIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1766
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$19;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/AnalyticsHandler$19;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getString(Ljava/util/concurrent/Callable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInstallationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1035
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$16;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$16;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getString(Ljava/util/concurrent/Callable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPushRegistrationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1047
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$17;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$17;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getString(Ljava/util/concurrent/Callable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPushSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1082
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$18;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$18;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getString(Ljava/util/concurrent/Callable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessageExtended(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 560
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 787
    invoke-super {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessageExtended(Landroid/os/Message;)V

    .line 791
    :goto_0
    return-void

    .line 564
    :pswitch_0
    const-string v0, "Analytics handler received MESSAGE_OPEN"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 566
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$2;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$2;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 584
    :pswitch_1
    const-string v0, "Analytics handler received MESSAGE_CLOSE"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 586
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$3;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$3;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 604
    :pswitch_2
    const-string v0, "Analytics handler received MESSAGE_TAG_EVENT"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 606
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 607
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    .line 609
    aget-object v2, v0, v2

    check-cast v2, Ljava/util/Map;

    .line 610
    const/4 v3, 0x2

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Long;

    .line 612
    new-instance v3, Lcom/localytics/android/AnalyticsHandler$4;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/localytics/android/AnalyticsHandler$4;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    invoke-virtual {p0, v3}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 630
    :pswitch_3
    const-string v0, "Analytics handler received MESSAGE_TAG_SCREEN"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 632
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 634
    new-instance v1, Lcom/localytics/android/AnalyticsHandler$5;

    invoke-direct {v1, p0, v0}, Lcom/localytics/android/AnalyticsHandler$5;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 652
    :pswitch_4
    const-string v0, "Analytics handler received MESSAGE_SET_CUSTOM_DIMENSION"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 654
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 655
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 656
    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    .line 658
    new-instance v2, Lcom/localytics/android/AnalyticsHandler$6;

    invoke-direct {v2, p0, v1, v0}, Lcom/localytics/android/AnalyticsHandler$6;-><init>(Lcom/localytics/android/AnalyticsHandler;ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 670
    :pswitch_5
    const-string v0, "Analytics handler received MESSAGE_SET_IDENTIFIER"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 672
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 673
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    .line 674
    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    .line 676
    new-instance v2, Lcom/localytics/android/AnalyticsHandler$7;

    invoke-direct {v2, p0, v1, v0}, Lcom/localytics/android/AnalyticsHandler$7;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 688
    :pswitch_6
    const-string v0, "Analytics handler received MESSAGE_SET_LOCATION"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 690
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    sput-object v0, Lcom/localytics/android/AnalyticsHandler;->sLastLocation:Landroid/location/Location;

    goto/16 :goto_0

    .line 695
    :pswitch_7
    const-string v0, "Analytics handler received MESSAGE_SET_PUSH_REGID"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 697
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 699
    new-instance v1, Lcom/localytics/android/AnalyticsHandler$8;

    invoke-direct {v1, p0, v0}, Lcom/localytics/android/AnalyticsHandler$8;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 711
    :pswitch_8
    const-string v0, "Analytics handler received MESSAGE_DISABLE_NOTIFICATIONS"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 713
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 715
    new-instance v1, Lcom/localytics/android/AnalyticsHandler$9;

    invoke-direct {v1, p0, v0}, Lcom/localytics/android/AnalyticsHandler$9;-><init>(Lcom/localytics/android/AnalyticsHandler;I)V

    invoke-virtual {p0, v1}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 727
    :pswitch_9
    const-string v0, "Analytics handler received MESSAGE_OPT_OUT"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 729
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v0, v2

    .line 731
    :goto_1
    new-instance v1, Lcom/localytics/android/AnalyticsHandler$10;

    invoke-direct {v1, p0, v0}, Lcom/localytics/android/AnalyticsHandler$10;-><init>(Lcom/localytics/android/AnalyticsHandler;Z)V

    invoke-virtual {p0, v1}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_0
    move v0, v1

    .line 729
    goto :goto_1

    .line 743
    :pswitch_a
    const-string v0, "Analytics handler received MESSAGE_REGISTER_PUSH"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 745
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 747
    new-instance v1, Lcom/localytics/android/AnalyticsHandler$11;

    invoke-direct {v1, p0, v0}, Lcom/localytics/android/AnalyticsHandler$11;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 759
    :pswitch_b
    const-string v0, "Analytics handler received MESSAGE_SET_REFERRERID"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 761
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 763
    new-instance v1, Lcom/localytics/android/AnalyticsHandler$12;

    invoke-direct {v1, p0, v0}, Lcom/localytics/android/AnalyticsHandler$12;-><init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 774
    :pswitch_c
    const-string v0, "Analytics handler received MESSAGE_RETRIEVE_TOKEN_FROM_INSTANCEID"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 776
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$13;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$13;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method isOptedOut()Z
    .locals 1

    .prologue
    .line 1947
    new-instance v0, Lcom/localytics/android/AnalyticsHandler$20;

    invoke-direct {v0, p0}, Lcom/localytics/android/AnalyticsHandler$20;-><init>(Lcom/localytics/android/AnalyticsHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->getBool(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method public localyticsDidTriggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/Region;",
            ">;",
            "Lcom/localytics/android/Region$Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2248
    return-void
.end method

.method public localyticsDidUpdateLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 2242
    invoke-virtual {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->setLocation(Landroid/location/Location;)V

    .line 2243
    return-void
.end method

.method public localyticsDidUpdateMonitoredGeofences(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2253
    return-void
.end method

.method openSession()V
    .locals 1

    .prologue
    .line 1741
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1742
    return-void
.end method

.method registerPush(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 2002
    const/16 v0, 0x6d

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->queueMessageDelayed(Landroid/os/Message;J)Z

    .line 2003
    return-void
.end method

.method retrieveTokenFromInstanceId()V
    .locals 1

    .prologue
    .line 2007
    const/16 v0, 0x71

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 2008
    return-void
.end method

.method setCustomDimension(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 1746
    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-lt p1, v0, :cond_1

    .line 1748
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only valid dimensions are 0 - 19"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1751
    :cond_1
    const/16 v0, 0x6b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1752
    return-void
.end method

.method setDeveloperListener(Lcom/localytics/android/AnalyticsListener;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/ListenersSet;->setDevListener(Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1756
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1758
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1761
    :cond_0
    const/16 v0, 0x69

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1762
    return-void
.end method

.method setLocation(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 1875
    const/16 v0, 0x6a

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1876
    return-void
.end method

.method setNotificationsDisabled(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1959
    const/16 v2, 0x6e

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1960
    return-void

    :cond_0
    move v0, v1

    .line 1959
    goto :goto_0
.end method

.method setOptedOut(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1940
    const-string v2, "Requested opt-out state is %b"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 1942
    const/16 v2, 0x6c

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1943
    return-void

    :cond_0
    move v0, v1

    .line 1942
    goto :goto_0
.end method

.method setPushRegistrationId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1077
    const/16 v0, 0x6f

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1078
    return-void
.end method

.method setReferrerId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2148
    const/16 v0, 0x70

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 2149
    return-void
.end method

.method public tagAddedToCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 319
    if-eqz p5, :cond_0

    .line 321
    invoke-interface {v0, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 324
    :cond_0
    if-eqz p1, :cond_1

    .line 326
    const-string v1, "Item Name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_1
    if-eqz p2, :cond_2

    .line 330
    const-string v1, "Item ID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_2
    if-eqz p3, :cond_3

    .line 334
    const-string v1, "Item Type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_3
    if-eqz p4, :cond_4

    .line 338
    const-string v1, "Item Price"

    invoke-virtual {p4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_4
    const-string v1, "Localytics Added To Cart"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 342
    return-void
.end method

.method public tagCompletedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 365
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 366
    if-eqz p3, :cond_0

    .line 368
    invoke-interface {v4, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 370
    :cond_0
    if-eqz p1, :cond_1

    .line 372
    const-string v0, "Total Price"

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_1
    if-eqz p2, :cond_2

    .line 376
    const-string v0, "Item Count"

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 380
    :goto_0
    sget-object v5, Lcom/localytics/android/Constants;->IGNORE_STANDARD_EVENT_CLV:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 385
    :goto_1
    const-string v0, "Localytics Completed Checkout"

    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 386
    return-void

    :cond_3
    move-wide v0, v2

    .line 379
    goto :goto_0

    :cond_4
    move-wide v2, v0

    goto :goto_1
.end method

.method public tagContentRated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 465
    if-eqz p5, :cond_0

    .line 467
    invoke-interface {v0, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 470
    :cond_0
    if-eqz p1, :cond_1

    .line 472
    const-string v1, "Content Name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_1
    if-eqz p2, :cond_2

    .line 476
    const-string v1, "Content ID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_2
    if-eqz p3, :cond_3

    .line 480
    const-string v1, "Content Type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_3
    if-eqz p4, :cond_4

    .line 484
    const-string v1, "Content Rating"

    invoke-virtual {p4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_4
    const-string v1, "Localytics Content Rated"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 488
    return-void
.end method

.method public tagContentViewed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 391
    if-eqz p4, :cond_0

    .line 393
    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 396
    :cond_0
    if-eqz p1, :cond_1

    .line 398
    const-string v1, "Content Name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_1
    if-eqz p2, :cond_2

    .line 402
    const-string v1, "Content ID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_2
    if-eqz p3, :cond_3

    .line 406
    const-string v1, "Content Type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_3
    const-string v1, "Localytics Content Viewed"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 410
    return-void
.end method

.method tagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x32

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    if-eqz p2, :cond_5

    .line 253
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    const-string v0, "attributes is empty.  Did the caller make an error?"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 258
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 260
    const-string v0, "attributes size is %d, exceeding the maximum size of %d.  Did the caller make an error?"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 263
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 265
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 270
    const-string v1, "attributes cannot contain null or empty keys"

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 272
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    const-string v0, "attributes cannot contain null or empty values"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_5
    const/16 v0, 0x67

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 280
    return-void
.end method

.method public tagInvited(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 532
    if-eqz p2, :cond_0

    .line 534
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 537
    :cond_0
    if-eqz p1, :cond_1

    .line 539
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->sanitizeMethodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    const-string v2, "Method Name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    :cond_1
    const-string v1, "Localytics Invited"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 544
    return-void
.end method

.method public tagLoggedIn(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 510
    if-eqz p2, :cond_0

    .line 512
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 515
    :cond_0
    if-eqz p1, :cond_1

    .line 517
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->sanitizeMethodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 518
    const-string v2, "Method Name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_1
    const-string v1, "Localytics Logged In"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 522
    return-void
.end method

.method public tagLoggedOut(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 526
    const-string v0, "Localytics Logged Out"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 527
    return-void
.end method

.method public tagPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 284
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 285
    if-eqz p5, :cond_0

    .line 287
    invoke-interface {v4, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 290
    :cond_0
    if-eqz p1, :cond_1

    .line 292
    const-string v0, "Item Name"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_1
    if-eqz p2, :cond_2

    .line 296
    const-string v0, "Item ID"

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_2
    if-eqz p3, :cond_3

    .line 300
    const-string v0, "Item Type"

    invoke-interface {v4, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_3
    if-eqz p4, :cond_4

    .line 304
    const-string v0, "Item Price"

    invoke-virtual {p4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 308
    :goto_0
    sget-object v5, Lcom/localytics/android/Constants;->IGNORE_STANDARD_EVENT_CLV:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 313
    :goto_1
    const-string v0, "Localytics Purchased"

    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 314
    return-void

    :cond_5
    move-wide v0, v2

    .line 307
    goto :goto_0

    :cond_6
    move-wide v2, v0

    goto :goto_1
.end method

.method public tagRegistered(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 493
    if-eqz p2, :cond_0

    .line 495
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 498
    :cond_0
    if-eqz p1, :cond_1

    .line 500
    invoke-direct {p0, p1}, Lcom/localytics/android/AnalyticsHandler;->sanitizeMethodString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    const-string v2, "Method Name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :cond_1
    const-string v1, "Localytics Registered"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 505
    return-void
.end method

.method tagScreen(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1865
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1867
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1870
    :cond_0
    const/16 v0, 0x68

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/AnalyticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/AnalyticsHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1871
    return-void
.end method

.method public tagSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 415
    if-eqz p4, :cond_0

    .line 417
    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 420
    :cond_0
    if-eqz p1, :cond_1

    .line 422
    const-string v1, "Search Query"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_1
    if-eqz p2, :cond_2

    .line 426
    const-string v1, "Content Type"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_2
    if-eqz p3, :cond_3

    .line 430
    const-string v1, "Search Result Count"

    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_3
    const-string v1, "Localytics Searched"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 433
    return-void
.end method

.method public tagShared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 438
    if-eqz p5, :cond_0

    .line 440
    invoke-interface {v0, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 443
    :cond_0
    if-eqz p1, :cond_1

    .line 445
    const-string v1, "Content Name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_1
    if-eqz p2, :cond_2

    .line 449
    const-string v1, "Content ID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_2
    if-eqz p3, :cond_3

    .line 453
    const-string v1, "Content Type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_3
    if-eqz p4, :cond_4

    .line 457
    const-string v1, "Method Name"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_4
    const-string v1, "Localytics Shared"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 460
    return-void
.end method

.method public tagStartedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 347
    if-eqz p3, :cond_0

    .line 349
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 351
    :cond_0
    if-eqz p1, :cond_1

    .line 353
    const-string v1, "Total Price"

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_1
    if-eqz p2, :cond_2

    .line 357
    const-string v1, "Item Count"

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_2
    const-string v1, "Localytics Started Checkout"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 361
    return-void
.end method
