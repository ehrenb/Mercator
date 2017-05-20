.class Lcom/localytics/android/InboxManager;
.super Lcom/localytics/android/BaseMarketingManager;
.source "InboxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/InboxManager$ManifestHolder;
    }
.end annotation


# static fields
.field private static final INBOX_INFO_PROJECTION:[Ljava/lang/String;

.field private static final SELECTION_BY_CAMPAIGN_ROW_ID:Ljava/lang/String;


# instance fields
.field protected mCreativeManager:Lcom/localytics/android/CreativeManager;

.field private final mDisplayingInboxFragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRefreshTimeMillis:J

.field private mManifestToProcess:Lcom/localytics/android/InboxManager$ManifestHolder;

.field private mMarketingHandler:Lcom/localytics/android/MarketingHandler;

.field private mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

.field private final mRefreshLock:Ljava/lang/Object;

.field private mThrottleMillis:J

.field protected mThumbnailManager:Lcom/localytics/android/ThumbnailManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/InboxManager;->SELECTION_BY_CAMPAIGN_ROW_ID:Ljava/lang/String;

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "campaign_id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "version"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "creative_location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "received_date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/localytics/android/InboxManager;->INBOX_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/localytics/android/CreativeManager;

    invoke-direct {v0, p1, p2}, Lcom/localytics/android/CreativeManager;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;)V

    new-instance v1, Lcom/localytics/android/ThumbnailManager;

    invoke-direct {v1, p1, p2}, Lcom/localytics/android/ThumbnailManager;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/localytics/android/InboxManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/CreativeManager;Lcom/localytics/android/ThumbnailManager;)V

    .line 61
    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/CreativeManager;Lcom/localytics/android/ThumbnailManager;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/localytics/android/BaseMarketingManager;-><init>(Lcom/localytics/android/LocalyticsDao;)V

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/InboxManager;->mManifestToProcess:Lcom/localytics/android/InboxManager$ManifestHolder;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/InboxManager;->mRefreshLock:Ljava/lang/Object;

    .line 43
    const-wide/32 v0, 0x3a980

    iput-wide v0, p0, Lcom/localytics/android/InboxManager;->mThrottleMillis:J

    .line 68
    iput-object p2, p0, Lcom/localytics/android/InboxManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    .line 69
    iput-object p3, p0, Lcom/localytics/android/InboxManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    .line 70
    iput-object p4, p0, Lcom/localytics/android/InboxManager;->mThumbnailManager:Lcom/localytics/android/ThumbnailManager;

    .line 71
    return-void
.end method

.method private _inboxOnlyMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 219
    if-eqz p1, :cond_0

    .line 221
    const-string v1, "inboxes"

    const-string v2, "inboxes"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    return-object v0
.end method

.method private _updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;)V
    .locals 7

    .prologue
    .line 228
    const-string v0, "_id"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    .line 229
    const-string v1, "creative_location"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    iget-object v3, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v4, v5, v3}, Lcom/localytics/android/CreativeManager;->getInboxLocalHtmlLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    int-to-long v4, v0

    const-string v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    iget-object v6, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v4, v5, v3, v6}, Lcom/localytics/android/CreativeManager;->getInboxLocalFileURL(JZLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v3

    .line 234
    const-string v4, "creative_url"

    invoke-virtual {p1, v4, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v4, "html_url"

    invoke-virtual {p1, v4, v2}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v2, "base_path"

    int-to-long v4, v0

    iget-object v6, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v4, v5, v6}, Lcom/localytics/android/CreativeManager;->getInboxUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v2, "zip_name"

    const-string v4, "inbox_creative_assets_%d.zip"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v0, "local_file_location"

    invoke-virtual {p1, v0, v3}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v0, "download_url"

    invoke-virtual {p1, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/InboxManager;)Lcom/localytics/android/InboxManager$ManifestHolder;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mManifestToProcess:Lcom/localytics/android/InboxManager$ManifestHolder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/localytics/android/InboxManager;)Lcom/localytics/android/MarketingHandler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    return-object v0
.end method


# virtual methods
.method _downloadInboxThumbnails(Ljava/util/List;)V
    .locals 8
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
    .line 651
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 652
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/InboxCampaign;

    .line 654
    invoke-virtual {v0}, Lcom/localytics/android/InboxCampaign;->hasThumbnail()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/localytics/android/InboxCampaign;->getLocalThumbnailUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 656
    invoke-virtual {v0}, Lcom/localytics/android/InboxCampaign;->getLocalThumbnailUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 657
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 659
    new-instance v4, Lcom/localytics/android/MarketingMessage;

    invoke-virtual {v0}, Lcom/localytics/android/InboxCampaign;->getWebViewAttributes()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/localytics/android/MarketingMessage;-><init>(Ljava/util/Map;)V

    .line 660
    const-string v5, "campaign_id"

    invoke-virtual {v0}, Lcom/localytics/android/InboxCampaign;->getCampaignId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string v5, "download_url"

    invoke-virtual {v0}, Lcom/localytics/android/InboxCampaign;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v0, "local_file_location"

    invoke-virtual {v4, v0, v3}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 667
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 669
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mThumbnailManager:Lcom/localytics/android/ThumbnailManager;

    invoke-virtual {v0, v1}, Lcom/localytics/android/ThumbnailManager;->downloadThumbnails(Ljava/util/List;)V

    .line 671
    :cond_2
    return-void
.end method

.method _getAttributes(J)Ljava/util/Map;
    .locals 9
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

    .line 549
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "inbox_campaign_attributes"

    const/4 v2, 0x0

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v8, "inbox_id_ref"

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 559
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    const-string v0, "key"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 569
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 571
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 569
    :cond_1
    if-eqz v1, :cond_2

    .line 571
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 575
    :cond_2
    return-object v7

    .line 569
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method _getInboxCampaigns()Ljava/util/List;
    .locals 14
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 438
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "inbox_campaigns"

    const/4 v2, 0x0

    const-string v3, "%s > ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v10, "expiration"

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v10}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const-string v5, "%s DESC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "sort_order"

    aput-object v12, v10, v11

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 449
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 452
    new-instance v0, Lcom/localytics/android/InboxCampaign$Builder;

    invoke-direct {v0}, Lcom/localytics/android/InboxCampaign$Builder;-><init>()V

    const-string v4, "campaign_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/localytics/android/InboxCampaign$Builder;->setCampaignId(J)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/InboxCampaign$Builder;->setInboxId(J)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v0

    const-string v4, "rule_name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/localytics/android/InboxCampaign$Builder;->setRuleName(Ljava/lang/String;)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v0

    const-string v4, "listing_title"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/localytics/android/InboxCampaign$Builder;->setTitle(Ljava/lang/String;)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v0

    const-string v4, "listing_summary"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/localytics/android/InboxCampaign$Builder;->setSummary(Ljava/lang/String;)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v0

    const-string v4, "sort_order"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/localytics/android/InboxCampaign$Builder;->setSortOrder(J)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v4

    const-string v0, "read"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v7

    :goto_1
    invoke-virtual {v4, v0}, Lcom/localytics/android/InboxCampaign$Builder;->setRead(Z)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v0

    const-string v4, "ab_test"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/localytics/android/InboxCampaign$Builder;->setAbTest(Ljava/lang/String;)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v0

    const-string v4, "version"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/localytics/android/InboxCampaign$Builder;->setVersion(J)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v0

    const-string v4, "received_date"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/localytics/android/InboxCampaign$Builder;->setReceivedDate(J)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v0

    const-string v4, "schema_version"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/localytics/android/InboxCampaign$Builder;->setSchemaVersion(J)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, Lcom/localytics/android/InboxManager;->_getAttributes(J)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/localytics/android/InboxCampaign$Builder;->setAttributes(Ljava/util/Map;)Lcom/localytics/android/InboxCampaign$Builder;

    move-result-object v0

    .line 466
    const-string v4, "thumbnail_location"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 467
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 469
    iget-object v5, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v2, v3, v5}, Lcom/localytics/android/ThumbnailManager;->getInboxLocalThumbnailLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v5

    .line 470
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/localytics/android/InboxCampaign$Builder;->setThumbnailUri(Landroid/net/Uri;)Lcom/localytics/android/InboxCampaign$Builder;

    .line 471
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/localytics/android/InboxCampaign$Builder;->setLocalThumbnailUri(Landroid/net/Uri;)Lcom/localytics/android/InboxCampaign$Builder;

    .line 474
    :cond_0
    const-string v4, "creative_location"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 475
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 477
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/localytics/android/InboxCampaign$Builder;->setCreativeUri(Landroid/net/Uri;)Lcom/localytics/android/InboxCampaign$Builder;

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v2, v3, v6}, Lcom/localytics/android/CreativeManager;->getInboxLocalHtmlLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/localytics/android/InboxCampaign$Builder;->setLocalCreativeUri(Landroid/net/Uri;)Lcom/localytics/android/InboxCampaign$Builder;

    .line 480
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 482
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v2, v3, v10}, Lcom/localytics/android/CreativeManager;->getInboxLocalHtmlLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 483
    const-string v10, ".zip"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    iget-object v11, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v2, v3, v10, v11}, Lcom/localytics/android/CreativeManager;->getInboxLocalFileURL(JZLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v10

    .line 484
    const-string v11, "creative_url"

    invoke-interface {v5, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v4, "html_url"

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v4, "base_path"

    iget-object v6, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v2, v3, v6}, Lcom/localytics/android/CreativeManager;->getInboxUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v4, "zip_name"

    const-string v6, "inbox_creative_assets_%d.zip"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v2, "local_file_location"

    invoke-interface {v5, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-virtual {v0, v5}, Lcom/localytics/android/InboxCampaign$Builder;->setWebViewAttributes(Ljava/util/Map;)Lcom/localytics/android/InboxCampaign$Builder;

    .line 492
    :cond_1
    invoke-virtual {v0}, Lcom/localytics/android/InboxCampaign$Builder;->build()Lcom/localytics/android/InboxCampaign;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 497
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 499
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v0, v8

    .line 452
    goto/16 :goto_1

    .line 497
    :cond_4
    if-eqz v1, :cond_5

    .line 499
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 503
    :cond_5
    return-object v9

    .line 497
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method _getInboxCampaignsAsync(Lcom/localytics/android/InboxRefreshListener;)V
    .locals 3

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/localytics/android/InboxManager;->_getInboxCampaigns()Ljava/util/List;

    move-result-object v0

    .line 536
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 537
    new-instance v2, Lcom/localytics/android/InboxManager$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/localytics/android/InboxManager$3;-><init>(Lcom/localytics/android/InboxManager;Lcom/localytics/android/InboxRefreshListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 545
    return-void
.end method

.method _getInboxCampaignsUnreadCount()I
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 508
    const/4 v1, 0x0

    .line 511
    :try_start_0
    iget-object v2, p0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v2, v2, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT COUNT(*) FROM %s WHERE %s > ? AND %s = 0"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "inbox_campaigns"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "expiration"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "read"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 517
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 524
    if-eqz v1, :cond_0

    .line 526
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_0
    :goto_0
    return v0

    .line 524
    :cond_1
    if-eqz v1, :cond_0

    .line 526
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 526
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method _manifestProcessingAllowed()Z
    .locals 2

    .prologue
    .line 245
    iget-object v1, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    invoke-virtual {v0}, Lcom/localytics/android/CreativeManager;->hasPendingDownloads()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method _priorityDownloadCreative(Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V
    .locals 4

    .prologue
    .line 675
    new-instance v0, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v0}, Lcom/localytics/android/MarketingMessage;-><init>()V

    .line 676
    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/localytics/android/InboxCampaign;->getInboxId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const-string v1, "campaign_id"

    invoke-virtual {p1}, Lcom/localytics/android/InboxCampaign;->getCampaignId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-virtual {p1}, Lcom/localytics/android/InboxCampaign;->getCreativeUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 679
    const-string v2, "creative_location"

    invoke-virtual {v0, v2, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-direct {p0, v0}, Lcom/localytics/android/InboxManager;->_updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;)V

    .line 682
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 683
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    invoke-virtual {v0, v1, p2}, Lcom/localytics/android/CreativeManager;->priorityDownloadCreatives(Ljava/util/List;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V

    .line 685
    return-void
.end method

.method _processMarketingObject(ZLjava/util/Map;Ljava/util/Map;)V
    .locals 12
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
    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/localytics/android/InboxManager;->_manifestProcessingAllowed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 95
    iput-object v2, p0, Lcom/localytics/android/InboxManager;->mManifestToProcess:Lcom/localytics/android/InboxManager$ManifestHolder;

    .line 98
    if-eqz p1, :cond_b

    .line 100
    if-eqz p3, :cond_0

    .line 102
    :try_start_0
    const-string v0, "inbox_throttle"

    invoke-static {p3, v0}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    .line 103
    cmp-long v3, v0, v10

    if-lez v3, :cond_0

    .line 105
    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/localytics/android/InboxManager;->mThrottleMillis:J

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/localytics/android/InboxManager;->_queryInboxCampaignInfo()Ljava/util/HashMap;

    move-result-object v3

    .line 110
    if-eqz p2, :cond_d

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    const-string v0, "inboxes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_2

    .line 117
    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 120
    new-instance v5, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v5, v0}, Lcom/localytics/android/MarketingMessage;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 184
    :try_start_1
    const-string v1, "JSONException"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    iget-object v1, p0, Lcom/localytics/android/InboxManager;->mRefreshLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_2
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/localytics/android/InboxManager;->_getInboxCampaigns()Ljava/util/List;

    move-result-object v0

    .line 193
    iget-object v2, p0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    .line 194
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    new-instance v4, Lcom/localytics/android/InboxManager$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/localytics/android/InboxManager$2;-><init>(Lcom/localytics/android/InboxManager;Lcom/localytics/android/InboxRefreshListener;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    .line 205
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 213
    :goto_1
    return-void

    .line 125
    :cond_2
    :try_start_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v3, v0}, Lcom/localytics/android/InboxManager;->_removeDeactivatedInbox(Ljava/util/Map;Ljava/util/Set;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    iget-object v1, p0, Lcom/localytics/android/InboxManager;->mRefreshLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_4
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/localytics/android/InboxManager;->_getInboxCampaigns()Ljava/util/List;

    move-result-object v0

    .line 193
    iget-object v2, p0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    .line 194
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    new-instance v4, Lcom/localytics/android/InboxManager$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/localytics/android/InboxManager$2;-><init>(Lcom/localytics/android/InboxManager;Lcom/localytics/android/InboxRefreshListener;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    .line 205
    :cond_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 129
    :cond_4
    :try_start_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 130
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 132
    const-string v6, "campaign_id"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 188
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/localytics/android/InboxManager;->mRefreshLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_6
    iget-object v2, p0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    if-eqz v2, :cond_5

    .line 192
    invoke-virtual {p0}, Lcom/localytics/android/InboxManager;->_getInboxCampaigns()Ljava/util/List;

    move-result-object v2

    .line 193
    iget-object v3, p0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    .line 194
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    new-instance v5, Lcom/localytics/android/InboxManager$2;

    invoke-direct {v5, p0, v3, v2}, Lcom/localytics/android/InboxManager$2;-><init>(Lcom/localytics/android/InboxManager;Lcom/localytics/android/InboxRefreshListener;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    .line 205
    :cond_5
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    .line 135
    :cond_6
    :try_start_7
    invoke-virtual {p0, v3, v4}, Lcom/localytics/android/InboxManager;->_removeDeactivatedInbox(Ljava/util/Map;Ljava/util/Set;)V

    .line 137
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 142
    invoke-virtual {p0, v0, v3, p3}, Lcom/localytics/android/InboxManager;->_saveInboxCampaign(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)J

    move-result-wide v6

    .line 143
    cmp-long v1, v6, v10

    if-lez v1, :cond_7

    .line 145
    check-cast v0, Lcom/localytics/android/MarketingMessage;

    .line 146
    const-string v1, "campaign_id"

    invoke-static {v0, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 147
    if-nez v1, :cond_8

    move-object v1, v2

    .line 148
    :goto_4
    const-string v8, "creative_location"

    invoke-static {v0, v8}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 149
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 151
    const-string v1, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-direct {p0, v0}, Lcom/localytics/android/InboxManager;->_updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;)V

    .line 153
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 147
    :cond_8
    const-string v8, "creative_location"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 158
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 160
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    new-instance v1, Lcom/localytics/android/InboxManager$1;

    invoke-direct {v1, p0}, Lcom/localytics/android/InboxManager$1;-><init>(Lcom/localytics/android/InboxManager;)V

    invoke-virtual {v0, v4, v1}, Lcom/localytics/android/CreativeManager;->downloadCreatives(Ljava/util/List;Lcom/localytics/android/CreativeManager$LastDownloadedCallback;)V

    .line 179
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 188
    :cond_b
    iget-object v1, p0, Lcom/localytics/android/InboxManager;->mRefreshLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_8
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    if-eqz v0, :cond_c

    .line 192
    invoke-virtual {p0}, Lcom/localytics/android/InboxManager;->_getInboxCampaigns()Ljava/util/List;

    move-result-object v0

    .line 193
    iget-object v2, p0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    .line 194
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    new-instance v4, Lcom/localytics/android/InboxManager$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/localytics/android/InboxManager$2;-><init>(Lcom/localytics/android/InboxManager;Lcom/localytics/android/InboxRefreshListener;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    .line 205
    :cond_c
    monitor-exit v1

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 176
    :cond_d
    :try_start_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v3, v0}, Lcom/localytics/android/InboxManager;->_removeDeactivatedInbox(Ljava/util/Map;Ljava/util/Set;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    .line 205
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    .line 211
    :cond_e
    new-instance v0, Lcom/localytics/android/InboxManager$ManifestHolder;

    invoke-direct {p0, p2}, Lcom/localytics/android/InboxManager;->_inboxOnlyMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3}, Lcom/localytics/android/InboxManager$ManifestHolder;-><init>(ZLjava/util/Map;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/localytics/android/InboxManager;->mManifestToProcess:Lcom/localytics/android/InboxManager$ManifestHolder;

    goto/16 :goto_1
.end method

.method _queryInboxCampaignInfo()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 288
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "inbox_campaigns"

    sget-object v2, Lcom/localytics/android/InboxManager;->INBOX_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 293
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 298
    const-string v2, "campaign_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 299
    const-string v3, "version"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 300
    const-string v4, "read"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 301
    const-string v5, "received_date"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 302
    const-string v5, "creative_location"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 304
    new-instance v6, Landroid/content/ContentValues;

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v10

    invoke-direct {v6, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 305
    const-string v10, "_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string v0, "campaign_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string v0, "version"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const-string v0, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    const-string v0, "received_date"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 310
    const-string v0, "creative_location"

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 316
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 318
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 316
    :cond_1
    if-eqz v1, :cond_2

    .line 318
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_2
    return-object v7

    .line 316
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method _removeDeactivatedInbox(Ljava/util/Map;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 254
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 255
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 256
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 258
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 259
    iget-object v2, p0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "inbox_campaigns"

    sget-object v4, Lcom/localytics/android/InboxManager;->SELECTION_BY_CAMPAIGN_ROW_ID:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 260
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/localytics/android/InboxManager;->_removeInboxAssetFiles(J)V

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method _removeInboxAssetFiles(J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 266
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {p1, p2, v3, v0}, Lcom/localytics/android/CreativeManager;->getInboxLocalFileURL(JZLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {p1, p2, v1}, Lcom/localytics/android/CreativeManager;->getInboxUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    .line 270
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 273
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    const-string v1, "Delete %s failed."

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {p1, p2, v0}, Lcom/localytics/android/ThumbnailManager;->getInboxLocalThumbnailLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    const-string v1, "Delete %s successfully."

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 284
    :cond_1
    return-void
.end method

.method _saveInboxCampaign(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)J
    .locals 12
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
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 327
    new-instance v1, Landroid/content/ContentValues;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 328
    const-string v0, "campaign_id"

    const-string v4, "campaign_id"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v0, "expiration"

    const-string v4, "expiration"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    const-string v0, "version"

    const-string v4, "version"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v0, "ab_test"

    const-string v4, "ab"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "rule_name"

    const-string v4, "rule_name"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "listing_title"

    const-string v4, "listing_title"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "listing_summary"

    const-string v4, "listing_summary"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "sort_order"

    const-string v4, "sort_order"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    const-string v0, "thumbnail_location"

    const-string v4, "thumbnail_location"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "creative_location"

    const-string v4, "creative_location"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "received_date"

    iget-object v4, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    if-eqz p3, :cond_0

    .line 342
    const-string v0, "schema_version"

    invoke-static {p3, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    .line 343
    if-lez v0, :cond_0

    .line 345
    const-string v4, "schema_version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    :cond_0
    invoke-virtual {p0, v1}, Lcom/localytics/android/InboxManager;->_validateInboxData(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    const-string v0, "Inbox data is invalid:\n%s"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v10

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    move-wide v0, v2

    .line 391
    :goto_0
    return-wide v0

    .line 355
    :cond_1
    const-string v0, "campaign_id"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    .line 357
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 358
    if-eqz v0, :cond_3

    .line 360
    const-string v6, "Existing inbox already exists for this campaign\n\t campaignID = %d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 362
    const-string v6, "version"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 363
    const-string v8, "version"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 364
    cmp-long v8, v6, v8

    if-ltz v8, :cond_2

    .line 366
    const-string v0, "No update needed. Campaign version has not been updated\n\t version: %d"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 367
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 371
    :cond_2
    const-string v6, "_id"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    .line 374
    invoke-virtual {p0, v6, v7}, Lcom/localytics/android/InboxManager;->_removeInboxAssetFiles(J)V

    .line 377
    const-string v6, "read"

    const-string v7, "read"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    const-string v6, "received_date"

    const-string v7, "received_date"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v6, "inbox_campaigns"

    invoke-virtual {v0, v6, v1}, Lcom/localytics/android/BaseProvider;->replace(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-nez v6, :cond_4

    .line 384
    const-string v0, "Failed to replace inbox campaign %d"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    move-wide v0, v2

    .line 385
    goto/16 :goto_0

    .line 389
    :cond_4
    const-string v2, "attributes"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeMapFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/localytics/android/InboxManager;->_saveInboxCampaignAttributes(JLjava/util/Map;)V

    goto/16 :goto_0
.end method

.method _saveInboxCampaignAttributes(JLjava/util/Map;)V
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

    .line 396
    if-eqz p3, :cond_1

    .line 400
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

    .line 402
    new-instance v2, Landroid/content/ContentValues;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 403
    const-string v3, "key"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v3, "value"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v0, "inbox_id_ref"

    long-to-int v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "inbox_campaign_attributes"

    invoke-virtual {v0, v3, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 408
    const-string v0, "Failed to insert attributes for inbox campaign row id %d"

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

    .line 412
    :catch_0
    move-exception v0

    .line 414
    const-string v0, "Cannot parse inbox attributes data: %s"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 417
    :cond_1
    return-void
.end method

.method _setInboxCampaignRead(JZ)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 580
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 581
    const-string v3, "read"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 582
    iget-object v3, p0, Lcom/localytics/android/InboxManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v4, "inbox_campaigns"

    const-string v5, "%s = ?"

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "campaign_id"

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 589
    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method _validateInboxData(Landroid/content/ContentValues;)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 421
    const-string v0, "campaign_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 422
    const-string v1, "expiration"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 423
    const-string v2, "version"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 424
    const-string v3, "sort_order"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 425
    const-string v4, "rule_name"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 426
    const-string v5, "listing_title"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 427
    iget-object v6, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 429
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v8, v10

    if-lez v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v8, v10

    if-lez v0, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v10

    if-ltz v0, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gtz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canRefresh()Z
    .locals 4

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/localytics/android/InboxManager;->mLastRefreshTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/localytics/android/InboxManager;->mLastRefreshTimeMillis:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/localytics/android/InboxManager;->mThrottleMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V
    .locals 3

    .prologue
    .line 594
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Lcom/localytics/android/InboxDetailFragment;

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p1, Lcom/localytics/android/InboxDetailSupportFragment;

    if-eqz v0, :cond_3

    .line 597
    :cond_1
    iget-object v1, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    monitor-enter v1

    .line 599
    if-eqz p2, :cond_4

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_2
    :goto_0
    monitor-exit v1

    .line 623
    :cond_3
    return-void

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 606
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    new-instance v2, Lcom/localytics/android/InboxManager$4;

    invoke-direct {v2, p0}, Lcom/localytics/android/InboxManager$4;-><init>(Lcom/localytics/android/InboxManager;)V

    invoke-virtual {v0, v2}, Lcom/localytics/android/MarketingHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setInboxRefreshCallback(Lcom/localytics/android/InboxRefreshListener;)V
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lcom/localytics/android/InboxManager;->mRefreshLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iput-object p1, p0, Lcom/localytics/android/InboxManager;->mRefreshCallback:Lcom/localytics/android/InboxRefreshListener;

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setLastRefreshTimeMillis(J)V
    .locals 1

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/localytics/android/InboxManager;->mLastRefreshTimeMillis:J

    .line 81
    return-void
.end method

.method tagDismissForInboxDetailFragments()V
    .locals 6

    .prologue
    .line 627
    iget-object v2, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    monitor-enter v2

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InboxManager;->mDisplayingInboxFragments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 631
    const/4 v1, 0x0

    .line 632
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    instance-of v4, v0, Lcom/localytics/android/InboxDetailFragment;

    if-eqz v4, :cond_1

    .line 634
    check-cast v0, Lcom/localytics/android/InboxDetailFragment;

    invoke-virtual {v0}, Lcom/localytics/android/InboxDetailFragment;->getWebViewManager()Lcom/localytics/android/MarketingWebViewManager;

    move-result-object v0

    .line 641
    :goto_1
    if-eqz v0, :cond_0

    .line 643
    const-string v1, "X"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingWebViewManager;->tagMarketingActionEventWithAction(Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 636
    :cond_1
    :try_start_1
    instance-of v4, v0, Lcom/localytics/android/InboxDetailSupportFragment;

    if-eqz v4, :cond_3

    .line 638
    check-cast v0, Lcom/localytics/android/InboxDetailSupportFragment;

    invoke-virtual {v0}, Lcom/localytics/android/InboxDetailSupportFragment;->getWebViewManager()Lcom/localytics/android/MarketingWebViewManager;

    move-result-object v0

    goto :goto_1

    .line 646
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 647
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
