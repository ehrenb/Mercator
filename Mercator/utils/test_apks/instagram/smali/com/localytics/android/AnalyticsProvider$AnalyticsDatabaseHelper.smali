.class Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;
.super Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;
.source "AnalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/AnalyticsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnalyticsDatabaseHelper"
.end annotation


# instance fields
.field private mScreensFromV2:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;-><init>(Ljava/lang/String;ILcom/localytics/android/LocalyticsDao;)V

    .line 363
    return-void
.end method


# virtual methods
.method protected addFirstOpenEventToInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 787
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "info"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "first_open_event_blob"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method protected addScreens(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 792
    const-string v1, "CREATE TABLE %s (%s TEXT NOT NULL)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "screens"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 795
    iget-object v1, p0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->mScreensFromV2:Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->mScreensFromV2:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 797
    :goto_0
    iget-object v1, p0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->mScreensFromV2:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->mScreensFromV2:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 809
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 811
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 812
    const-string v3, "name"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v1, "screens"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 797
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    :catch_0
    move-exception v0

    .line 805
    const-string v0, "Bad data in v2 db. Non-string type in screen flow"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 817
    :cond_1
    return-void
.end method

.method protected migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 37

    .prologue
    .line 390
    const-string v4, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER NOT NULL);"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "events"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "blob"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "upload_format"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 400
    const-string v4, "CREATE TABLE %s (%s TEXT PRIMARY KEY, %s TEXT NOT NULL);"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "identifiers"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "key"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "value"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 408
    const-string v4, "CREATE TABLE %s (%s TEXT PRIMARY KEY, %s TEXT NOT NULL);"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "custom_dimensions"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "custom_dimension_key"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "custom_dimension_value"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 445
    const-string v4, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT UNIQUE NOT NULL, %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL CHECK(%s IN (%s, %s)), %s INTEGER NOT NULL CHECK(%s IN (%s, %s)), %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s INTEGER CHECK (%s >= 0), %s INTEGER CHECK (%s >= 0), %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL CHECK (%s >= 0), %s TEXT, %s INTEGER);"

    const/16 v5, 0x24

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "info"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "api_key"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "uuid"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "created_time"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "created_time"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "opt_out"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "opt_out"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "0"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "1"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "push_disabled"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "push_disabled"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "0"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "1"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "sender_id"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "registration_id"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string v7, "registration_version"

    aput-object v7, v5, v6

    const/16 v6, 0x11

    const-string v7, "customer_id"

    aput-object v7, v5, v6

    const/16 v6, 0x12

    const-string v7, "user_type"

    aput-object v7, v5, v6

    const/16 v6, 0x13

    const-string v7, "fb_attribution"

    aput-object v7, v5, v6

    const/16 v6, 0x14

    const-string v7, "play_attribution"

    aput-object v7, v5, v6

    const/16 v6, 0x15

    const-string v7, "first_android_id"

    aput-object v7, v5, v6

    const/16 v6, 0x16

    const-string v7, "first_advertising_id"

    aput-object v7, v5, v6

    const/16 v6, 0x17

    const-string v7, "package_name"

    aput-object v7, v5, v6

    const/16 v6, 0x18

    const-string v7, "app_version"

    aput-object v7, v5, v6

    const/16 v6, 0x19

    const-string v7, "current_session_uuid"

    aput-object v7, v5, v6

    const/16 v6, 0x1a

    const-string v7, "last_session_open_time"

    aput-object v7, v5, v6

    const/16 v6, 0x1b

    const-string v7, "last_session_open_time"

    aput-object v7, v5, v6

    const/16 v6, 0x1c

    const-string v7, "last_session_close_time"

    aput-object v7, v5, v6

    const/16 v6, 0x1d

    const-string v7, "last_session_close_time"

    aput-object v7, v5, v6

    const/16 v6, 0x1e

    const-string v7, "next_session_number"

    aput-object v7, v5, v6

    const/16 v6, 0x1f

    const-string v7, "next_session_number"

    aput-object v7, v5, v6

    const/16 v6, 0x20

    const-string v7, "next_header_number"

    aput-object v7, v5, v6

    const/16 v6, 0x21

    const-string v7, "next_header_number"

    aput-object v7, v5, v6

    const/16 v6, 0x22

    const-string v7, "queued_close_session_blob"

    aput-object v7, v5, v6

    const/16 v6, 0x23

    const-string v7, "queued_close_session_blob_upload_format"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 496
    sget-object v4, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_9

    .line 498
    sget-object v30, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v30

    .line 500
    const/4 v12, 0x0

    .line 501
    :try_start_0
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 503
    const/16 v27, 0x0

    .line 504
    const/16 v26, 0x0

    .line 505
    const-wide/16 v24, 0x0

    .line 506
    const/16 v19, 0x0

    .line 507
    const-wide/16 v22, 0x1

    .line 508
    const-wide/16 v20, 0x1

    .line 509
    const/4 v15, 0x0

    .line 510
    const-wide/16 v16, 0x0

    .line 511
    const/4 v14, 0x0

    .line 512
    const/16 v18, 0x0

    .line 513
    const/4 v13, 0x0

    .line 517
    :try_start_1
    sget-object v4, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "api_keys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 518
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 520
    const-string v4, "api_key"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 521
    const-string v4, "uuid"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 522
    const-string v4, "created_time"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 523
    const-string v4, "opt_out"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v10, "1"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-result v10

    if-ne v4, v10, :cond_0

    const/4 v4, 0x1

    :goto_0
    move/from16 v25, v4

    move-wide/from16 v26, v6

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    .line 528
    :goto_1
    if-eqz v5, :cond_1a

    .line 530
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 531
    const/4 v12, 0x0

    .line 537
    :goto_2
    :try_start_4
    sget-object v4, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "identifiers"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v5

    move-object/from16 v24, v18

    .line 538
    :goto_3
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 540
    const-string v4, "key"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 541
    const-string v4, "value"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 542
    const-string v4, "customer_id"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move-object v4, v6

    .line 545
    :goto_4
    const-string v8, "key"

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v7, "value"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v6, "identifiers"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 548
    invoke-virtual/range {v31 .. v31}, Landroid/content/ContentValues;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move-object/from16 v24, v4

    .line 549
    goto :goto_3

    .line 523
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 528
    :catchall_0
    move-exception v4

    move-object v5, v12

    :goto_5
    if-eqz v5, :cond_1

    .line 530
    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_1
    throw v4

    .line 744
    :catchall_1
    move-exception v4

    monitor-exit v30
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    .line 553
    :cond_2
    if-eqz v5, :cond_18

    .line 555
    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 556
    const/4 v12, 0x0

    .line 562
    :goto_6
    :try_start_8
    sget-object v4, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "custom_dimensions"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-result-object v5

    .line 563
    :goto_7
    :try_start_9
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 565
    const-string v4, "custom_dimension_key"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 566
    const-string v6, "custom_dimension_key"

    const-string v7, "com.localytics.android:"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v4, "custom_dimension_value"

    const-string v6, "custom_dimension_value"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v4, "custom_dimensions"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 569
    invoke-virtual/range {v31 .. v31}, Landroid/content/ContentValues;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    .line 574
    :catchall_2
    move-exception v4

    :goto_8
    if-eqz v5, :cond_3

    .line 576
    :try_start_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 577
    :cond_3
    throw v4

    .line 553
    :catchall_3
    move-exception v4

    move-object v5, v12

    :goto_9
    if-eqz v5, :cond_4

    .line 555
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_4
    throw v4

    .line 574
    :cond_5
    if-eqz v5, :cond_17

    .line 576
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 577
    const/16 v19, 0x0

    .line 581
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v32

    .line 582
    if-eqz v29, :cond_16

    .line 584
    sget-object v4, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4}, Lcom/localytics/android/MigrationDatabaseHelper;->preUploadBuildBlobs(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 586
    const/4 v5, 0x0

    move-object v9, v5

    move-object v4, v13

    move-wide/from16 v6, v16

    move-object v8, v15

    move-wide/from16 v10, v20

    move-object v5, v14

    move-wide/from16 v12, v22

    .line 589
    :goto_b
    sget-object v14, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-static {v0, v14, v1}, Lcom/localytics/android/MigrationDatabaseHelper;->convertDatabaseToJson(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 590
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v15

    if-eqz v15, :cond_a

    move-wide v14, v6

    move-object/from16 v16, v8

    move-wide/from16 v20, v10

    move-wide/from16 v22, v12

    move-object v12, v4

    move-object v13, v5

    .line 685
    :goto_c
    :try_start_b
    sget-object v4, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "info"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-result-object v5

    .line 686
    :try_start_c
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 688
    const-string v4, "api_key"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v4, "uuid"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v4, "created_time"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 691
    const-string v4, "opt_out"

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 692
    const-string v4, "push_disabled"

    const-string v6, "push_disabled"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string v4, "sender_id"

    const-string v6, "sender_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v4, "registration_id"

    const-string v6, "registration_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v4, "registration_version"

    const-string v6, "registration_version"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    if-eqz v24, :cond_12

    .line 698
    const-string v4, "customer_id"

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v4, "user_type"

    const-string v6, "known"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :goto_d
    const-string v4, "fb_attribution"

    const-string v6, "fb_attribution"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v4, "play_attribution"

    const-string v6, "play_attribution"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v4, "first_android_id"

    const-string v6, "first_android_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v4, "first_advertising_id"

    const-string v6, "first_advertising_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v4, "app_version"

    invoke-static/range {v32 .. v32}, Lcom/localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v4, "package_name"

    const-string v6, "package_name"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v4, "current_session_uuid"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v4, "last_session_open_time"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 714
    const-string v4, "last_session_open_time"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 715
    const-string v4, "last_session_close_time"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 716
    const-string v4, "next_header_number"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 717
    const-string v4, "next_session_number"

    const-wide/16 v8, 0x1

    add-long v8, v8, v20

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 718
    cmp-long v4, v14, v6

    if-lez v4, :cond_14

    .line 720
    const-string v4, "queued_close_session_blob"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v4, "queued_close_session_blob_upload_format"

    sget-object v6, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v6}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->mScreensFromV2:Lorg/json/JSONArray;

    .line 731
    :cond_6
    :goto_e
    const-string v4, "info"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 732
    invoke-virtual/range {v31 .. v31}, Landroid/content/ContentValues;->clear()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 737
    :cond_7
    if-eqz v5, :cond_8

    .line 739
    :try_start_d
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 743
    :cond_8
    invoke-static {}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->cleanUpOldDB()V

    .line 744
    monitor-exit v30

    .line 746
    :cond_9
    return-void

    .line 594
    :cond_a
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-wide/from16 v16, v12

    move-wide v12, v10

    move-object v10, v8

    move-wide/from16 v34, v6

    move-object v7, v5

    move-object v6, v4

    move-object v5, v9

    move-wide/from16 v8, v34

    :goto_f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 599
    :try_start_e
    const-string v11, "dt"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "h"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 601
    if-nez v5, :cond_15

    .line 603
    const-string v11, "seq"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    :goto_10
    move-object v5, v6

    move-object v6, v7

    move-object v7, v10

    move-wide v10, v12

    move-wide v12, v14

    :goto_11
    move-wide/from16 v16, v12

    move-wide v12, v10

    move-object v10, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    .line 679
    goto :goto_f

    .line 609
    :cond_b
    const-string v11, "seq"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const-wide/16 v14, 0x1

    add-long v14, v14, v16

    :try_start_f
    move-wide/from16 v0, v16

    invoke-virtual {v5, v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 610
    const-string v11, "u"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 612
    const-string v11, "attrs"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 613
    const-string v16, "lpg"

    invoke-static/range {v32 .. v32}, Lcom/localytics/android/DatapointHelper;->isLocationPermissionGranted(Landroid/content/Context;)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 615
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string v11, "dt"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v16, "c"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 618
    const/4 v11, 0x0

    .line 619
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 620
    const-string v16, "u"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 621
    sget-object v17, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/localytics/android/MigrationDatabaseHelper;->wallTimeForEvent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v16

    .line 625
    if-eqz v10, :cond_e

    .line 629
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 630
    const-string v23, "upload_format"

    sget-object v33, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual/range {v33 .. v33}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    cmp-long v23, v16, v8

    if-lez v23, :cond_d

    .line 635
    const-string v11, "blob"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v11, "events"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 641
    const/4 v8, 0x1

    move-wide/from16 v10, v16

    move-object/from16 v9, v18

    :goto_12
    move/from16 v34, v8

    move-wide/from16 v35, v10

    move/from16 v11, v34

    move-object v10, v9

    move-wide/from16 v8, v35

    .line 656
    :goto_13
    if-eqz v11, :cond_c

    const-string v11, "fl"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 658
    const-string v11, "fl"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-object v6

    :cond_c
    move-object v4, v6

    move-object v6, v7

    move-object v7, v10

    move-wide v10, v12

    .line 672
    :goto_14
    :try_start_10
    invoke-virtual/range {v31 .. v31}, Landroid/content/ContentValues;->clear()V

    .line 673
    const/4 v12, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-wide v12, v14

    move-object/from16 v34, v4

    move-object v4, v5

    move-object/from16 v5, v34

    goto/16 :goto_11

    .line 644
    :cond_d
    :try_start_11
    const-string v16, "blob"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v16, "events"

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move/from16 v34, v11

    move-wide/from16 v35, v8

    move/from16 v8, v34

    move-object v9, v10

    move-wide/from16 v10, v35

    goto :goto_12

    .line 652
    :cond_e
    const/4 v8, 0x1

    move v11, v8

    move-object/from16 v10, v18

    move-wide/from16 v8, v16

    goto :goto_13

    .line 663
    :cond_f
    const-string v11, "dt"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v16, "s"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 665
    const-string v11, "nth"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 666
    const-string v11, "u"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 668
    :cond_10
    const-string v4, "blob"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v4, "upload_format"

    sget-object v11, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v11}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    const-string v4, "events"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v11, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-object v4, v6

    move-object v6, v7

    move-object v7, v10

    move-wide v10, v12

    goto/16 :goto_14

    .line 676
    :catch_0
    move-exception v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v10

    move-wide v10, v12

    move-wide/from16 v12, v16

    :goto_15
    move-object/from16 v34, v5

    move-object v5, v4

    move-object/from16 v4, v34

    goto/16 :goto_11

    :cond_11
    move-object v4, v6

    move-object/from16 v34, v5

    move-object v5, v7

    move-wide v6, v8

    move-object/from16 v9, v34

    move-object v8, v10

    move-wide v10, v12

    move-wide/from16 v12, v16

    .line 680
    goto/16 :goto_b

    .line 703
    :cond_12
    :try_start_12
    const-string v4, "customer_id"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v4, "user_type"

    const-string v6, "anonymous"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto/16 :goto_d

    .line 737
    :catchall_4
    move-exception v4

    :goto_16
    if-eqz v5, :cond_13

    .line 739
    :try_start_13
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 724
    :cond_14
    if-eqz v16, :cond_6

    .line 726
    :try_start_14
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 727
    const-string v6, "blob"

    move-object/from16 v0, v16

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v6, "upload_format"

    sget-object v7, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v7}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->getValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    const-string v6, "events"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto/16 :goto_e

    .line 737
    :catchall_5
    move-exception v4

    move-object/from16 v5, v19

    goto :goto_16

    .line 676
    :catch_1
    move-exception v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v10

    move-wide v10, v12

    move-wide v12, v14

    goto :goto_15

    :catch_2
    move-exception v12

    move-wide v12, v14

    goto :goto_15

    .line 574
    :catchall_6
    move-exception v4

    move-object v5, v12

    goto/16 :goto_8

    .line 553
    :catchall_7
    move-exception v4

    goto/16 :goto_9

    .line 528
    :catchall_8
    move-exception v4

    goto/16 :goto_5

    :cond_15
    move-wide/from16 v14, v16

    goto/16 :goto_10

    :cond_16
    move-object v12, v13

    move-object v13, v14

    move-wide/from16 v34, v16

    move-object/from16 v16, v15

    move-wide/from16 v14, v34

    goto/16 :goto_c

    :cond_17
    move-object/from16 v19, v5

    goto/16 :goto_a

    :cond_18
    move-object v12, v5

    goto/16 :goto_6

    :cond_19
    move-object/from16 v4, v24

    goto/16 :goto_4

    :cond_1a
    move-object v12, v5

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v28, v26

    move-object/from16 v29, v27

    move-wide/from16 v26, v24

    move/from16 v25, v19

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "db cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    const-string v0, "PRAGMA auto_vacuum = INCREMENTAL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 384
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 770
    invoke-super {p0, p1}, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 772
    const-string v0, "SQLite library version is: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "select sqlite_version()"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 774
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    const-string v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 781
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 753
    invoke-virtual {p0, p1}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 756
    :cond_0
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    .line 758
    invoke-virtual {p0, p1}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->addFirstOpenEventToInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 761
    :cond_1
    const/4 v0, 0x3

    if-ge p2, v0, :cond_2

    .line 763
    invoke-virtual {p0, p1}, Lcom/localytics/android/AnalyticsProvider$AnalyticsDatabaseHelper;->addScreens(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 765
    :cond_2
    return-void
.end method
