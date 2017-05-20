.class Lcom/localytics/android/InAppManager;
.super Lcom/localytics/android/BaseMarketingManager;
.source "InAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/InAppManager$13;,
        Lcom/localytics/android/InAppManager$ManifestHolder;,
        Lcom/localytics/android/InAppManager$FrequencyCappingFilter;
    }
.end annotation


# static fields
.field private static final AUGMENTED_BLACKOUT_TIMES_RULE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final AUGMENTED_BLACKOUT_WEEKDAYS_RULE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATE_SDF:Ljava/text/SimpleDateFormat;

.field private static final DEFAULT_FREQUENCY_CAPPING_RULE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_FREQUENCY_CAPPING_RULE_CAMPAIGN_ID:I = -0x1

.field private static final GLOBAL_FREQUENCY_CAPPING_RULE_REQUIRED_KEYS:[Ljava/lang/String;

.field private static final INDIVIDUAL_FREQUENCY_CAPPING_RULE_REQUIRED_KEYS:[Ljava/lang/String;

.field private static final PROJECTION_IN_APP_RULE_RECORD:[Ljava/lang/String;

.field private static final TIME_SDF:Ljava/text/SimpleDateFormat;


# instance fields
.field protected mCreativeManager:Lcom/localytics/android/CreativeManager;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mIsMidDisplayingInApp:Z

.field private mMarketingHandler:Lcom/localytics/android/MarketingHandler;

.field private mTestCampaignsListAdapter:Lcom/localytics/android/InAppMessagesAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "display_frequencies"

    aput-object v1, v0, v3

    sput-object v0, Lcom/localytics/android/InAppManager;->GLOBAL_FREQUENCY_CAPPING_RULE_REQUIRED_KEYS:[Ljava/lang/String;

    .line 50
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "max_display_count"

    aput-object v1, v0, v3

    const-string v1, "ignore_global"

    aput-object v1, v0, v4

    sput-object v0, Lcom/localytics/android/InAppManager;->INDIVIDUAL_FREQUENCY_CAPPING_RULE_REQUIRED_KEYS:[Ljava/lang/String;

    .line 52
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "version"

    aput-object v1, v0, v4

    sput-object v0, Lcom/localytics/android/InAppManager;->PROJECTION_IN_APP_RULE_RECORD:[Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/localytics/android/InAppManager;->TIME_SDF:Ljava/text/SimpleDateFormat;

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/localytics/android/InAppManager;->DATE_SDF:Ljava/text/SimpleDateFormat;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/localytics/android/InAppManager;->AUGMENTED_BLACKOUT_TIMES_RULE:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    const-string v1, "start"

    const-string v2, "00:00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "end"

    const-string v2, "23:59"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/localytics/android/InAppManager;->AUGMENTED_BLACKOUT_TIMES_RULE:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/InAppManager;->AUGMENTED_BLACKOUT_WEEKDAYS_RULE:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/localytics/android/InAppManager;->DEFAULT_FREQUENCY_CAPPING_RULE:Ljava/util/Map;

    .line 71
    sget-object v0, Lcom/localytics/android/InAppManager;->DEFAULT_FREQUENCY_CAPPING_RULE:Ljava/util/Map;

    const-string v1, "max_display_count"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/localytics/android/InAppManager;->DEFAULT_FREQUENCY_CAPPING_RULE:Ljava/util/Map;

    const-string v1, "ignore_global"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/localytics/android/InAppManager;->TIME_SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 75
    sget-object v0, Lcom/localytics/android/InAppManager;->DATE_SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 76
    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/localytics/android/CreativeManager;

    invoke-direct {v0, p1, p2}, Lcom/localytics/android/CreativeManager;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/localytics/android/InAppManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/CreativeManager;)V

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/CreativeManager;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/localytics/android/BaseMarketingManager;-><init>(Lcom/localytics/android/LocalyticsDao;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/InAppManager;->mIsMidDisplayingInApp:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/InAppManager;->mTestCampaignsListAdapter:Lcom/localytics/android/InAppMessagesAdapter;

    .line 100
    iput-object p2, p0, Lcom/localytics/android/InAppManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    .line 101
    iput-object p3, p0, Lcom/localytics/android/InAppManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    .line 102
    return-void
.end method

.method private _bindRuleToEvents(JLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 487
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_ruleevent"

    const-string v2, "%s = ?"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "rule_id_ref"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 490
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 492
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 493
    const-string v3, "event_name"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v0, "rule_id_ref"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 495
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "marketing_ruleevent"

    invoke-virtual {v0, v3, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 497
    :cond_0
    return-void
.end method

.method private _controlGroupMessages(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1068
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1069
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    .line 1071
    const-string v3, "control_group"

    invoke-static {v0, v3}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    .line 1072
    if-lez v3, :cond_0

    .line 1074
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1078
    :cond_1
    return-object v1
.end method

.method private _deleteInAppCreative(I)V
    .locals 3

    .prologue
    .line 360
    int-to-long v0, p1

    iget-object v2, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v0, v1, v2}, Lcom/localytics/android/CreativeManager;->getInAppUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_0

    .line 363
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-static {v1}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 366
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-static {v1}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 369
    :cond_0
    return-void
.end method

.method private _deleteInAppRuleEventsAndConditions(I)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 347
    int-to-long v2, p1

    invoke-direct {p0, v2, v3}, Lcom/localytics/android/InAppManager;->_getConditionIdFromRuleId(J)[J

    move-result-object v2

    .line 348
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v2, v0

    .line 350
    iget-object v6, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v7, "marketing_condition_values"

    const-string v8, "%s = ?"

    new-array v9, v11, [Ljava/lang/Object;

    const-string v10, "condition_id_ref"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v1

    invoke-virtual {v6, v7, v8, v9}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "marketing_conditions"

    const-string v3, "%s = ?"

    new-array v4, v11, [Ljava/lang/Object;

    const-string v5, "rule_id_ref"

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "marketing_ruleevent"

    const-string v3, "%s = ?"

    new-array v4, v11, [Ljava/lang/Object;

    const-string v5, "rule_id_ref"

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method private _destroyLocalInAppMessage(Lcom/localytics/android/MarketingMessage;)V
    .locals 7

    .prologue
    .line 326
    :try_start_0
    const-string v0, "campaign_id"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 327
    invoke-direct {p0, v0}, Lcom/localytics/android/InAppManager;->_getRuleIdFromCampaignId(I)I

    move-result v0

    .line 330
    invoke-direct {p0, v0}, Lcom/localytics/android/InAppManager;->_deleteInAppRuleEventsAndConditions(I)V

    .line 333
    iget-object v1, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "marketing_rules"

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 336
    invoke-direct {p0, v0}, Lcom/localytics/android/InAppManager;->_deleteInAppCreative(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 340
    const-string v1, "Localytics library threw an uncaught exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1549
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/InAppManager;->_getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private _getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1555
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1556
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1558
    const/4 v1, 0x0

    .line 1561
    :try_start_0
    iget-object v2, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v2, v2, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1563
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1565
    const-string v2, "campaign_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1570
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 1572
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 1570
    :cond_1
    if-eqz v1, :cond_2

    .line 1572
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1577
    :cond_2
    return-object v0
.end method

.method private _getConditionIdFromRuleId(J)[J
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1922
    .line 1927
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_conditions"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v8, "rule_id_ref"

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
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1928
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v3, v0, [J

    move v0, v7

    .line 1931
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1933
    add-int/lit8 v2, v0, 0x1

    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v2

    goto :goto_0

    .line 1938
    :cond_0
    if-eqz v1, :cond_1

    .line 1940
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1943
    :cond_1
    return-object v3

    .line 1938
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_2

    .line 1940
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1938
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private _getInAppConditionValues(I)Ljava/util/Vector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1954
    .line 1959
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_condition_values"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "condition_id_ref"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1960
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1962
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1964
    if-nez v6, :cond_0

    .line 1966
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1969
    :cond_0
    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1974
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    .line 1976
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1974
    :cond_2
    if-eqz v1, :cond_3

    .line 1976
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1980
    :cond_3
    return-object v6

    .line 1974
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method private _getInAppConditions(I)Ljava/util/Vector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/localytics/android/MarketingCondition;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1851
    .line 1857
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_conditions"

    const/4 v2, 0x0

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "rule_id_ref"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1858
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1860
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1861
    const-string v2, "attribute_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1862
    const-string v3, "operator"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1863
    invoke-direct {p0, v0}, Lcom/localytics/android/InAppManager;->_getInAppConditionValues(I)Ljava/util/Vector;

    move-result-object v0

    .line 1865
    if-nez v6, :cond_0

    .line 1867
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1870
    :cond_0
    new-instance v4, Lcom/localytics/android/MarketingCondition;

    invoke-direct {v4, v2, v3, v0}, Lcom/localytics/android/MarketingCondition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    .line 1871
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/localytics/android/MarketingCondition;->setPackageName(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1877
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    .line 1879
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1877
    :cond_2
    if-eqz v1, :cond_3

    .line 1879
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1883
    :cond_3
    return-object v6

    .line 1877
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method private _getInAppMessageMaps(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1166
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1168
    const/4 v1, 0x0

    .line 1171
    :try_start_0
    iget-object v3, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 1172
    const-string v4, "SELECT * FROM %s WHERE %s IN (SELECT %s FROM %s WHERE %s = ?) AND %s > ?;"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "marketing_rules"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "rule_id_ref"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "marketing_ruleevent"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "event_name"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "expiration"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1180
    iget-object v5, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v5, v5, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1182
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1184
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1186
    new-instance v3, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v3}, Lcom/localytics/android/MarketingMessage;-><init>()V

    .line 1188
    const-string v4, "_id"

    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    const-string v4, "campaign_id"

    const-string v5, "campaign_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    const-string v4, "expiration"

    const-string v5, "expiration"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    const-string v4, "display_seconds"

    const-string v5, "display_seconds"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    const-string v4, "display_session"

    const-string v5, "display_session"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    const-string v4, "version"

    const-string v5, "version"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    const-string v4, "phone_location"

    const-string v5, "phone_location"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const-string v4, "phone_size_width"

    const-string v5, "phone_size_width"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    const-string v4, "phone_size_height"

    const-string v5, "phone_size_height"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    const-string v4, "tablet_location"

    const-string v5, "tablet_location"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    const-string v4, "tablet_size_width"

    const-string v5, "tablet_size_width"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const-string v4, "tablet_size_height"

    const-string v5, "tablet_size_height"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    const-string v4, "time_to_display"

    const-string v5, "time_to_display"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    const-string v4, "internet_required"

    const-string v5, "internet_required"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    const-string v4, "ab_test"

    const-string v5, "ab_test"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    const-string v4, "rule_name_non_unique"

    const-string v5, "rule_name_non_unique"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    const-string v4, "location"

    const-string v5, "location"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    const-string v4, "devices"

    const-string v5, "devices"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    const-string v4, "control_group"

    const-string v5, "control_group"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    const-string v4, "schema_version"

    const-string v5, "schema_version"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    iget-object v4, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/localytics/android/InAppManager;->updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/LocalyticsDao;Z)V

    .line 1211
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1216
    :cond_0
    if-eqz v1, :cond_1

    .line 1218
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1222
    :cond_1
    return-object v2

    .line 1216
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 1218
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private _getRuleIdFromCampaignId(I)I
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1894
    .line 1898
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_rules"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v8, "campaign_id"

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1899
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1901
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 1906
    :goto_0
    if-eqz v1, :cond_0

    .line 1908
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1911
    :cond_0
    return v0

    .line 1906
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_1

    .line 1908
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1906
    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method private _isConnectingToInternet()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1791
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1792
    if-eqz v0, :cond_1

    .line 1794
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1795
    if-eqz v2, :cond_1

    .line 1797
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1799
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 1801
    const/4 v0, 0x1

    .line 1806
    :goto_1
    return v0

    .line 1797
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1806
    goto :goto_1
.end method

.method private _isInAppMessageSatisfiedConditions(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1818
    const/4 v1, 0x1

    .line 1821
    const-string v0, "campaign_id"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1822
    invoke-direct {p0, v0}, Lcom/localytics/android/InAppManager;->_getRuleIdFromCampaignId(I)I

    move-result v0

    .line 1825
    invoke-direct {p0, v0}, Lcom/localytics/android/InAppManager;->_getInAppConditions(I)Ljava/util/Vector;

    move-result-object v0

    .line 1828
    if-eqz v0, :cond_1

    .line 1830
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCondition;

    .line 1832
    invoke-virtual {v0, p2}, Lcom/localytics/android/MarketingCondition;->isSatisfiedByAttributes(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1834
    const/4 v0, 0x0

    .line 1840
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private _parseInAppMessage(ILcom/localytics/android/MarketingMessage;Ljava/util/Map;)Landroid/content/ContentValues;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    const/4 v1, 0x1

    .line 399
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 401
    const-string v3, "_id"

    if-lez p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 402
    const-string v0, "campaign_id"

    const-string v3, "campaign_id"

    invoke-static {p2, v3}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    const-string v0, "expiration"

    const-string v3, "expiration"

    invoke-static {p2, v3}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    const-string v0, "display_seconds"

    const-string v3, "display_seconds"

    invoke-static {p2, v3}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    const-string v0, "display_session"

    const-string v3, "display_session"

    invoke-static {p2, v3}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    const-string v0, "version"

    const-string v3, "version"

    invoke-static {p2, v3}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    const-string v0, "phone_location"

    const-string v3, "phone_location"

    invoke-static {p2, v3}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v0, "phone_size"

    invoke-static {p2, v0}, Lcom/localytics/android/JsonHelper;->getSafeMapFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 409
    const-string v3, "phone_size_width"

    const-string v4, "width"

    invoke-static {v0, v4}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    const-string v3, "phone_size_height"

    const-string v4, "height"

    invoke-static {v0, v4}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    const-string v0, "tablet_size"

    invoke-static {p2, v0}, Lcom/localytics/android/JsonHelper;->getSafeMapFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 412
    const-string v3, "tablet_location"

    const-string v4, "tablet_location"

    invoke-static {p2, v4}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v3, "tablet_size_width"

    const-string v4, "width"

    invoke-static {v0, v4}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string v3, "tablet_size_height"

    const-string v4, "height"

    invoke-static {v0, v4}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string v0, "time_to_display"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const-string v3, "internet_required"

    const-string v0, "internet_required"

    invoke-static {p2, v0}, Lcom/localytics/android/JsonHelper;->getSafeBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string v0, "ab_test"

    const-string v1, "ab"

    invoke-static {p2, v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v0, "rule_name"

    invoke-static {p2, v0}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    const-string v1, "rule_name_non_unique"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v0, "rule_name"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v0, "location"

    const-string v1, "location"

    invoke-static {p2, v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v0, "devices"

    const-string v1, "devices"

    invoke-static {p2, v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v0, "control_group"

    const-string v1, "control_group"

    invoke-static {p2, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    if-eqz p3, :cond_0

    .line 426
    const-string v0, "schema_version"

    invoke-static {p3, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    .line 427
    if-lez v0, :cond_0

    .line 429
    const-string v1, "schema_version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    :cond_0
    return-object v2

    .line 401
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 416
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private _saveInAppConditions(JLjava/util/List;)V
    .locals 13
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
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 438
    if-nez p3, :cond_1

    .line 474
    :cond_0
    return-void

    .line 444
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/InAppManager;->_getConditionIdFromRuleId(J)[J

    move-result-object v1

    .line 445
    array-length v3, v1

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-wide v4, v1, v0

    .line 447
    iget-object v6, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v7, "marketing_condition_values"

    const-string v8, "%s = ?"

    new-array v9, v11, [Ljava/lang/Object;

    const-string v10, "condition_id_ref"

    aput-object v10, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    invoke-virtual {v6, v7, v8, v9}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_conditions"

    const-string v3, "%s = ?"

    new-array v4, v11, [Ljava/lang/Object;

    const-string v5, "rule_id_ref"

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v3, v4}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 451
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 454
    check-cast v1, Ljava/util/List;

    .line 458
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 459
    const-string v5, "attribute_name"

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v5, "operator"

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v0, "rule_id_ref"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 462
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v5, "marketing_conditions"

    invoke-virtual {v0, v5, v4}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 466
    const/4 v0, 0x2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 468
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 469
    const-string v7, "value"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/localytics/android/JsonHelper;->getSafeStringFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v7, "condition_id_ref"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 471
    iget-object v7, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v8, "marketing_condition_values"

    invoke-virtual {v7, v8, v6}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private _tagAmpActionEventForControlGroup(Lcom/localytics/android/MarketingMessage;)V
    .locals 6

    .prologue
    .line 1098
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 1100
    const-string v0, "campaign_id"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1101
    const-string v0, "rule_name_non_unique"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1102
    const-string v0, "schema_version"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1103
    const-string v0, "ab_test"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1106
    const-string v5, "ampAB"

    invoke-virtual {v1, v5, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    :cond_0
    const-string v0, "ampAction"

    const-string v5, "control"

    invoke-virtual {v1, v0, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    const-string v0, "type"

    const-string v5, "Control"

    invoke-virtual {v1, v0, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    const-string v0, "ampCampaignId"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    const-string v0, "ampCampaign"

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    const-string v0, "Schema Version - Client"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    const-string v0, "Schema Version - Server"

    invoke-virtual {v1, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const-string v2, "ampView"

    invoke-interface {v0, v2, v1}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1116
    return-void
.end method

.method private _timeStringToSeconds(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 889
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 890
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0xe10

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v1

    .line 894
    :goto_0
    return v0

    .line 892
    :catch_0
    move-exception v0

    .line 894
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/localytics/android/InAppManager;)Lcom/localytics/android/MarketingHandler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/localytics/android/InAppManager;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/localytics/android/InAppManager;->mIsMidDisplayingInApp:Z

    return v0
.end method

.method static synthetic access$202(Lcom/localytics/android/InAppManager;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/localytics/android/InAppManager;->mIsMidDisplayingInApp:Z

    return p1
.end method

.method static synthetic access$300(Lcom/localytics/android/InAppManager;Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)Lcom/localytics/android/InAppCampaign;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/InAppManager;->getInAppCampaignFromMarketingMessage(Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)Lcom/localytics/android/InAppCampaign;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/localytics/android/InAppManager;Lcom/localytics/android/InAppMessagesAdapter;)Lcom/localytics/android/InAppMessagesAdapter;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/localytics/android/InAppManager;->mTestCampaignsListAdapter:Lcom/localytics/android/InAppMessagesAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/localytics/android/InAppManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/InAppManager;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/LocalyticsDao;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/localytics/android/InAppManager;->updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/LocalyticsDao;Z)V

    return-void
.end method

.method private copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2325
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2327
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 2329
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 2330
    invoke-virtual {v0, p2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2337
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has been copied to the clipboard."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2343
    :goto_1
    return-void

    .line 2334
    :cond_0
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2335
    invoke-virtual {v0, p2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2341
    :cond_1
    const-string v0, "No %s found. Please check your integration."

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private getInAppCampaignFromMarketingMessage(Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)Lcom/localytics/android/InAppCampaign;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/localytics/android/InAppCampaign;"
        }
    .end annotation

    .prologue
    .line 2349
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2350
    const-string v2, "html_url"

    const-string v0, "html_url"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    const-string v2, "base_path"

    const-string v0, "base_path"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    const-string v0, "display_width"

    const-string v2, "display_width"

    invoke-virtual {p1, v2}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2353
    const-string v0, "display_height"

    const-string v2, "display_height"

    invoke-virtual {p1, v2}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2355
    new-instance v2, Lcom/localytics/android/InAppCampaign$Builder;

    invoke-direct {v2}, Lcom/localytics/android/InAppCampaign$Builder;-><init>()V

    const-string v0, "campaign_id"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/localytics/android/InAppCampaign$Builder;->setCampaignId(J)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v2

    const-string v0, "rule_name_non_unique"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/localytics/android/InAppCampaign$Builder;->setRuleName(Ljava/lang/String;)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v2

    const-string v0, "version"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/localytics/android/InAppCampaign$Builder;->setVersion(J)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v2

    const-string v0, "schema_version"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/localytics/android/InAppCampaign$Builder;->setSchemaVersion(J)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v2

    const-string v0, "location"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/localytics/android/InAppCampaign$Builder;->setDisplayLocation(Ljava/lang/String;)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v2

    const-string v0, "ab_test"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/localytics/android/InAppCampaign$Builder;->setAbTest(Ljava/lang/String;)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/localytics/android/InAppCampaign$Builder;->setEventAttributes(Ljava/util/Map;)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/localytics/android/InAppCampaign$Builder;->setWebViewAttributes(Ljava/util/Map;)Lcom/localytics/android/InAppCampaign$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/InAppCampaign$Builder;->build()Lcom/localytics/android/InAppCampaign;

    move-result-object v0

    return-object v0
.end method

.method private static getInAppRemoteFileURL(Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1227
    const-string v0, "devices"

    invoke-static {p0, v0}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1228
    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    const-string v0, "tablet_location"

    invoke-static {p0, v0}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1232
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "phone_location"

    invoke-static {p0, v0}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/LocalyticsDao;Z)V
    .locals 7

    .prologue
    .line 1240
    const-string v0, "_id"

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v2, v3, p1}, Lcom/localytics/android/CreativeManager;->getInAppLocalHtmlLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1243
    invoke-static {p0}, Lcom/localytics/android/InAppManager;->getInAppRemoteFileURL(Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;

    move-result-object v2

    .line 1244
    int-to-long v4, v0

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v4, v5, v3, p1}, Lcom/localytics/android/CreativeManager;->getInAppLocalFileURL(JZLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v3

    .line 1245
    const-string v4, "creative_url"

    invoke-virtual {p0, v4, v2}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    const-string v4, "html_url"

    invoke-virtual {p0, v4, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    const-string v1, "base_path"

    int-to-long v4, v0

    invoke-static {v4, v5, p1}, Lcom/localytics/android/CreativeManager;->getInAppUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    const-string v1, "zip_name"

    const-string v4, "amp_rule_%d.zip"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    const-string v0, "local_file_location"

    invoke-virtual {p0, v0, v3}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    const-string v0, "download_url"

    invoke-virtual {p0, v0, v2}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    if-eqz p2, :cond_0

    .line 1256
    const-string v0, "devices"

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1258
    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1260
    const-string v0, "tablet_size_width"

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1261
    const-string v0, "tablet_size_height"

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1274
    :goto_0
    const-string v2, "display_width"

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    const-string v1, "display_height"

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    :cond_0
    return-void

    .line 1263
    :cond_1
    const-string v1, "both"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1265
    const-string v0, "phone_size_width"

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1266
    const-string v0, "phone_size_height"

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1270
    :cond_2
    const-string v0, "phone_size_width"

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1271
    const-string v0, "phone_size_height"

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method _additionalFCDatesAndTimesRulesValidation(Ljava/util/List;Ljava/text/SimpleDateFormat;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/text/SimpleDateFormat;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 623
    if-eqz p1, :cond_1

    .line 625
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 629
    :try_start_0
    const-string v1, "start"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 630
    const-string v3, "end"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 631
    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :catch_0
    move-exception v0

    .line 638
    const/4 v0, 0x0

    .line 643
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method _additionalFCDisplayFrequencyRulesValidation(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 607
    if-eqz p1, :cond_2

    .line 609
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 611
    const-string v1, "days"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v2, :cond_1

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 613
    :cond_1
    const/4 v0, 0x0

    .line 618
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method _additionalFCWeekdaysRulesValidation(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 648
    if-eqz p1, :cond_3

    .line 650
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x7

    if-le v0, v2, :cond_0

    move v0, v1

    .line 666
    :goto_0
    return v0

    .line 656
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 658
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x6

    if-le v0, v3, :cond_1

    :cond_2
    move v0, v1

    .line 660
    goto :goto_0

    .line 666
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method _augmentBlackoutRule(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
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
    .line 792
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 793
    const-string v1, "dates"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 794
    const-string v2, "weekdays"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 795
    const-string v3, "times"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 797
    if-nez v1, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    if-nez v3, :cond_2

    .line 799
    const-string v1, "times"

    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/localytics/android/InAppManager;->AUGMENTED_BLACKOUT_TIMES_RULE:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    :cond_1
    :goto_0
    return-object v0

    .line 801
    :cond_2
    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 803
    const-string v1, "weekdays"

    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/localytics/android/InAppManager;->AUGMENTED_BLACKOUT_WEEKDAYS_RULE:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method _campaignsSatisfyingConditions(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1762
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1763
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    .line 1766
    const-string v1, "internet_required"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    .line 1767
    :goto_1
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/localytics/android/InAppManager;->_isConnectingToInternet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1773
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/localytics/android/InAppManager;->_isInAppMessageSatisfiedConditions(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1778
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1766
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1781
    :cond_3
    return-object v3
.end method

.method _checkFrequencyCappingRuleArray(Ljava/util/List;[Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 577
    if-eqz p1, :cond_3

    .line 579
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 602
    :goto_0
    return v0

    .line 585
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_3

    .line 588
    array-length v4, p2

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v5, p2, v3

    .line 590
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 592
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 594
    goto :goto_0

    .line 588
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 602
    goto :goto_0
.end method

.method _deleteFrequencyCappingRule(Ljava/lang/Integer;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 709
    :try_start_0
    iget-object v2, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "frequency_capping_rules"

    const-string v4, "%s = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "campaign_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :goto_0
    return v0

    .line 712
    :catch_0
    move-exception v0

    move v0, v1

    .line 714
    goto :goto_0
.end method

.method _filterInAppMessagesDisqualifiedByFrequencyCappingRules(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1282
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1283
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    .line 1285
    const-string v3, "campaign_id"

    invoke-virtual {v0, v3}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1288
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1290
    sget-object v0, Lcom/localytics/android/InAppManager$FrequencyCappingFilter;->MAX_COUNT:Lcom/localytics/android/InAppManager$FrequencyCappingFilter;

    invoke-virtual {p0, v0, v2}, Lcom/localytics/android/InAppManager;->_getDisqualifiedCampaigns(Lcom/localytics/android/InAppManager$FrequencyCappingFilter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1292
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1294
    sget-object v0, Lcom/localytics/android/InAppManager$FrequencyCappingFilter;->FREQUENCY:Lcom/localytics/android/InAppManager$FrequencyCappingFilter;

    invoke-virtual {p0, v0, v2}, Lcom/localytics/android/InAppManager;->_getDisqualifiedCampaigns(Lcom/localytics/android/InAppManager$FrequencyCappingFilter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1296
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1298
    sget-object v0, Lcom/localytics/android/InAppManager$FrequencyCappingFilter;->BLACKOUT:Lcom/localytics/android/InAppManager$FrequencyCappingFilter;

    invoke-virtual {p0, v0, v2}, Lcom/localytics/android/InAppManager;->_getDisqualifiedCampaigns(Lcom/localytics/android/InAppManager$FrequencyCappingFilter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1300
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1302
    sget-object v0, Lcom/localytics/android/InAppManager$FrequencyCappingFilter;->FREQUENCY:Lcom/localytics/android/InAppManager$FrequencyCappingFilter;

    invoke-virtual {p0, v0, v2}, Lcom/localytics/android/InAppManager;->_getGloballyDisqualifiedCampaigns(Lcom/localytics/android/InAppManager$FrequencyCappingFilter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1304
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1306
    sget-object v0, Lcom/localytics/android/InAppManager$FrequencyCappingFilter;->BLACKOUT:Lcom/localytics/android/InAppManager$FrequencyCappingFilter;

    invoke-virtual {p0, v0, v2}, Lcom/localytics/android/InAppManager;->_getGloballyDisqualifiedCampaigns(Lcom/localytics/android/InAppManager$FrequencyCappingFilter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1309
    :cond_5
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1311
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    .line 1315
    const-string v1, "campaign_id"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1316
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1318
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1323
    :cond_7
    return-object v3
.end method

.method _getDisqualifiedCampaigns(Lcom/localytics/android/InAppManager$FrequencyCappingFilter;Ljava/util/Set;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/InAppManager$FrequencyCappingFilter;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v10, 0x7

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1329
    sget-object v0, Lcom/localytics/android/InAppManager$13;->$SwitchMap$com$localytics$android$InAppManager$FrequencyCappingFilter:[I

    invoke-virtual {p1}, Lcom/localytics/android/InAppManager$FrequencyCappingFilter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1417
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    return-object v0

    .line 1332
    :pswitch_0
    const-string v0, "SELECT fc.%s FROM %s AS fc JOIN %s AS cd ON fc.%s=cd.%s WHERE cd.%s in (%s) GROUP BY fc.%s HAVING count(*) >= fc.%s;"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "campaign_id"

    aput-object v2, v1, v7

    const-string v2, "frequency_capping_rules"

    aput-object v2, v1, v8

    const-string v2, "campaigns_displayed"

    aput-object v2, v1, v9

    const-string v2, "campaign_id"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "campaign_id"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "campaign_id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ","

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "campaign_id"

    aput-object v2, v1, v10

    const/16 v2, 0x8

    const-string v3, "max_display_count"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/InAppManager;->_getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 1349
    :pswitch_1
    const-string v0, "SELECT DISTINCT fc.%s FROM %s AS fc JOIN %s AS df ON fc.%s=df.%s JOIN %s AS cd ON fc.%s=cd.%s WHERE (cd.%s BETWEEN datetime(\'%s\',\'-\'||df.%s||\' days\') AND datetime(\'%s\')) AND fc.%s in (%s) GROUP BY df.%s HAVING count(cd.%s) >= df.%s;"

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "campaign_id"

    aput-object v2, v1, v7

    const-string v2, "frequency_capping_rules"

    aput-object v2, v1, v8

    const-string v2, "frequency_capping_display_frequencies"

    aput-object v2, v1, v9

    const-string v2, "_id"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "frequency_id"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "campaigns_displayed"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "campaign_id"

    aput-object v3, v1, v2

    const-string v2, "campaign_id"

    aput-object v2, v1, v10

    const/16 v2, 0x8

    const-string v3, "date"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getTimeStringForSQLite()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "days"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getTimeStringForSQLite()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "campaign_id"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, ","

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "date"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "count"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/InAppManager;->_getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto/16 :goto_0

    .line 1372
    :pswitch_2
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 1373
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1374
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 1376
    const-string v0, "SELECT fc.%s FROM %s AS fc, %s AS d, %s AS t WHERE ((fc.%s=t.%s) AND (fc.%s=d.%s)) AND (d.%s=t.%s) AND (datetime(\'%s\',\'localtime\') BETWEEN d.%s and d.%s) AND (? BETWEEN t.%s AND t.%s) AND fc.%s IN (%s);"

    const/16 v3, 0x11

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "campaign_id"

    aput-object v4, v3, v7

    const-string v4, "frequency_capping_rules"

    aput-object v4, v3, v8

    const-string v4, "frequency_capping_blackout_dates"

    aput-object v4, v3, v9

    const-string v4, "frequency_capping_blackout_times"

    aput-object v4, v3, v6

    const/4 v4, 0x4

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "frequency_id"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "frequency_id"

    aput-object v4, v3, v10

    const/16 v4, 0x8

    const-string v5, "rule_group_id"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "rule_group_id"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    iget-object v5, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v5}, Lcom/localytics/android/LocalyticsDao;->getTimeStringForSQLite()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "start"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "end"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "start"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "end"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "campaign_id"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, ","

    invoke-static {v5, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-direct {p0, v0, v3}, Lcom/localytics/android/InAppManager;->_getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 1395
    const-string v3, "SELECT fc.%s FROM %s AS fc, %s AS w, %s AS t WHERE ((fc.%s=t.%s) AND (fc.%s=w.%s)) AND (w.%s=t.%s) AND (w.%s=?)  AND (? BETWEEN t.%s AND t.%s) AND fc.%s IN (%s);"

    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "campaign_id"

    aput-object v5, v4, v7

    const-string v5, "frequency_capping_rules"

    aput-object v5, v4, v8

    const-string v5, "frequency_capping_blackout_weekdays"

    aput-object v5, v4, v9

    const-string v5, "frequency_capping_blackout_times"

    aput-object v5, v4, v6

    const/4 v5, 0x4

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "frequency_id"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "frequency_id"

    aput-object v5, v4, v10

    const/16 v5, 0x8

    const-string v6, "rule_group_id"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "rule_group_id"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "day"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "start"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "end"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "campaign_id"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, ","

    invoke-static {v6, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-direct {p0, v3, v4}, Lcom/localytics/android/InAppManager;->_getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 1329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method _getGloballyDisqualifiedCampaigns(Lcom/localytics/android/InAppManager$FrequencyCappingFilter;Ljava/util/Set;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/InAppManager$FrequencyCappingFilter;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 1423
    .line 1424
    const/4 v6, 0x0

    .line 1427
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "frequency_capping_rules"

    const/4 v2, 0x0

    const-string v3, "campaign_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1428
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1430
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    .line 1435
    :goto_0
    if-eqz v1, :cond_0

    .line 1437
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1441
    :cond_0
    if-eq v0, v7, :cond_2

    .line 1445
    :try_start_2
    sget-object v2, Lcom/localytics/android/InAppManager$13;->$SwitchMap$com$localytics$android$InAppManager$FrequencyCappingFilter:[I

    invoke-virtual {p1}, Lcom/localytics/android/InAppManager$FrequencyCappingFilter;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    packed-switch v2, :pswitch_data_0

    .line 1523
    :cond_1
    if-eqz v1, :cond_2

    .line 1525
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1530
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_3
    :goto_1
    return-object v0

    .line 1435
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_4

    .line 1437
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1448
    :pswitch_0
    :try_start_3
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v0, v0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT df.%s FROM %s AS fc JOIN %s AS df ON fc.%s = df.%s JOIN %s AS cd WHERE cd.%s = 0 AND fc.%s = ? AND (cd.%s BETWEEN datetime(\'%s\',\'-\'||df.%s||\' days\') AND datetime(\'%s\')) GROUP BY df.%s HAVING count(cd.%s) >= df.%s;"

    const/16 v3, 0xf

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "frequency_capping_rules"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "frequency_capping_display_frequencies"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "frequency_id"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "campaigns_displayed"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "ignore_global"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "campaign_id"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "date"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget-object v5, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v5}, Lcom/localytics/android/LocalyticsDao;->getTimeStringForSQLite()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "days"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    iget-object v5, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v5}, Lcom/localytics/android/LocalyticsDao;->getTimeStringForSQLite()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "date"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "count"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1469
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1471
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/InAppManager;->_getIgnoresGlobalCampaigns(ZLjava/util/Set;)Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 1523
    if-eqz v1, :cond_3

    .line 1525
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1476
    :pswitch_1
    :try_start_4
    iget-object v2, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 1477
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 1478
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3c

    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v4

    .line 1480
    iget-object v4, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v4, v4, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT * FROM %s AS d, %s AS t WHERE ((d.%s=?) AND (t.%s=?)) AND (d.%s=t.%s) AND (datetime(\'%s\',\'localtime\') BETWEEN d.%s and d.%s) AND (? BETWEEN t.%s AND t.%s);"

    const/16 v6, 0xb

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "frequency_capping_blackout_dates"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "frequency_capping_blackout_times"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "frequency_id"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "frequency_id"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "rule_group_id"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "rule_group_id"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v8}, Lcom/localytics/android/LocalyticsDao;->getTimeStringForSQLite()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "start"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "end"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "start"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "end"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1494
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 1495
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1497
    iget-object v5, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v5, v5, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT * FROM %s AS w, %s AS t WHERE ((w.%s=?) AND (t.%s=?)) AND (w.%s=t.%s) AND (w.%s=?) AND (? BETWEEN t.%s AND t.%s);"

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "frequency_capping_blackout_weekdays"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "frequency_capping_blackout_times"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "frequency_id"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "frequency_id"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "rule_group_id"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "rule_group_id"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "day"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "start"

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "end"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1511
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v0, v4

    .line 1513
    if-lez v0, :cond_1

    .line 1515
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/InAppManager;->_getIgnoresGlobalCampaigns(ZLjava/util/Set;)Ljava/util/Set;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 1523
    if-eqz v1, :cond_3

    .line 1525
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1523
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_5

    .line 1525
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 1435
    :catchall_2
    move-exception v0

    goto/16 :goto_2

    :cond_6
    move v0, v7

    goto/16 :goto_0

    .line 1445
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method _getIgnoresGlobalCampaigns(ZLjava/util/Set;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1536
    const-string v2, "SELECT %s FROM %s WHERE %s = %s AND %s in (%s);"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "campaign_id"

    aput-object v4, v3, v1

    const-string v4, "frequency_capping_rules"

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-string v5, "ignore_global"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x4

    const-string v1, "campaign_id"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/InAppManager;->_getCampaignIdsFromFrequencyCappingQuery(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method _getInAppCreativeUrls()Landroid/util/SparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 978
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 982
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_rules"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "campaign_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "phone_location"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "tablet_location"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "devices"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 989
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    new-instance v0, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v0}, Lcom/localytics/android/MarketingMessage;-><init>()V

    .line 992
    const-string v2, "campaign_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 993
    const-string v3, "phone_location"

    const-string v4, "phone_location"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    const-string v3, "tablet_location"

    const-string v4, "tablet_location"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    const-string v3, "devices"

    const-string v4, "devices"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    invoke-static {v0}, Lcom/localytics/android/InAppManager;->getInAppRemoteFileURL(Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;

    move-result-object v0

    .line 997
    invoke-virtual {v7, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1002
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 1004
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 1002
    :cond_1
    if-eqz v1, :cond_2

    .line 1004
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1008
    :cond_2
    return-object v7

    .line 1002
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method _getQualifiedInAppMessageForTrigger(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1121
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-object v0

    .line 1127
    :cond_1
    const-string v1, "open"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1129
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1131
    const-string p1, "AMP Loaded"

    .line 1144
    :cond_2
    invoke-direct {p0, p1}, Lcom/localytics/android/InAppManager;->_getInAppMessageMaps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1147
    iget-object v1, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 1148
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1150
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1151
    invoke-direct {p0, v0}, Lcom/localytics/android/InAppManager;->_getInAppMessageMaps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1155
    :cond_3
    invoke-virtual {p0, v0}, Lcom/localytics/android/InAppManager;->_filterInAppMessagesDisqualifiedByFrequencyCappingRules(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method _handleTestCampaigns()Z
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mTestCampaignsListAdapter:Lcom/localytics/android/InAppMessagesAdapter;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mTestCampaignsListAdapter:Lcom/localytics/android/InAppMessagesAdapter;

    .line 206
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/localytics/android/InAppManager$2;

    invoke-direct {v2, p0, v0}, Lcom/localytics/android/InAppManager$2;-><init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/InAppMessagesAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/InAppManager;->mTestCampaignsListAdapter:Lcom/localytics/android/InAppMessagesAdapter;

    .line 223
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _inAppMessageTrigger(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
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
    .line 1022
    invoke-virtual {p0, p1}, Lcom/localytics/android/InAppManager;->_getQualifiedInAppMessageForTrigger(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1023
    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/InAppManager;->_campaignsSatisfyingConditions(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 1027
    invoke-virtual {p0, v0}, Lcom/localytics/android/InAppManager;->_messagesReadyToDisplay(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1028
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1030
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/InAppManager;->_triggerMessage(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)V

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1034
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1035
    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1036
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    new-instance v1, Lcom/localytics/android/InAppManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/localytics/android/InAppManager$3;-><init>(Lcom/localytics/android/InAppManager;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v2, v1}, Lcom/localytics/android/CreativeManager;->priorityDownloadCreatives(Ljava/util/List;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V

    goto :goto_0
.end method

.method _manifestProcessingAllowed()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "marketing_dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    invoke-virtual {v0}, Lcom/localytics/android/CreativeManager;->hasPendingDownloads()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _messagesReadyToDisplay(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Lcom/localytics/android/InAppManager;->_controlGroupMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1055
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1056
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1058
    iget-object v2, p0, Lcom/localytics/android/InAppManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    invoke-virtual {v2, v1}, Lcom/localytics/android/CreativeManager;->inAppCampaignsWithDownloadedCreatives(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1060
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1061
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1063
    return-object v2
.end method

.method _processMarketingObject(Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
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
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    const-string v0, "amp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 146
    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 149
    new-instance v4, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v4, v0}, Lcom/localytics/android/MarketingMessage;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0, v1}, Lcom/localytics/android/InAppManager;->_removeDeactivatedInAppMessages(Ljava/util/List;)V

    .line 156
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/localytics/android/InAppManager;->_validateAndStoreFrequencyCappingRule(Ljava/util/Map;Ljava/lang/Integer;)Z

    .line 158
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-virtual {p0}, Lcom/localytics/android/InAppManager;->_getInAppCreativeUrls()Landroid/util/SparseArray;

    move-result-object v5

    .line 163
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    .line 165
    const-string v1, "campaign_id"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    invoke-static {v0}, Lcom/localytics/android/InAppManager;->getInAppRemoteFileURL(Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    move v2, v1

    .line 169
    :goto_2
    invoke-virtual {p0, v0, p2, v2}, Lcom/localytics/android/InAppManager;->_saveInAppMessage(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;Z)I

    move-result v7

    .line 170
    if-lez v7, :cond_1

    const-string v1, "campaign_id"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/InAppManager;->_validateAndStoreFrequencyCappingRule(Ljava/util/Map;Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    if-eqz v2, :cond_1

    .line 174
    const-string v1, "control_group"

    invoke-static {v0, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    .line 175
    if-nez v1, :cond_1

    .line 177
    new-instance v1, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v1, v0}, Lcom/localytics/android/MarketingMessage;-><init>(Ljava/util/Map;)V

    .line 178
    const-string v0, "_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v1, v0, v3}, Lcom/localytics/android/InAppManager;->updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/LocalyticsDao;Z)V

    .line 180
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v2, v3

    .line 167
    goto :goto_2

    .line 186
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    new-instance v1, Lcom/localytics/android/InAppManager$1;

    invoke-direct {v1, p0}, Lcom/localytics/android/InAppManager$1;-><init>(Lcom/localytics/android/InAppManager;)V

    invoke-virtual {v0, v4, v1}, Lcom/localytics/android/CreativeManager;->downloadCreatives(Ljava/util/List;Lcom/localytics/android/CreativeManager$LastDownloadedCallback;)V

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 199
    return-void
.end method

.method _removeDeactivatedInAppMessages(Ljava/util/List;)V
    .locals 9
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
    const/4 v6, 0x0

    .line 907
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 910
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    .line 912
    const-string v2, "campaign_id"

    invoke-static {v0, v2}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 915
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/InAppManager;->_deleteFrequencyCappingRule(Ljava/lang/Integer;)Z

    .line 918
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_rules"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 924
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 926
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 930
    const-string v2, "campaign_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 931
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 924
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 936
    :cond_1
    new-instance v2, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v2}, Lcom/localytics/android/MarketingMessage;-><init>()V

    .line 938
    const-string v3, "_id"

    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    const-string v3, "campaign_id"

    const-string v4, "campaign_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const-string v3, "expiration"

    const-string v4, "expiration"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    const-string v3, "display_seconds"

    const-string v4, "display_seconds"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string v3, "display_session"

    const-string v4, "display_session"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    const-string v3, "version"

    const-string v4, "version"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const-string v3, "phone_location"

    const-string v4, "phone_location"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    const-string v3, "phone_size_width"

    const-string v4, "phone_size_width"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string v3, "phone_size_height"

    const-string v4, "phone_size_height"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const-string v3, "tablet_location"

    const-string v4, "tablet_location"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    const-string v3, "tablet_size_width"

    const-string v4, "tablet_size_width"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    const-string v3, "tablet_size_height"

    const-string v4, "tablet_size_height"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    const-string v3, "time_to_display"

    const-string v4, "time_to_display"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    const-string v3, "internet_required"

    const-string v4, "internet_required"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const-string v3, "ab_test"

    const-string v4, "ab_test"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    const-string v3, "rule_name_non_unique"

    const-string v4, "rule_name_non_unique"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    const-string v3, "location"

    const-string v4, "location"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const-string v3, "devices"

    const-string v4, "devices"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    invoke-virtual {v8, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 962
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_2

    .line 964
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 962
    :cond_3
    if-eqz v1, :cond_4

    .line 964
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 969
    :cond_4
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    .line 971
    invoke-direct {p0, v0}, Lcom/localytics/android/InAppManager;->_destroyLocalInAppMessage(Lcom/localytics/android/MarketingMessage;)V

    .line 972
    const-string v2, "campaign_id"

    invoke-virtual {v0, v2}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/localytics/android/InAppManager;->_deleteFrequencyCappingRule(Ljava/lang/Integer;)Z

    goto :goto_4

    .line 974
    :cond_5
    return-void

    .line 962
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method _saveFrequencyCappingRule(Ljava/util/Map;Ljava/lang/Integer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 686
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v0, v0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 688
    invoke-virtual {p0, p1, p2}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRuleBase(Ljava/util/Map;Ljava/lang/Integer;)J

    move-result-wide v0

    long-to-int v4, v0

    .line 690
    const-string v0, "display_frequencies"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 691
    if-lez v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRuleDisplayFrequency(Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 693
    :goto_0
    const-string v0, "blackout_rules"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 694
    if-eqz v1, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRuleBlackout(Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    :goto_1
    if-eqz v2, :cond_0

    .line 698
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v0, v0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v0, v0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 702
    return v2

    :cond_1
    move v1, v3

    .line 691
    goto :goto_0

    :cond_2
    move v2, v3

    .line 694
    goto :goto_1
.end method

.method _saveFrequencyCappingRuleBase(Ljava/util/Map;Ljava/lang/Integer;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Integer;",
            ")J"
        }
    .end annotation

    .prologue
    .line 720
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 721
    const-string v0, "campaign_id"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 724
    const-string v2, "max_display_count"

    const-string v0, "max_display_count"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 725
    const-string v2, "ignore_global"

    const-string v0, "ignore_global"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 733
    :goto_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v0, v0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "frequency_capping_rules"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0

    .line 729
    :cond_0
    const-string v0, "max_display_count"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 730
    const-string v0, "ignore_global"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0
.end method

.method _saveFrequencyCappingRuleBlackout(Ljava/util/List;Ljava/lang/Integer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 758
    if-eqz p1, :cond_2

    .line 761
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 763
    invoke-virtual {p0, v0}, Lcom/localytics/android/InAppManager;->_augmentBlackoutRule(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 764
    const-string v0, "dates"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 765
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, p2, v5}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRuleBlackoutDates(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 786
    :cond_0
    :goto_1
    return v2

    .line 770
    :cond_1
    const-string v0, "weekdays"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 771
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, p2, v5}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRuleBlackoutWeekdays(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    const-string v0, "times"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 777
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v0, p2, v4}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRuleBlackoutTimes(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 783
    goto :goto_0

    .line 786
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method _saveFrequencyCappingRuleBlackoutDates(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 811
    if-eqz p1, :cond_0

    .line 813
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 817
    :try_start_0
    iget-object v4, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v4, v4, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT INTO %s VALUES (?, ?, datetime(?,\'start of day\'), datetime(?,\'start of day\',\'1 day\',\'-1 second\'));"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "frequency_capping_blackout_dates"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    const/4 v7, 0x2

    const-string v8, "start"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "end"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    move v0, v1

    .line 832
    :goto_1
    return v0

    :cond_0
    move v0, v2

    goto :goto_1
.end method

.method _saveFrequencyCappingRuleBlackoutTimes(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 857
    if-eqz p1, :cond_3

    .line 859
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 861
    const-string v1, "start"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/localytics/android/InAppManager;->_timeStringToSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 862
    const-string v4, "end"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/localytics/android/InAppManager;->_timeStringToSeconds(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 864
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_2

    :cond_1
    move v0, v2

    .line 881
    :goto_0
    return v0

    .line 869
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 870
    const-string v5, "frequency_id"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 871
    const-string v5, "rule_group_id"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    const-string v5, "start"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 873
    const-string v1, "end"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 874
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "frequency_capping_blackout_times"

    invoke-virtual {v0, v1, v4}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    move v0, v2

    .line 876
    goto :goto_0

    .line 881
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method _saveFrequencyCappingRuleBlackoutWeekdays(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 837
    if-eqz p1, :cond_1

    .line 839
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 841
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 842
    const-string v3, "frequency_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 843
    const-string v3, "rule_group_id"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 844
    const-string v3, "day"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "frequency_capping_blackout_weekdays"

    invoke-virtual {v0, v3, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 847
    const/4 v0, 0x0

    .line 852
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method _saveFrequencyCappingRuleDisplayFrequency(Ljava/util/List;Ljava/lang/Integer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 738
    if-eqz p1, :cond_1

    .line 740
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 742
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 743
    const-string v1, "frequency_id"

    invoke-virtual {v3, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 744
    const-string v4, "count"

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 745
    const-string v1, "days"

    const-string v4, "days"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "frequency_capping_display_frequencies"

    invoke-virtual {v0, v1, v3}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 748
    const/4 v0, 0x0

    .line 753
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method _saveInAppMessage(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;Z)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 239
    invoke-virtual {p0, p1}, Lcom/localytics/android/InAppManager;->_validateInAppMessage(Lcom/localytics/android/MarketingMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 318
    :goto_0
    return v0

    .line 245
    :cond_0
    const-string v0, "campaign_id"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v8

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_rules"

    sget-object v2, Lcom/localytics/android/InAppManager;->PROJECTION_IN_APP_RULE_RECORD:[Ljava/lang/String;

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

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 255
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 257
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 258
    const-string v0, "version"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 263
    :goto_1
    if-eqz v1, :cond_1

    .line 265
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_1
    if-lez v2, :cond_6

    .line 272
    const-string v1, "Existing in-app rule already exists for this campaign\n\t campaignID = %d\n\t ruleID = %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 274
    const-string v1, "version"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    .line 275
    if-lt v0, v1, :cond_3

    .line 277
    const-string v1, "No update needed. Campaign version has not been updated\n\t version: %d"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    move v0, v6

    .line 278
    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_2

    .line 265
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 282
    :cond_3
    invoke-direct {p0, v2}, Lcom/localytics/android/InAppManager;->_deleteInAppRuleEventsAndConditions(I)V

    .line 284
    if-eqz p3, :cond_4

    .line 286
    invoke-direct {p0, v2}, Lcom/localytics/android/InAppManager;->_deleteInAppCreative(I)V

    .line 295
    :cond_4
    :goto_3
    invoke-direct {p0, v2, p1, p2}, Lcom/localytics/android/InAppManager;->_parseInAppMessage(ILcom/localytics/android/MarketingMessage;Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v2, "marketing_rules"

    invoke-virtual {v1, v2, v0}, Lcom/localytics/android/BaseProvider;->replace(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 298
    if-lez v1, :cond_5

    .line 301
    int-to-long v2, v1

    const-string v0, "conditions"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/localytics/android/InAppManager;->_saveInAppConditions(JLjava/util/List;)V

    .line 307
    :try_start_2
    const-string v0, "display_events"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toList(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    .line 312
    :goto_4
    if-eqz v7, :cond_5

    .line 314
    int-to-long v2, v1

    invoke-direct {p0, v2, v3, v7}, Lcom/localytics/android/InAppManager;->_bindRuleToEvents(JLjava/util/List;)V

    :cond_5
    move v0, v1

    .line 318
    goto/16 :goto_0

    .line 292
    :cond_6
    const-string v0, "In-app campaign not found. Creating a new one."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_3

    .line 309
    :catch_0
    move-exception v0

    goto :goto_4

    .line 263
    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_7
    move v0, v6

    move v2, v6

    goto/16 :goto_1
.end method

.method _setInAppMessageAsDisplayed(I)Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1699
    .line 1702
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "frequency_capping_rules"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ignore_global"

    aput-object v4, v2, v3

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

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1703
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1705
    const-string v0, "ignore_global"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1707
    iget-object v2, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    iget-object v2, v2, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "INSERT INTO %s VALUES (?, datetime(\'%s\'), ?);"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "campaigns_displayed"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v7}, Lcom/localytics/android/LocalyticsDao;->getTimeStringForSQLite()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1719
    if-eqz v1, :cond_0

    .line 1721
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v6

    .line 1725
    :goto_0
    return v0

    .line 1719
    :cond_1
    if-eqz v1, :cond_2

    .line 1721
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    .line 1725
    goto :goto_0

    .line 1719
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_3

    .line 1721
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1719
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method _setInAppMessageAsNotDisplayed(I)Z
    .locals 13

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1730
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1731
    const/4 v8, 0x0

    .line 1734
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "campaigns_displayed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "date"

    aput-object v4, v2, v3

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v10, "campaign_id"

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const-string v5, "%s DESC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "date"

    aput-object v12, v10, v11

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1739
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1741
    const-string v0, "date"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1742
    iget-object v2, p0, Lcom/localytics/android/InAppManager;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v3, "campaigns_displayed"

    const-string v4, "%s = ? AND %s = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v10, "campaign_id"

    aput-object v10, v5, v8

    const/4 v8, 0x1

    const-string v10, "date"

    aput-object v10, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v9, v5, v8

    const/4 v8, 0x1

    aput-object v0, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lez v0, :cond_1

    move v0, v6

    .line 1749
    :goto_0
    if-eqz v1, :cond_0

    .line 1751
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1755
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v7

    .line 1742
    goto :goto_0

    .line 1749
    :cond_2
    if-eqz v1, :cond_3

    .line 1751
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 1755
    goto :goto_1

    .line 1749
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_4

    .line 1751
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1749
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method protected _triggerMessage(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1083
    const-string v0, "campaign_id"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    .line 1084
    const-string v1, "control_group"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    .line 1085
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1087
    invoke-virtual {p0, v0}, Lcom/localytics/android/InAppManager;->_setInAppMessageAsDisplayed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-direct {p0, p1}, Lcom/localytics/android/InAppManager;->_tagAmpActionEventForControlGroup(Lcom/localytics/android/MarketingMessage;)V

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/localytics/android/InAppManager;->_tryDisplayingInAppCampaign(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)V

    goto :goto_0
.end method

.method _tryDisplayingInAppCampaign(Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1591
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/localytics/android/InAppManager$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/localytics/android/InAppManager$4;-><init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1695
    return-void
.end method

.method _tryDisplayingInAppCampaign(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/MarketingMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1583
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/localytics/android/InAppManager;->_tryDisplayingInAppCampaign(Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)V

    .line 1584
    return-void
.end method

.method _validateAndStoreFrequencyCappingRule(Ljava/util/Map;Ljava/lang/Integer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 671
    .line 672
    const-string v0, "frequency_capping"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 673
    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/InAppManager;->_validateFrequencyCappingRule(Ljava/util/Map;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 675
    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRule(Ljava/util/Map;Ljava/lang/Integer;)Z

    move-result v2

    .line 681
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v2

    .line 673
    goto :goto_0

    .line 677
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 679
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/localytics/android/InAppManager;->DEFAULT_FREQUENCY_CAPPING_RULE:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/InAppManager;->_saveFrequencyCappingRule(Ljava/util/Map;Ljava/lang/Integer;)Z

    move-result v2

    goto :goto_1
.end method

.method _validateFrequencyCappingRule(Ljava/util/Map;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 501
    if-eqz p2, :cond_0

    sget-object v0, Lcom/localytics/android/InAppManager;->GLOBAL_FREQUENCY_CAPPING_RULE_REQUIRED_KEYS:[Ljava/lang/String;

    :goto_0
    array-length v4, v0

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 503
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v2

    .line 572
    :goto_2
    return v0

    .line 501
    :cond_0
    sget-object v0, Lcom/localytics/android/InAppManager;->INDIVIDUAL_FREQUENCY_CAPPING_RULE_REQUIRED_KEYS:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 509
    :cond_2
    const-string v0, "display_frequencies"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 510
    new-array v1, v7, [Ljava/lang/String;

    const-string v4, "days"

    aput-object v4, v1, v2

    const-string v4, "count"

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/InAppManager;->_checkFrequencyCappingRuleArray(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    .line 512
    goto :goto_2

    .line 514
    :cond_3
    invoke-virtual {p0, v0}, Lcom/localytics/android/InAppManager;->_additionalFCDisplayFrequencyRulesValidation(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 516
    goto :goto_2

    .line 519
    :cond_4
    const-string v0, "blackout_rules"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 520
    if-eqz v0, :cond_e

    .line 522
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v3, :cond_5

    move v0, v2

    .line 524
    goto :goto_2

    .line 528
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 530
    const-string v1, "times"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "dates"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "weekdays"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    move v0, v2

    .line 534
    goto :goto_2

    .line 538
    :cond_7
    const-string v1, "times"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 539
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "start"

    aput-object v6, v5, v2

    const-string v6, "end"

    aput-object v6, v5, v3

    invoke-virtual {p0, v1, v5}, Lcom/localytics/android/InAppManager;->_checkFrequencyCappingRuleArray(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    move v0, v2

    .line 541
    goto :goto_2

    .line 543
    :cond_8
    sget-object v5, Lcom/localytics/android/InAppManager;->TIME_SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v1, v5}, Lcom/localytics/android/InAppManager;->_additionalFCDatesAndTimesRulesValidation(Ljava/util/List;Ljava/text/SimpleDateFormat;)Z

    move-result v1

    if-nez v1, :cond_9

    move v0, v2

    .line 545
    goto/16 :goto_2

    .line 548
    :cond_9
    const-string v1, "dates"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 549
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "start"

    aput-object v6, v5, v2

    const-string v6, "end"

    aput-object v6, v5, v3

    invoke-virtual {p0, v1, v5}, Lcom/localytics/android/InAppManager;->_checkFrequencyCappingRuleArray(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    move v0, v2

    .line 551
    goto/16 :goto_2

    .line 553
    :cond_a
    sget-object v5, Lcom/localytics/android/InAppManager;->DATE_SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v1, v5}, Lcom/localytics/android/InAppManager;->_additionalFCDatesAndTimesRulesValidation(Ljava/util/List;Ljava/text/SimpleDateFormat;)Z

    move-result v1

    if-nez v1, :cond_b

    move v0, v2

    .line 555
    goto/16 :goto_2

    .line 558
    :cond_b
    const-string v1, "weekdays"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 559
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v3, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x7

    if-le v1, v5, :cond_d

    :cond_c
    move v0, v2

    .line 561
    goto/16 :goto_2

    .line 563
    :cond_d
    invoke-virtual {p0, v0}, Lcom/localytics/android/InAppManager;->_additionalFCWeekdaysRulesValidation(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 565
    goto/16 :goto_2

    :cond_e
    move v0, v3

    .line 572
    goto/16 :goto_2
.end method

.method protected _validateInAppMessage(Lcom/localytics/android/MarketingMessage;)Z
    .locals 10

    .prologue
    .line 379
    const-string v0, "campaign_id"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    .line 380
    const-string v1, "rule_name"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    const-string v2, "display_events"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 382
    const-string v3, "expiration"

    invoke-static {p1, v3}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    .line 383
    const-string v4, "location"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 385
    iget-object v5, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v5}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 388
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    int-to-long v0, v3

    cmp-long v0, v0, v6

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dismissCurrentInAppMessage()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "marketing_dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 119
    instance-of v1, v0, Lcom/localytics/android/InAppDialogFragment;

    if-eqz v1, :cond_0

    .line 121
    check-cast v0, Lcom/localytics/android/InAppDialogFragment;

    .line 122
    invoke-virtual {v0}, Lcom/localytics/android/InAppDialogFragment;->dismissCampaign()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "Localytics library threw an uncaught exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getInAppMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    new-instance v1, Lcom/localytics/android/InAppManager$12;

    invoke-direct {v1, p0}, Lcom/localytics/android/InAppManager$12;-><init>(Lcom/localytics/android/InAppManager;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->getList(Ljava/util/concurrent/Callable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method setFragmentManager(Landroid/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 107
    return-void
.end method

.method showInAppTest()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1992
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    if-nez v0, :cond_1

    .line 2320
    :cond_0
    :goto_0
    return-void

    .line 1997
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "marketing_test_mode_button"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "marketing_test_mode_list"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2002
    invoke-static {}, Lcom/localytics/android/TestModeButton;->newInstance()Lcom/localytics/android/TestModeButton;

    move-result-object v0

    .line 2003
    invoke-static {}, Lcom/localytics/android/TestModeListView;->newInstance()Lcom/localytics/android/TestModeListView;

    move-result-object v1

    .line 2004
    iget-object v2, p0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 2005
    new-instance v3, Lcom/localytics/android/InAppMessagesAdapter;

    invoke-direct {v3, v2, p0}, Lcom/localytics/android/InAppMessagesAdapter;-><init>(Landroid/content/Context;Lcom/localytics/android/InAppManager;)V

    .line 2007
    invoke-virtual {v1, v3}, Lcom/localytics/android/TestModeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2012
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 2014
    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/localytics/android/InAppManager$5;

    invoke-direct {v6, p0, v3, v1}, Lcom/localytics/android/InAppManager$5;-><init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/InAppMessagesAdapter;Lcom/localytics/android/TestModeListView;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    invoke-virtual {v0, v4}, Lcom/localytics/android/TestModeButton;->setCallbacks(Ljava/util/Map;)Lcom/localytics/android/TestModeButton;

    .line 2034
    iget-object v4, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v5, "marketing_test_mode_button"

    invoke-virtual {v0, v4, v5}, Lcom/localytics/android/TestModeButton;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2040
    iget-object v4, p0, Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2045
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 2048
    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/localytics/android/InAppManager$6;

    invoke-direct {v6, p0, v0}, Lcom/localytics/android/InAppManager$6;-><init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/TestModeButton;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v5, Lcom/localytics/android/InAppManager$7;

    invoke-direct {v5, p0, v3}, Lcom/localytics/android/InAppManager$7;-><init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/InAppMessagesAdapter;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lcom/localytics/android/InAppManager$8;

    invoke-direct {v3, p0, v2}, Lcom/localytics/android/InAppManager$8;-><init>(Lcom/localytics/android/InAppManager;Landroid/content/Context;)V

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lcom/localytics/android/InAppManager$9;

    invoke-direct {v3, p0, v2}, Lcom/localytics/android/InAppManager$9;-><init>(Lcom/localytics/android/InAppManager;Landroid/content/Context;)V

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2169
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lcom/localytics/android/InAppManager$10;

    invoke-direct {v3, p0, v2}, Lcom/localytics/android/InAppManager$10;-><init>(Lcom/localytics/android/InAppManager;Landroid/content/Context;)V

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2209
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lcom/localytics/android/InAppManager$11;

    invoke-direct {v3, p0, v2}, Lcom/localytics/android/InAppManager$11;-><init>(Lcom/localytics/android/InAppManager;Landroid/content/Context;)V

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2314
    invoke-virtual {v1, v4}, Lcom/localytics/android/TestModeListView;->setCallbacks(Ljava/util/Map;)Lcom/localytics/android/TestModeListView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2316
    :catch_0
    move-exception v0

    .line 2318
    const-string v1, "Exception while attempting to show in-app test"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
