.class Lcom/localytics/android/MarketingHandler;
.super Lcom/localytics/android/BaseHandler;
.source "MarketingHandler.java"

# interfaces
.implements Lcom/localytics/android/AnalyticsListener;
.implements Lcom/localytics/android/LocationListener;
.implements Lcom/localytics/android/ManifestListener;


# static fields
.field private static final MESSAGE_DOWNLOAD_INBOX_THUMBNAILS:I = 0xd1

.field private static final MESSAGE_GET_INBOX_CAMPAIGNS_ASYNC:I = 0xd3

.field private static final MESSAGE_HANDLE_PUSH_RECEIVED:I = 0xcb

.field private static final MESSAGE_IN_APP_MESSAGE_TRIGGER:I = 0xc9

.field private static final MESSAGE_MANIFEST_DOWNLOADED:I = 0xcf

.field private static final MESSAGE_PRIORITY_DOWNLOAD_CREATIVE:I = 0xd2

.field private static final MESSAGE_SET_INBOX_CAMPAIGN_READ:I = 0xd0

.field private static final MESSAGE_SET_IN_APP_MESSAGE_AS_NOT_DISPLAYED:I = 0xcc

.field private static final MESSAGE_SHOW_IN_APP_MESSAGES_TEST:I = 0xca

.field private static final MESSAGE_TAG_PUSH_RECEIVED_EVENT:I = 0xcd

.field private static final MESSAGE_TRIGGER_REGIONS:I = 0xd4

.field private static final MESSAGE_WILL_DOWNLOAD_MANIFEST:I = 0xce


# instance fields
.field private lastMarketingMessagesHash:I

.field private mHasRunSessionStartRunnable:Z

.field protected mInAppManager:Lcom/localytics/android/InAppManager;

.field protected mInboxManager:Lcom/localytics/android/InboxManager;

.field protected final mListeners:Lcom/localytics/android/ListenersSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/localytics/android/ListenersSet",
            "<",
            "Lcom/localytics/android/MessagingListener;",
            ">;"
        }
    .end annotation
.end field

.field mManifestToProcess:Lcom/localytics/android/InAppManager$ManifestHolder;

.field protected mPlacesManager:Lcom/localytics/android/PlacesManager;

.field protected mPushManager:Lcom/localytics/android/PushManager;

.field private mSessionStartRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BaseHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/localytics/android/MarketingHandler;->lastMarketingMessagesHash:I

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mSessionStartRunnable:Ljava/lang/Runnable;

    .line 124
    const-string v0, "In-app"

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->siloName:Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/localytics/android/ListenersSet;

    const-class v1, Lcom/localytics/android/MessagingListener;

    invoke-direct {v0, v1}, Lcom/localytics/android/ListenersSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/MarketingHandler;->doesRetry:Z

    .line 128
    new-instance v0, Lcom/localytics/android/InAppManager;

    invoke-direct {v0, p1, p0}, Lcom/localytics/android/InAppManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    .line 129
    new-instance v0, Lcom/localytics/android/PushManager;

    invoke-direct {v0, p1, p0}, Lcom/localytics/android/PushManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mPushManager:Lcom/localytics/android/PushManager;

    .line 130
    new-instance v0, Lcom/localytics/android/InboxManager;

    invoke-direct {v0, p1, p0}, Lcom/localytics/android/InboxManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    .line 131
    new-instance v0, Lcom/localytics/android/PlacesManager;

    invoke-direct {v0, p1, p0}, Lcom/localytics/android/PlacesManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mPlacesManager:Lcom/localytics/android/PlacesManager;

    .line 134
    invoke-interface {p1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingHandler;->_createLocalyticsDirectory(Landroid/content/Context;)Z

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 137
    return-void
.end method

.method private _createLocalyticsDirectory(Landroid/content/Context;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->isUsingNewCreativeLocation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :goto_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, ".localytics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 172
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 180
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/localytics/android/MarketingHandler;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/localytics/android/MarketingHandler;->mHasRunSessionStartRunnable:Z

    return p1
.end method


# virtual methods
.method protected _deleteUploadedData(I)V
    .locals 0

    .prologue
    .line 442
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
    .line 421
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 422
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    return-object v0
.end method

.method protected _getMaxRowToUpload()I
    .locals 1

    .prologue
    .line 415
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
    .line 429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 431
    new-instance v0, Lcom/localytics/android/MarketingDownloader;

    sget-object v1, Lcom/localytics/android/BaseUploadThread$UploadType;->MARKETING:Lcom/localytics/android/BaseUploadThread$UploadType;

    iget-object v5, p0, Lcom/localytics/android/MarketingHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/MarketingDownloader;-><init>(Lcom/localytics/android/BaseUploadThread$UploadType;Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    .line 435
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _init()V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Lcom/localytics/android/MarketingProvider;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->siloName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/MarketingHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/MarketingProvider;-><init>(Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    .line 186
    invoke-virtual {p0}, Lcom/localytics/android/MarketingHandler;->_setProviderForManagers()V

    .line 187
    return-void
.end method

.method protected _onUploadCompleted(ZLjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 447
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    invoke-virtual {v0}, Lcom/localytics/android/InAppManager;->_manifestProcessingAllowed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    iput-object v1, p0, Lcom/localytics/android/MarketingHandler;->mManifestToProcess:Lcom/localytics/android/InAppManager$ManifestHolder;

    .line 452
    if-eqz p1, :cond_0

    .line 454
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 457
    iget v0, p0, Lcom/localytics/android/MarketingHandler;->lastMarketingMessagesHash:I

    if-eq v1, v0, :cond_0

    .line 460
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 461
    const-string v0, "config"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 462
    iget-object v3, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    invoke-virtual {v3, v2, v0}, Lcom/localytics/android/InAppManager;->_processMarketingObject(Ljava/util/Map;Ljava/util/Map;)V

    .line 464
    iput v1, p0, Lcom/localytics/android/MarketingHandler;->lastMarketingMessagesHash:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    invoke-virtual {v0}, Lcom/localytics/android/InAppManager;->_handleTestCampaigns()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/localytics/android/MarketingHandler;->mHasRunSessionStartRunnable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mSessionStartRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mSessionStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 484
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mSessionStartRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 491
    :cond_1
    :goto_1
    return-void

    .line 470
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/InAppManager;->_processMarketingObject(Ljava/util/Map;Ljava/util/Map;)V

    .line 472
    const/4 v0, -0x1

    iput v0, p0, Lcom/localytics/android/MarketingHandler;->lastMarketingMessagesHash:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 478
    const-string v1, "JSONException"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 489
    :cond_3
    new-instance v0, Lcom/localytics/android/InAppManager$ManifestHolder;

    invoke-direct {v0, p1, p2}, Lcom/localytics/android/InAppManager$ManifestHolder;-><init>(ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mManifestToProcess:Lcom/localytics/android/InAppManager$ManifestHolder;

    goto :goto_1
.end method

.method protected _processPendingManifest()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mManifestToProcess:Lcom/localytics/android/InAppManager$ManifestHolder;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mManifestToProcess:Lcom/localytics/android/InAppManager$ManifestHolder;

    iget-boolean v0, v0, Lcom/localytics/android/InAppManager$ManifestHolder;->successful:Z

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mManifestToProcess:Lcom/localytics/android/InAppManager$ManifestHolder;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$ManifestHolder;->manifest:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->_onUploadCompleted(ZLjava/lang/String;)V

    .line 405
    :cond_0
    return-void
.end method

.method protected _setProviderForManagers()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0, v1}, Lcom/localytics/android/InAppManager;->setProvider(Lcom/localytics/android/BaseProvider;)V

    .line 192
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0, v1}, Lcom/localytics/android/InboxManager;->setProvider(Lcom/localytics/android/BaseProvider;)V

    .line 193
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mPushManager:Lcom/localytics/android/PushManager;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0, v1}, Lcom/localytics/android/PushManager;->setProvider(Lcom/localytics/android/BaseProvider;)V

    .line 194
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mPlacesManager:Lcom/localytics/android/PlacesManager;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0, v1}, Lcom/localytics/android/PlacesManager;->setProvider(Lcom/localytics/android/BaseProvider;)V

    .line 195
    return-void
.end method

.method addListener(Lcom/localytics/android/MessagingListener;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/ListenersSet;->add(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method canRefreshInbox()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    invoke-virtual {v0}, Lcom/localytics/android/InboxManager;->canRefresh()Z

    move-result v0

    return v0
.end method

.method dismissCurrentInAppMessage()V
    .locals 2

    .prologue
    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    invoke-virtual {v0}, Lcom/localytics/android/InAppManager;->dismissCurrentInAppMessage()V

    .line 213
    :cond_0
    return-void
.end method

.method displayInAppMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
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
    const/16 v5, 0xc9

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 242
    const-string v0, "open"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/4 v1, 0x0

    aput-object v1, v0, v3

    invoke-virtual {p0, v5, v0}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    invoke-virtual {p0, v5, v0}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method downloadInboxThumbnails(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    const/16 v0, 0xd1

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 392
    return-void
.end method

.method getInAppDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    .locals 2

    .prologue
    .line 310
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 312
    invoke-static {}, Lcom/localytics/android/InAppDialogFragment;->getInAppDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getInboxCampaigns()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Lcom/localytics/android/MarketingHandler$2;

    invoke-direct {v0, p0}, Lcom/localytics/android/MarketingHandler$2;-><init>(Lcom/localytics/android/MarketingHandler;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getInboxCampaignsAsync(Lcom/localytics/android/InboxRefreshListener;)V
    .locals 1

    .prologue
    .line 366
    const/16 v0, 0xd3

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 367
    return-void
.end method

.method getInboxCampaignsUnreadCount()I
    .locals 1

    .prologue
    .line 354
    new-instance v0, Lcom/localytics/android/MarketingHandler$3;

    invoke-direct {v0, p0}, Lcom/localytics/android/MarketingHandler$3;-><init>(Lcom/localytics/android/MarketingHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->getInt(Ljava/util/concurrent/Callable;)I

    move-result v0

    return v0
.end method

.method protected handleMessageExtended(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 496
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 724
    invoke-super {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessageExtended(Landroid/os/Message;)V

    .line 728
    :goto_0
    return-void

    .line 500
    :pswitch_0
    const-string v0, "In-app handler received MESSAGE_INAPP_TRIGGER"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 502
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 504
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    .line 506
    aget-object v0, v0, v4

    check-cast v0, Ljava/util/Map;

    .line 508
    new-instance v2, Lcom/localytics/android/MarketingHandler$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/localytics/android/MarketingHandler$4;-><init>(Lcom/localytics/android/MarketingHandler;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v2}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 520
    :pswitch_1
    const-string v0, "In-app handler received MESSAGE_SHOW_INAPP_TEST"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 526
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/localytics/android/MarketingHandler;->_upload(ZLjava/lang/String;)V

    .line 527
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/localytics/android/MarketingHandler$5;

    invoke-direct {v1, p0}, Lcom/localytics/android/MarketingHandler$5;-><init>(Lcom/localytics/android/MarketingHandler;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 546
    :pswitch_2
    const-string v0, "In-app handler received MESSAGE_HANDLE_PUSH_RECEIVED"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 548
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 550
    new-instance v1, Lcom/localytics/android/MarketingHandler$6;

    invoke-direct {v1, p0, v0}, Lcom/localytics/android/MarketingHandler$6;-><init>(Lcom/localytics/android/MarketingHandler;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 562
    :pswitch_3
    const-string v0, "Marketing handler received MESSAGE_SET_IN_APP_MESSAGE_AS_NOT_DISPLAYED"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 564
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 566
    new-instance v1, Lcom/localytics/android/MarketingHandler$7;

    invoke-direct {v1, p0, v0}, Lcom/localytics/android/MarketingHandler$7;-><init>(Lcom/localytics/android/MarketingHandler;I)V

    invoke-virtual {p0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 578
    :pswitch_4
    const-string v0, "Marketing handler received MESSAGE_TAG_PUSH_RECEIVED_EVENT"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 580
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 582
    new-instance v1, Lcom/localytics/android/MarketingHandler$8;

    invoke-direct {v1, p0, v0}, Lcom/localytics/android/MarketingHandler$8;-><init>(Lcom/localytics/android/MarketingHandler;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 594
    :pswitch_5
    const-string v0, "Marketing handler received MESSAGE_WILL_DOWNLOAD_MANIFEST"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 596
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 598
    new-instance v2, Lcom/localytics/android/MarketingHandler$9;

    invoke-direct {v2, p0, v0, v1}, Lcom/localytics/android/MarketingHandler$9;-><init>(Lcom/localytics/android/MarketingHandler;J)V

    invoke-virtual {p0, v2}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 610
    :pswitch_6
    const-string v0, "Marketing handler received MESSAGE_MANIFEST_DOWNLOADED"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 612
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 613
    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Map;

    .line 614
    aget-object v2, v0, v4

    check-cast v2, Ljava/util/Map;

    .line 615
    const/4 v3, 0x2

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Boolean;

    .line 617
    new-instance v3, Lcom/localytics/android/MarketingHandler$10;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/localytics/android/MarketingHandler$10;-><init>(Lcom/localytics/android/MarketingHandler;Ljava/lang/Boolean;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {p0, v3}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    .line 626
    iget-object v3, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v4, Lcom/localytics/android/MarketingHandler$11;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/localytics/android/MarketingHandler$11;-><init>(Lcom/localytics/android/MarketingHandler;Ljava/lang/Boolean;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 639
    :pswitch_7
    const-string v0, "Marketing handler received MESSAGE_SET_INBOX_CAMPAIGN_READ"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 641
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 642
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 643
    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 645
    new-instance v1, Lcom/localytics/android/MarketingHandler$12;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/localytics/android/MarketingHandler$12;-><init>(Lcom/localytics/android/MarketingHandler;JZ)V

    invoke-virtual {p0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 657
    :pswitch_8
    const-string v0, "Marketing handler received MESSAGE_DOWNLOAD_INBOX_THUMBNAILS"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 659
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 660
    new-instance v1, Lcom/localytics/android/MarketingHandler$13;

    invoke-direct {v1, p0, v0}, Lcom/localytics/android/MarketingHandler$13;-><init>(Lcom/localytics/android/MarketingHandler;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 672
    :pswitch_9
    const-string v0, "Marketing handler received MESSAGE_PRIORITY_DOWNLOAD_CREATIVE"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 674
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 675
    aget-object v1, v0, v1

    check-cast v1, Lcom/localytics/android/InboxCampaign;

    .line 676
    aget-object v0, v0, v4

    check-cast v0, Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    .line 678
    new-instance v2, Lcom/localytics/android/MarketingHandler$14;

    invoke-direct {v2, p0, v1, v0}, Lcom/localytics/android/MarketingHandler$14;-><init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V

    invoke-virtual {p0, v2}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 690
    :pswitch_a
    const-string v0, "Marketing handler received MESSAGE_GET_INBOX_CAMPAIGNS_ASYNC"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 692
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/localytics/android/InboxRefreshListener;

    .line 694
    new-instance v1, Lcom/localytics/android/MarketingHandler$15;

    invoke-direct {v1, p0, v0}, Lcom/localytics/android/MarketingHandler$15;-><init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/InboxRefreshListener;)V

    invoke-virtual {p0, v1}, Lcom/localytics/android/MarketingHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 706
    :pswitch_b
    const-string v0, "Marketing handler received MESSAGE_TRIGGER_REGIONS"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 708
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 709
    aget-object v1, v0, v1

    check-cast v1, Ljava/util/List;

    .line 710
    aget-object v0, v0, v4

    check-cast v0, Lcom/localytics/android/Region$Event;

    .line 712
    iget-object v2, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v3, Lcom/localytics/android/MarketingHandler$16;

    invoke-direct {v3, p0, v1, v0}, Lcom/localytics/android/MarketingHandler$16;-><init>(Lcom/localytics/android/MarketingHandler;Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    invoke-virtual {v2, v3}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method handleNotificationReceived(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 255
    const/16 v0, 0xcb

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 256
    return-void
.end method

.method handlePushNotificationOpened(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mPushManager:Lcom/localytics/android/PushManager;

    invoke-virtual {v0, p1}, Lcom/localytics/android/PushManager;->handlePushNotificationOpened(Landroid/content/Intent;)V

    .line 218
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mPlacesManager:Lcom/localytics/android/PlacesManager;

    invoke-virtual {v0, p1}, Lcom/localytics/android/PlacesManager;->handlePushNotificationOpened(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method handleTestModeIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 269
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "amp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/localytics/android/MarketingHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 278
    const-string v3, "[/]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 280
    array-length v3, v1

    if-eqz v3, :cond_0

    .line 285
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "testMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/localytics/android/LocalyticsDao;->setTestModeEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 304
    const-string v1, "Exception while handling test mode"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 291
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v1, v2

    const-string v3, "launch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    aget-object v2, v1, v2

    const-string v3, "push"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 293
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mPushManager:Lcom/localytics/android/PushManager;

    invoke-virtual {v0, v1}, Lcom/localytics/android/PushManager;->handlePushTestMode([Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_3
    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "deviceInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mPushManager:Lcom/localytics/android/PushManager;

    invoke-virtual {v1, v0}, Lcom/localytics/android/PushManager;->handleDeviceInfo(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public localyticsDidDownloadManifest(Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 804
    const/16 v0, 0xcf

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 805
    return-void
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
    .line 792
    invoke-virtual {p0, p1, p2}, Lcom/localytics/android/MarketingHandler;->displayInAppMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 793
    return-void
.end method

.method public localyticsDidTriggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .locals 3
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
    .line 815
    const/16 v0, 0xd4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 816
    return-void
.end method

.method public localyticsDidUpdateLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 810
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
    .line 821
    return-void
.end method

.method public localyticsSessionDidOpen(ZZZ)V
    .locals 4

    .prologue
    .line 739
    if-nez p3, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/localytics/android/MarketingHandler;->upload()V

    .line 744
    :cond_0
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/MarketingHandler;->mHasRunSessionStartRunnable:Z

    .line 747
    new-instance v0, Lcom/localytics/android/MarketingHandler$17;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/localytics/android/MarketingHandler$17;-><init>(Lcom/localytics/android/MarketingHandler;ZZZ)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mSessionStartRunnable:Ljava/lang/Runnable;

    .line 779
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mSessionStartRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/localytics/android/MarketingHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 781
    :cond_1
    return-void
.end method

.method public localyticsSessionWillClose()V
    .locals 0

    .prologue
    .line 787
    return-void
.end method

.method public localyticsSessionWillOpen(ZZZ)V
    .locals 0

    .prologue
    .line 734
    return-void
.end method

.method public localyticsWillDownloadManifest()V
    .locals 4

    .prologue
    .line 798
    const/16 v0, 0xce

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 799
    return-void
.end method

.method priorityDownloadCreative(Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V
    .locals 3

    .prologue
    .line 396
    const/16 v0, 0xd2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 397
    return-void
.end method

.method setDeveloperListener(Lcom/localytics/android/MessagingListener;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/ListenersSet;->setDevListener(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method setDismissButtonImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 336
    invoke-static {p1}, Lcom/localytics/android/InAppDialogFragment;->setDismissButtonImage(Landroid/graphics/Bitmap;)V

    .line 338
    :cond_0
    return-void
.end method

.method setFragmentManager(Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    invoke-virtual {v0, p1}, Lcom/localytics/android/InAppManager;->setFragmentManager(Landroid/app/FragmentManager;)V

    .line 205
    return-void
.end method

.method setInAppAsDisplayed(I)Z
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/localytics/android/MarketingHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/MarketingHandler$1;-><init>(Lcom/localytics/android/MarketingHandler;I)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->getBool(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method setInAppDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V
    .locals 2

    .prologue
    .line 319
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 321
    invoke-static {p1}, Lcom/localytics/android/InAppDialogFragment;->setInAppDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V

    .line 323
    :cond_0
    return-void
.end method

.method setInAppMessageAsNotDisplayed(I)V
    .locals 2

    .prologue
    .line 235
    const/16 v0, 0xcc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 236
    return-void
.end method

.method setInboxCampaignRead(JZ)V
    .locals 5

    .prologue
    .line 381
    const/16 v0, 0xd0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 382
    return-void
.end method

.method setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/InboxManager;->setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V

    .line 387
    return-void
.end method

.method setInboxRefreshCallback(Lcom/localytics/android/InboxRefreshListener;)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    invoke-virtual {v0, p1}, Lcom/localytics/android/InboxManager;->setInboxRefreshCallback(Lcom/localytics/android/InboxRefreshListener;)V

    .line 377
    return-void
.end method

.method showMarketingTest()V
    .locals 2

    .prologue
    .line 327
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 329
    const/16 v0, 0xca

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getCustomerIdFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 331
    :cond_0
    return-void
.end method

.method tagDismissForInboxDetailFragments()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    invoke-virtual {v0}, Lcom/localytics/android/InboxManager;->tagDismissForInboxDetailFragments()V

    .line 410
    return-void
.end method

.method tagPushReceivedEvent(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 260
    const/16 v0, 0xcd

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 261
    return-void
.end method
