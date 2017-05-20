.class Lcom/localytics/android/ManifestHandler;
.super Lcom/localytics/android/BaseHandler;
.source "ManifestHandler.java"

# interfaces
.implements Lcom/localytics/android/AnalyticsListener;
.implements Lcom/localytics/android/LocationListener;


# static fields
.field private static final MESSAGE_LOCATION_UPDATE:I = 0x1f5


# instance fields
.field private mIsRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mListeners:Lcom/localytics/android/ListenersSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/localytics/android/ListenersSet",
            "<",
            "Lcom/localytics/android/ManifestListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BaseHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 36
    const-string v0, "Manifest"

    iput-object v0, p0, Lcom/localytics/android/ManifestHandler;->siloName:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/localytics/android/ListenersSet;

    const-class v1, Lcom/localytics/android/ManifestListener;

    invoke-direct {v0, v1}, Lcom/localytics/android/ListenersSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/localytics/android/ManifestHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/ManifestHandler;->doesRetry:Z

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/ManifestHandler;->mIsRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/ManifestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/ManifestHandler;->queueMessage(Landroid/os/Message;)Z

    .line 41
    return-void
.end method


# virtual methods
.method protected _deleteUploadedData(I)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method protected _getDataToUpload()Ljava/util/TreeMap;
    .locals 3
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
    .line 193
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 194
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-object v0
.end method

.method protected _getMaxRowToUpload()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method protected _getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;
    .locals 6
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
    .line 201
    new-instance v0, Lcom/localytics/android/MarketingDownloader;

    sget-object v1, Lcom/localytics/android/BaseUploadThread$UploadType;->MANIFEST:Lcom/localytics/android/BaseUploadThread$UploadType;

    iget-object v5, p0, Lcom/localytics/android/ManifestHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/MarketingDownloader;-><init>(Lcom/localytics/android/BaseUploadThread$UploadType;Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    return-object v0
.end method

.method protected _init()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/localytics/android/ManifestProvider;

    iget-object v1, p0, Lcom/localytics/android/ManifestHandler;->siloName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/ManifestHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/ManifestProvider;-><init>(Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    iput-object v0, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    .line 62
    invoke-virtual {p0}, Lcom/localytics/android/ManifestHandler;->_initializeInfo()V

    .line 63
    return-void
.end method

.method protected _initializeInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 67
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 71
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const-string v0, "Performing first-time initialization for MarketingProvider info table"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 77
    const-string v2, "last_campaign_download"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    iget-object v2, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "info"

    invoke-virtual {v2, v3, v0}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    :cond_0
    if-eqz v1, :cond_1

    .line 85
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 90
    return-void

    .line 83
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    .line 85
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 83
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method protected _locationUpdated()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 99
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 103
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "last_campaign_download"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 106
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/localytics/android/ManifestHandler;->refreshManifest()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :cond_0
    if-eqz v1, :cond_1

    .line 116
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_1
    return-void

    .line 114
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    .line 116
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 114
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method protected _onUploadCompleted(ZLjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 156
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 159
    const-string v0, "config"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 160
    iget-object v1, p0, Lcom/localytics/android/ManifestHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v1}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/ManifestListener;

    invoke-interface {v1, v2, v0, p1}, Lcom/localytics/android/ManifestListener;->localyticsDidDownloadManifest(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 168
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 169
    const-string v1, "last_campaign_download"

    iget-object v2, p0, Lcom/localytics/android/ManifestHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    iget-object v1, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "info"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mIsRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    :goto_1
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 182
    return-void

    .line 164
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/ManifestListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/localytics/android/ManifestListener;->localyticsDidDownloadManifest(Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 174
    :try_start_2
    const-string v1, "JSONException"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mIsRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/localytics/android/ManifestHandler;->mIsRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method addListener(Lcom/localytics/android/ManifestListener;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/ListenersSet;->add(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method protected handleMessageExtended(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 140
    invoke-super {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessageExtended(Landroid/os/Message;)V

    .line 144
    :goto_0
    return-void

    .line 128
    :pswitch_0
    const-string v0, "Marketing handler received MESSAGE_LOCATION_UPDATE"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/ManifestHandler$1;

    invoke-direct {v1, p0}, Lcom/localytics/android/ManifestHandler$1;-><init>(Lcom/localytics/android/ManifestHandler;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
    .end packed-switch
.end method

.method public localyticsDidTagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0
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
    .line 227
    return-void
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
    .line 238
    return-void
.end method

.method public localyticsDidUpdateLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/localytics/android/ManifestHandler;->locationUpdated()V

    .line 233
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
    .line 243
    return-void
.end method

.method public localyticsSessionDidOpen(ZZZ)V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public localyticsSessionWillClose()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public localyticsSessionWillOpen(ZZZ)V
    .locals 1

    .prologue
    .line 207
    if-nez p3, :cond_0

    .line 209
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/ManifestListener;

    invoke-interface {v0}, Lcom/localytics/android/ManifestListener;->localyticsWillDownloadManifest()V

    .line 210
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCustomerIdFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/ManifestHandler;->upload(Ljava/util/concurrent/Future;)V

    .line 212
    :cond_0
    return-void
.end method

.method protected locationUpdated()V
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x1f5

    invoke-virtual {p0, v0}, Lcom/localytics/android/ManifestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/ManifestHandler;->queueMessage(Landroid/os/Message;)Z

    .line 95
    return-void
.end method

.method refreshManifest()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mIsRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/localytics/android/ManifestHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/ManifestListener;

    invoke-interface {v0}, Lcom/localytics/android/ManifestListener;->localyticsWillDownloadManifest()V

    .line 53
    invoke-virtual {p0}, Lcom/localytics/android/ManifestHandler;->upload()V

    .line 54
    const-string v0, "Manifest upload called"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 56
    :cond_0
    return-void
.end method
