.class Lcom/localytics/android/PlacesManager;
.super Lcom/localytics/android/BasePushManager;
.source "PlacesManager.java"


# static fields
.field private static final PLACES_PUSH_OPENED_EVENT:Ljava/lang/String; = "Localytics Places Push Opened"

.field private static final PLACES_PUSH_RECEIVED_EVENT:Ljava/lang/String; = "Localytics Places Push Received"


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BasePushManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V

    .line 34
    return-void
.end method

.method private _circularRegionTrigger(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 325
    instance-of v0, p1, Lcom/localytics/android/CircularRegion;

    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {p1}, Lcom/localytics/android/Region;->getPlaceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/PlacesManager;->_getDisplayableCampaignIdsFromGeofencePlaceId(J)Ljava/util/List;

    move-result-object v0

    .line 330
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 332
    invoke-virtual {p2}, Lcom/localytics/android/Region$Event;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v1, v4, v5}, Lcom/localytics/android/PlacesManager;->_triggerEventMatchesCampaign(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, p1, p2}, Lcom/localytics/android/PlacesManager;->_placesCampaignForRegionEvent(JLcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)Lcom/localytics/android/PlacesCampaign;

    move-result-object v4

    .line 335
    if-eqz v4, :cond_0

    .line 337
    iget-object v1, p0, Lcom/localytics/android/PlacesManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->areNotificationsDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    const-string v0, "Got places push notification while push is disabled."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 344
    :cond_1
    iget-object v5, p0, Lcom/localytics/android/PlacesManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    monitor-enter v5

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/PlacesManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    iget-object v1, v1, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v1}, Lcom/localytics/android/ListenersSet;->getDevListener()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/MessagingListener;

    .line 347
    if-eqz v1, :cond_3

    .line 349
    invoke-interface {v1, v4}, Lcom/localytics/android/MessagingListener;->localyticsShouldShowPlacesPushNotification(Lcom/localytics/android/PlacesCampaign;)Z

    move-result v1

    .line 351
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/localytics/android/PlacesManager;->_setCampaignAsDisplayed(J)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 356
    invoke-direct {p0, v4}, Lcom/localytics/android/PlacesManager;->_tagPushReceived(Lcom/localytics/android/PlacesCampaign;)Z

    .line 357
    invoke-virtual {v4}, Lcom/localytics/android/PlacesCampaign;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/PlacesManager;->_hasMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/localytics/android/PlacesCampaign;->isControlGroup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    invoke-direct {p0, v4}, Lcom/localytics/android/PlacesManager;->_showNotificationForCampaign(Lcom/localytics/android/PlacesCampaign;)V

    move v0, v2

    .line 370
    :goto_2
    return v0

    .line 351
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 370
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private _getCampaignAttributes(J)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 512
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 513
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "places_campaign_attributes"

    const/4 v2, 0x0

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v9, "campaign_id"

    aput-object v9, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move v0, v7

    .line 523
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 525
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 527
    const-string v2, "key"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    :cond_0
    if-eqz v1, :cond_1

    .line 537
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_1
    return-object v8

    .line 535
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_2

    .line 537
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 535
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private _getTriggeringEventsFromCampaignId(J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 437
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "places_campaigns_events"

    const/4 v2, 0x0

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v9, "campaign_id"

    aput-object v9, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move v0, v7

    .line 448
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 450
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 451
    const-string v2, "event"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_0
    if-eqz v1, :cond_1

    .line 458
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_1
    return-object v8

    .line 456
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_2

    .line 458
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 456
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private _hasMessageBeenDisplayed(J)Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 175
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "places_campaigns_displayed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "campaign_id"

    aput-object v4, v2, v3

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "campaign_id"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 185
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 189
    if-eqz v1, :cond_0

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_0
    return v0

    .line 189
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_1

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 189
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private _parsePlacesMarketingMessage(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)Landroid/content/ContentValues;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 202
    const-string v1, "campaign_id"

    const-string v2, "campaign_id"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    const-string v1, "creative_id"

    const-string v2, "ab"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    const-string v1, "creative_type"

    const-string v2, "creative_type"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "expiration"

    const-string v2, "expiration"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    const-string v1, "version"

    const-string v2, "version"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 208
    const-string v1, "ab_test"

    const-string v2, "ab"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "rule_name"

    const-string v2, "rule_name"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v1, "control_group"

    const-string v2, "control_group"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v1, "message"

    const-string v2, "message"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "sound_filename"

    const-string v2, "sound_filename"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    if-eqz p2, :cond_0

    .line 215
    const-string v1, "schema_version"

    invoke-static {p2, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    .line 216
    if-lez v1, :cond_0

    .line 218
    const-string v2, "schema_version"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    :cond_0
    return-object v0
.end method

.method private _placesCampaignForRegionEvent(JLcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)Lcom/localytics/android/PlacesCampaign;
    .locals 11

    .prologue
    .line 468
    const/4 v6, 0x0

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    .line 472
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "places_campaigns"

    const/4 v2, 0x0

    const-string v3, "%s = ? AND %s > ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "campaign_id"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "expiration"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 477
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    new-instance v0, Lcom/localytics/android/PlacesCampaign$Builder;

    invoke-direct {v0}, Lcom/localytics/android/PlacesCampaign$Builder;-><init>()V

    const-string v2, "campaign_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/PlacesCampaign$Builder;->setCampaignId(J)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string v2, "rule_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/localytics/android/PlacesCampaign$Builder;->setRuleName(Ljava/lang/String;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string v2, "creative_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/PlacesCampaign$Builder;->setCreativeId(J)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string v2, "creative_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/localytics/android/PlacesCampaign$Builder;->setCreativeType(Ljava/lang/String;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string v2, "message"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/localytics/android/PlacesCampaign$Builder;->setMessage(Ljava/lang/String;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string v2, "sound_filename"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/localytics/android/PlacesCampaign$Builder;->setSoundFilename(Ljava/lang/String;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/localytics/android/PlacesCampaign$Builder;->setRegion(Lcom/localytics/android/Region;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v2

    const-string v0, "control_group"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/localytics/android/PlacesCampaign$Builder;->setControlGroup(Z)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string v2, "ab_test"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/localytics/android/PlacesCampaign$Builder;->setAbTest(Ljava/lang/String;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string v2, "version"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/PlacesCampaign$Builder;->setVersion(J)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    const-string v2, "schema_version"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/PlacesCampaign$Builder;->setSchemaVersion(J)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/localytics/android/PlacesCampaign$Builder;->setTriggerEvent(Lcom/localytics/android/Region$Event;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/localytics/android/PlacesManager;->_getCampaignAttributes(J)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/localytics/android/PlacesCampaign$Builder;->setAttributes(Ljava/util/Map;)Lcom/localytics/android/PlacesCampaign$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/PlacesCampaign$Builder;->build()Lcom/localytics/android/PlacesCampaign;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 502
    if-eqz v1, :cond_0

    .line 504
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v0

    .line 479
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 497
    :cond_2
    const/4 v0, 0x0

    .line 502
    if-eqz v1, :cond_0

    .line 504
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 502
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_3

    .line 504
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 502
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private _removeDeactivatedCampaigns(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 292
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 294
    new-instance v0, Lcom/localytics/android/PlacesManager$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/PlacesManager$1;-><init>(Lcom/localytics/android/PlacesManager;)V

    invoke-static {p1, v0}, Lcom/localytics/android/BaseProvider;->buildSqlInClause(Ljava/util/List;Lcom/localytics/android/BaseProvider$InClauseBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "places_campaigns"

    const-string v3, "%s NOT IN %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "campaign_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v7}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "places_campaigns"

    invoke-virtual {v0, v1, v7, v7}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private _saveCampaignAttributes(JLjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 267
    if-eqz p3, :cond_1

    .line 271
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    new-instance v2, Landroid/content/ContentValues;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 274
    const-string v3, "key"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v3, "value"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "campaign_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 277
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "places_campaign_attributes"

    invoke-virtual {v0, v3, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 279
    const-string v0, "Failed to insert attributes for places campaign id %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 285
    const-string v0, "Cannot parse places attributes data: %s"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 288
    :cond_1
    return-void
.end method

.method private _saveGeofenceTriggers(JLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 228
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "places_campaigns_geofence_triggers"

    const-string v2, "%s = ?"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "campaign_id"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 233
    if-eqz p3, :cond_0

    .line 235
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 237
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 238
    const-string v3, "place_id"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    const-string v1, "campaign_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 240
    iget-object v1, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "places_campaigns_geofence_triggers"

    invoke-virtual {v1, v3, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method private _savePlacesCampaign(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/localytics/android/PlacesManager;->_validatePlacesMarketingMessage(Lcom/localytics/android/MarketingMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    const-string v0, "places campaign is invalid:\n%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/localytics/android/MarketingMessage;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 83
    const-wide/16 v0, 0x0

    .line 148
    :cond_0
    :goto_0
    return-wide v0

    .line 86
    :cond_1
    const-string v0, "campaign_id"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v10

    .line 89
    invoke-direct {p0, v10, v11}, Lcom/localytics/android/PlacesManager;->_hasMessageBeenDisplayed(J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    const-string v0, "No update needed. Places campaign has already displayed\n\t campaignID = %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 92
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 95
    :cond_2
    const-wide/16 v8, 0x0

    .line 96
    const/4 v6, 0x0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "places_campaigns"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "version"

    aput-object v4, v2, v3

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "campaign_id"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 105
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 107
    const-string v0, "version"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 112
    :goto_1
    if-eqz v1, :cond_3

    .line 114
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_5

    .line 120
    const-string v0, "Places campaign already exists for this campaign\n\t campaignID = %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 122
    const-string v0, "version"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    .line 123
    cmp-long v0, v2, v0

    if-ltz v0, :cond_6

    .line 125
    const-string v0, "No update needed. Campaign version has not been updated\n\t version: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 126
    const-wide/16 v0, 0x0

    goto/16 :goto_0

    .line 112
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_4

    .line 114
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 131
    :cond_5
    const-string v0, "Places campaign not found. Creating a new one."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 134
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/PlacesManager;->_parsePlacesMarketingMessage(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "places_campaigns"

    invoke-virtual {v1, v2, v0}, Lcom/localytics/android/BaseProvider;->replace(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_7

    .line 137
    const-string v2, "Failed to replace places campaign %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 138
    const-wide/16 v0, -0x1

    goto/16 :goto_0

    .line 141
    :cond_7
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 143
    const-string v2, "triggering_geofences"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/localytics/android/PlacesManager;->_saveGeofenceTriggers(JLjava/util/List;)V

    .line 144
    const-string v2, "triggering_events"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/localytics/android/PlacesManager;->_saveTriggerEvents(JLjava/util/List;)V

    .line 145
    const-string v2, "attributes"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeMapFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/localytics/android/PlacesManager;->_saveCampaignAttributes(JLjava/util/Map;)V

    goto/16 :goto_0

    .line 112
    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_8
    move-wide v2, v8

    goto/16 :goto_1
.end method

.method private _saveTriggerEvents(JLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 248
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "places_campaigns_events"

    const-string v2, "%s = ?"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "campaign_id"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 253
    if-eqz p3, :cond_0

    .line 255
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 257
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 258
    const-string v3, "event"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "campaign_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 260
    iget-object v1, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "places_campaigns_events"

    invoke-virtual {v1, v3, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method private _setCampaignAsDisplayed(J)J
    .locals 3

    .prologue
    .line 581
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 582
    const-string v1, "campaign_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 583
    iget-object v1, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "places_campaigns_displayed"

    invoke-virtual {v1, v2, v0}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private _showNotificationForCampaign(Lcom/localytics/android/PlacesCampaign;)V
    .locals 8

    .prologue
    .line 570
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 571
    const-string v0, "places_campaign"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 573
    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getSoundFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getCampaignId()J

    move-result-wide v4

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/localytics/android/PlacesManager;->_showPushNotification(Ljava/lang/String;Ljava/lang/String;JLcom/localytics/android/Campaign;Landroid/os/Bundle;)V

    .line 577
    return-void
.end method

.method private _tagPushReceived(Lcom/localytics/android/PlacesCampaign;)Z
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 547
    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 548
    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getCreativeType()Ljava/lang/String;

    move-result-object v8

    .line 551
    invoke-virtual {p0, v8, v3}, Lcom/localytics/android/PlacesManager;->_creativeTypeForMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/localytics/android/PlacesCampaign;->setCreativeType(Ljava/lang/String;)V

    .line 553
    new-instance v12, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 554
    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getRegion()Lcom/localytics/android/Region;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_0

    .line 557
    const-string v1, "Localytics Place ID"

    invoke-virtual {v0}, Lcom/localytics/android/Region;->getPlaceId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v1, "Region Identifier"

    invoke-virtual {v0}, Lcom/localytics/android/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v1, "Region Type"

    invoke-virtual {v0}, Lcom/localytics/android/Region;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-virtual {v0}, Lcom/localytics/android/Region;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 563
    :cond_0
    const-string v2, "Localytics Places Push Received"

    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getCampaignId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getCreativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/localytics/android/PlacesCampaign;->getSchemaVersion()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    move-object v1, p0

    move v10, v9

    invoke-virtual/range {v1 .. v12}, Lcom/localytics/android/PlacesManager;->_tagPushReceived(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private _triggerEventMatchesCampaign(Ljava/lang/String;J)Z
    .locals 2

    .prologue
    .line 422
    invoke-direct {p0, p2, p3}, Lcom/localytics/android/PlacesManager;->_getTriggeringEventsFromCampaignId(J)Ljava/util/List;

    move-result-object v0

    .line 423
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    const/4 v0, 0x1

    .line 431
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _validatePlacesMarketingMessage(Lcom/localytics/android/MarketingMessage;)Z
    .locals 18

    .prologue
    .line 153
    const-string v2, "campaign_id"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    .line 155
    const-string v4, "ab"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v4

    .line 156
    const-string v6, "version"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v6

    .line 157
    const-string v8, "expiration"

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v8

    .line 158
    const-string v10, "rule_name"

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 159
    const-string v11, "triggering_geofences"

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/localytics/android/JsonHelper;->getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 160
    const-string v12, "triggering_events"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/localytics/android/JsonHelper;->getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/localytics/android/PlacesManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v13}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    .line 164
    const-wide/16 v16, 0x0

    cmp-long v2, v2, v16

    if-lez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_1

    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz v12, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    cmp-long v2, v8, v14

    if-gtz v2, :cond_0

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method _getDisplayableCampaignIdsFromGeofencePlaceId(J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    const/4 v1, 0x0

    .line 387
    :try_start_0
    const-string v2, "%s.%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "places_campaigns_displayed"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "campaign_id"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 388
    const-string v3, "%s.%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "places_campaigns_geofence_triggers"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "campaign_id"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 389
    const-string v4, "SELECT %s FROM %s WHERE %s > ? AND %s IN (SELECT %s FROM %s NATURAL LEFT OUTER JOIN %s WHERE %s IS NULL AND %s = ? ORDER BY %s);"

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "campaign_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "places_campaigns"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "expiration"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "campaign_id"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object v3, v5, v6

    const/4 v6, 0x5

    const-string v7, "places_campaigns_geofence_triggers"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "places_campaigns_displayed"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    aput-object v2, v5, v6

    const/16 v2, 0x8

    const-string v6, "place_id"

    aput-object v6, v5, v2

    const/16 v2, 0x9

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 403
    iget-object v3, p0, Lcom/localytics/android/PlacesManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v3, v3, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/localytics/android/PlacesManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 404
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    const-string v2, "campaign_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 413
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 411
    :cond_1
    if-eqz v1, :cond_2

    .line 413
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_2
    return-object v0
.end method

.method _processMarketingObject(ZLjava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 42
    if-eqz p2, :cond_2

    .line 44
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    const-string v0, "places"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 50
    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 55
    new-instance v3, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v3, v0}, Lcom/localytics/android/MarketingMessage;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 74
    const-string v1, "JSONException"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :cond_0
    :goto_1
    return-void

    .line 59
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/localytics/android/PlacesManager;->_removeDeactivatedCampaigns(Ljava/util/List;)V

    .line 61
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    .line 63
    invoke-direct {p0, v0, p3}, Lcom/localytics/android/PlacesManager;->_savePlacesCampaign(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)J

    goto :goto_2

    .line 68
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, v0}, Lcom/localytics/android/PlacesManager;->_removeDeactivatedCampaigns(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method _triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/Region;",
            ">;",
            "Lcom/localytics/android/Region$Event;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 312
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/Region;

    .line 314
    invoke-direct {p0, v0, p2}, Lcom/localytics/android/PlacesManager;->_circularRegionTrigger(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const/4 v0, 0x1

    .line 320
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handlePushNotificationOpened(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 590
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "places_campaign"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/PlacesCampaign;

    .line 597
    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v0}, Lcom/localytics/android/PlacesCampaign;->getCampaignId()J

    move-result-wide v2

    .line 600
    invoke-virtual {v0}, Lcom/localytics/android/PlacesCampaign;->getCreativeId()J

    move-result-wide v4

    .line 601
    cmp-long v1, v2, v6

    if-lez v1, :cond_3

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 603
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 604
    const-string v6, "Campaign ID"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v2, "Creative ID"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string v2, "Creative Type"

    invoke-virtual {v0}, Lcom/localytics/android/PlacesCampaign;->getCreativeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v2, "Action"

    const-string v3, "Click"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v2, "Schema Version - Client"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v2, "Schema Version - Server"

    invoke-virtual {v0}, Lcom/localytics/android/PlacesCampaign;->getSchemaVersion()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    invoke-virtual {v0}, Lcom/localytics/android/PlacesCampaign;->getRegion()Lcom/localytics/android/Region;

    move-result-object v0

    .line 611
    if-eqz v0, :cond_2

    .line 613
    const-string v2, "Localytics Place ID"

    invoke-virtual {v0}, Lcom/localytics/android/Region;->getPlaceId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v2, "Region Identifier"

    invoke-virtual {v0}, Lcom/localytics/android/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v2, "Region Type"

    invoke-virtual {v0}, Lcom/localytics/android/Region;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-virtual {v0}, Lcom/localytics/android/Region;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const-string v2, "Localytics Places Push Opened"

    invoke-interface {v0, v2, v1}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 619
    iget-object v0, p0, Lcom/localytics/android/PlacesManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->upload()V

    .line 623
    :cond_3
    const-string v0, "places_campaign"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 626
    :catch_0
    move-exception v0

    .line 628
    const-string v1, "Exception while handling opened places push"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
