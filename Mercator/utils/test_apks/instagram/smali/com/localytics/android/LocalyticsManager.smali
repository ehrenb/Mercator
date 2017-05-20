.class Lcom/localytics/android/LocalyticsManager;
.super Ljava/lang/Object;
.source "LocalyticsManager.java"

# interfaces
.implements Lcom/localytics/android/LocalyticsDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;,
        Lcom/localytics/android/LocalyticsManager$HandlerWrapper;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/localytics/android/LocalyticsManager;

.field private static mActivityCounter:I

.field private static mIsAutoIntegrate:Z


# instance fields
.field private mAnalyticsHost:Ljava/lang/String;

.field private mAppContext:Landroid/content/Context;

.field private mAppKey:Ljava/lang/String;

.field private mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

.field private mManifestHost:Ljava/lang/String;

.field private mMessagingHost:Ljava/lang/String;

.field private mProfilesHost:Ljava/lang/String;

.field private mProxy:Ljava/net/Proxy;

.field private mPushApiHost:Ljava/lang/String;

.field private mTestDevicesHost:Ljava/lang/String;

.field private mTestPushEventsHost:Ljava/lang/String;

.field private mUseNewCreativeLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    new-instance v0, Lcom/localytics/android/LocalyticsManager;

    invoke-direct {v0}, Lcom/localytics/android/LocalyticsManager;-><init>()V

    sput-object v0, Lcom/localytics/android/LocalyticsManager;->INSTANCE:Lcom/localytics/android/LocalyticsManager;

    .line 49
    sput v1, Lcom/localytics/android/LocalyticsManager;->mActivityCounter:I

    .line 50
    sput-boolean v1, Lcom/localytics/android/LocalyticsManager;->mIsAutoIntegrate:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "analytics.localytics.com"

    iput-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAnalyticsHost:Ljava/lang/String;

    .line 39
    const-string v0, "analytics.localytics.com"

    iput-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mMessagingHost:Ljava/lang/String;

    .line 40
    const-string v0, "profile.localytics.com"

    iput-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mProfilesHost:Ljava/lang/String;

    .line 41
    const-string v0, "manifest.localytics.com"

    iput-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mManifestHost:Ljava/lang/String;

    .line 42
    const-string v0, "pushapi.localytics.com"

    iput-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mPushApiHost:Ljava/lang/String;

    .line 43
    const-string v0, "dashboard.localytics.com"

    iput-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mTestDevicesHost:Ljava/lang/String;

    .line 44
    const-string v0, "dashboard.localytics.com"

    iput-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mTestPushEventsHost:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/localytics/android/LocalyticsManager;)Lcom/localytics/android/MarketingHandler;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    return-object v0
.end method

.method private getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    if-nez v0, :cond_0

    .line 984
    new-instance v0, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;-><init>(Lcom/localytics/android/LocalyticsManager$1;)V

    throw v0

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    iget-object v0, v0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->analyticsHandler:Lcom/localytics/android/AnalyticsHandler;

    return-object v0
.end method

.method private getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 2

    .prologue
    .line 1038
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1040
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1047
    return-object v0
.end method

.method static getInstance()Lcom/localytics/android/LocalyticsManager;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/localytics/android/LocalyticsManager;->INSTANCE:Lcom/localytics/android/LocalyticsManager;

    return-object v0
.end method

.method private getLocationHandler()Lcom/localytics/android/LocationHandler;
    .locals 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    if-nez v0, :cond_0

    .line 1024
    new-instance v0, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;-><init>(Lcom/localytics/android/LocalyticsManager$1;)V

    throw v0

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    iget-object v0, v0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->locationHandler:Lcom/localytics/android/LocationHandler;

    return-object v0
.end method

.method private getManifestHandler()Lcom/localytics/android/ManifestHandler;
    .locals 2

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    if-nez v0, :cond_0

    .line 1014
    new-instance v0, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;-><init>(Lcom/localytics/android/LocalyticsManager$1;)V

    throw v0

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    iget-object v0, v0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->manifestHandler:Lcom/localytics/android/ManifestHandler;

    return-object v0
.end method

.method private getMarketingHandler()Lcom/localytics/android/MarketingHandler;
    .locals 2

    .prologue
    .line 992
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    if-nez v0, :cond_0

    .line 994
    new-instance v0, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;-><init>(Lcom/localytics/android/LocalyticsManager$1;)V

    throw v0

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    iget-object v0, v0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->marketingHandler:Lcom/localytics/android/MarketingHandler;

    return-object v0
.end method

.method private getProfileHandler()Lcom/localytics/android/ProfileHandler;
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    if-nez v0, :cond_0

    .line 1004
    new-instance v0, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;-><init>(Lcom/localytics/android/LocalyticsManager$1;)V

    throw v0

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    iget-object v0, v0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->profileHandler:Lcom/localytics/android/ProfileHandler;

    return-object v0
.end method

.method private scaleDownBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    .line 1064
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1065
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1068
    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    .line 1071
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1073
    float-to-int v0, p2

    div-float v1, p2, v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {p1, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1080
    :goto_0
    if-nez p1, :cond_0

    .line 1082
    const-string v0, "Cannot scale down the new dismiss button image."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1089
    :cond_0
    return-object p1

    .line 1077
    :cond_1
    mul-float v0, p2, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    float-to-int v1, p2

    invoke-static {p1, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addProfileAttributesToSet(Ljava/lang/String;[J)V
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->addProfileAttributesToSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 376
    return-void
.end method

.method public addProfileAttributesToSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->addProfileAttributesToSet(Ljava/lang/String;[JLjava/lang/String;)V

    .line 371
    return-void
.end method

.method public addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 386
    return-void
.end method

.method public addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 396
    return-void
.end method

.method public addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public areNotificationsDisabled()Z
    .locals 1

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->areNotificationsDisabled()Z

    move-result v0

    return v0
.end method

.method public autoIntegrate(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/localytics/android/LocalyticsActivityLifecycleCallbacks;

    invoke-direct {v0, p1, p2}, Lcom/localytics/android/LocalyticsActivityLifecycleCallbacks;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 72
    return-void
.end method

.method public clearInAppMessageDisplayActivity()V
    .locals 2

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->setFragmentManager(Landroid/app/FragmentManager;)V

    .line 521
    return-void
.end method

.method public closeSession()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->tagDismissForInboxDetailFragments()V

    .line 182
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->closeSession()V

    .line 183
    return-void
.end method

.method decrementActivityCounter()V
    .locals 1

    .prologue
    .line 939
    sget v0, Lcom/localytics/android/LocalyticsManager;->mActivityCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/localytics/android/LocalyticsManager;->mActivityCounter:I

    .line 940
    return-void
.end method

.method public decrementProfileAttribute(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 445
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/localytics/android/LocalyticsManager;->decrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 446
    return-void
.end method

.method public decrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 4

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    const-wide/16 v2, -0x1

    mul-long/2addr v2, p2

    invoke-virtual {p4}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/localytics/android/ProfileHandler;->incrementProfileAttribute(Ljava/lang/String;JLjava/lang/String;)V

    .line 441
    return-void
.end method

.method public deleteProfileAttribute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 455
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, v0}, Lcom/localytics/android/LocalyticsManager;->deleteProfileAttribute(Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 456
    return-void
.end method

.method public deleteProfileAttribute(Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/localytics/android/ProfileHandler;->deleteProfileAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public dismissCurrentInAppMessage()V
    .locals 3

    .prologue
    .line 530
    new-instance v0, Lcom/localytics/android/LocalyticsManager$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/LocalyticsManager$1;-><init>(Lcom/localytics/android/LocalyticsManager;)V

    .line 545
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 547
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public downloadInboxThumbnails(Ljava/util/List;)V
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
    .line 720
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->downloadInboxThumbnails(Ljava/util/List;)V

    .line 721
    return-void
.end method

.method public getAnalyticsHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAnalyticsHost:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidVersionInt()I
    .locals 1

    .prologue
    .line 1095
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedCustomDimensions()Ljava/util/Map;
    .locals 1
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
    .line 301
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->getCachedCustomDimensions()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCachedIdentifiers()Ljava/util/Map;
    .locals 1
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
    .line 296
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->getCachedIdentifiers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 1101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCustomDimension(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->getCustomDimension(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 790
    const-string v0, "customer_id"

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocalyticsManager;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerIdFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 917
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->getCustomerIdFuture()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method public getGeofencesToMonitor(DD)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getLocationHandler()Lcom/localytics/android/LocationHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/localytics/android/LocationHandler;->getGeofencesToMonitor(DD)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInAppMessageDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    .locals 1

    .prologue
    .line 898
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->getInAppDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    move-result-object v0

    return-object v0
.end method

.method public getInboxCampaigns()Ljava/util/List;
    .locals 1
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
    .line 687
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->getInboxCampaigns()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInboxCampaignsUnreadCount()I
    .locals 1

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->getInboxCampaignsUnreadCount()I

    move-result v0

    return v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManifestHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mManifestHost:Ljava/lang/String;

    return-object v0
.end method

.method public getMessagingHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mMessagingHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilesHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mProfilesHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mProxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getPushApiHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mPushApiHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPushRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->getPushRegistrationID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->getPushSenderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTestDevicesHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mTestDevicesHost:Ljava/lang/String;

    return-object v0
.end method

.method public getTestPushEventsHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mTestPushEventsHost:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStringForSQLite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1113
    const-string v0, "now"

    return-object v0
.end method

.method public handleNotificationReceived(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->handleNotificationReceived(Landroid/os/Bundle;)V

    .line 913
    return-void
.end method

.method public handlePushNotificationOpened(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->handlePushNotificationOpened(Landroid/content/Intent;)V

    .line 600
    return-void
.end method

.method public handleTestMode(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->handleTestModeIntent(Landroid/content/Intent;)V

    .line 610
    return-void
.end method

.method incrementActivityCounter()V
    .locals 1

    .prologue
    .line 928
    sget v0, Lcom/localytics/android/LocalyticsManager;->mActivityCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/localytics/android/LocalyticsManager;->mActivityCounter:I

    .line 929
    return-void
.end method

.method public incrementProfileAttribute(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 435
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/localytics/android/LocalyticsManager;->incrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 436
    return-void
.end method

.method public incrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p4}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/localytics/android/ProfileHandler;->incrementProfileAttribute(Ljava/lang/String;JLjava/lang/String;)V

    .line 431
    return-void
.end method

.method public declared-synchronized integrate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    const-string v0, "com.localytics.android"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.test.IsolatedContext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.test.RenamingDelegatingContext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context.getPackageName() returned %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.test.RenamingDelegatingContext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    if-nez v0, :cond_2

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity context use is not supported. You must call integrate() or registerActivityLifecycleCallbacks() from your Application class (see integration guide). If migrating from 3.0, see https://support.localytics.com/Android_SDK_Migration_3.0_to_3.x"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2
    if-eqz v0, :cond_4

    :goto_1
    iput-object p1, p0, Lcom/localytics/android/LocalyticsManager;->mAppContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/localytics/android/LocalyticsManager;->mAppKey:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/localytics/android/DatapointHelper;->getLocalyticsAppKeyOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppKey:Ljava/lang/String;

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App key must be declared in a meta data tag in AndroidManifest.xml or passed into integrate(final Context context, final String localyticsKey) or new LocalyticsActivityLifecycleCallbacks(final Context context, final String localyticsKey) (see integration guide)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppContext:Landroid/content/Context;

    const-string v1, "com.google.android.gms.gcm.GcmReceiver"

    invoke-static {v0, v1}, Lcom/localytics/android/ManifestUtil;->isReceiverInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppContext:Landroid/content/Context;

    const-class v1, Lcom/localytics/android/PushTrackingActivity;

    invoke-static {v0, v1}, Lcom/localytics/android/ManifestUtil;->isActivityInManifest(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 116
    const-string v0, "PushTrackingActivity is not declared in AndroidManifest.xml (see integration guide)."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 119
    :cond_6
    new-instance v2, Lcom/localytics/android/AnalyticsHandler;

    const-class v0, Lcom/localytics/android/AnalyticsHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/LocalyticsManager;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/localytics/android/AnalyticsHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 120
    new-instance v3, Lcom/localytics/android/MarketingHandler;

    const-class v0, Lcom/localytics/android/MarketingHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/LocalyticsManager;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lcom/localytics/android/MarketingHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 121
    new-instance v4, Lcom/localytics/android/ProfileHandler;

    const-class v0, Lcom/localytics/android/ProfileHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/LocalyticsManager;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lcom/localytics/android/ProfileHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 122
    new-instance v5, Lcom/localytics/android/ManifestHandler;

    const-class v0, Lcom/localytics/android/ManifestHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/LocalyticsManager;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, p0, v0}, Lcom/localytics/android/ManifestHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 123
    new-instance v6, Lcom/localytics/android/LocationHandler;

    const-class v0, Lcom/localytics/android/LocationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/LocalyticsManager;->getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lcom/localytics/android/LocationHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 125
    new-instance v0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;-><init>(Lcom/localytics/android/LocalyticsManager;Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/ProfileHandler;Lcom/localytics/android/ManifestHandler;Lcom/localytics/android/LocationHandler;Lcom/localytics/android/LocalyticsManager$1;)V

    iput-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mHandlerWrapper:Lcom/localytics/android/LocalyticsManager$HandlerWrapper;

    .line 127
    invoke-virtual {v2, v3}, Lcom/localytics/android/AnalyticsHandler;->addListener(Lcom/localytics/android/AnalyticsListener;)V

    .line 128
    invoke-virtual {v2, v5}, Lcom/localytics/android/AnalyticsHandler;->addListener(Lcom/localytics/android/AnalyticsListener;)V

    .line 129
    invoke-virtual {v5, v3}, Lcom/localytics/android/ManifestHandler;->addListener(Lcom/localytics/android/ManifestListener;)V

    .line 130
    invoke-virtual {v5, v6}, Lcom/localytics/android/ManifestHandler;->addListener(Lcom/localytics/android/ManifestListener;)V

    .line 131
    invoke-virtual {v6, v2}, Lcom/localytics/android/LocationHandler;->addListener(Lcom/localytics/android/LocationListener;)V

    .line 132
    invoke-virtual {v6, v5}, Lcom/localytics/android/LocationHandler;->addListener(Lcom/localytics/android/LocationListener;)V

    .line 133
    invoke-virtual {v6, v3}, Lcom/localytics/android/LocationHandler;->addListener(Lcom/localytics/android/LocationListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public isAppInForeground()Z
    .locals 1

    .prologue
    .line 952
    sget v0, Lcom/localytics/android/LocalyticsManager;->mActivityCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoIntegrate()Z
    .locals 1

    .prologue
    .line 966
    sget-boolean v0, Lcom/localytics/android/LocalyticsManager;->mIsAutoIntegrate:Z

    return v0
.end method

.method public isLocationMonitoringEnabled()Z
    .locals 1

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getLocationHandler()Lcom/localytics/android/LocationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocationHandler;->isLocationMonitoringEnabled()Z

    move-result v0

    return v0
.end method

.method public isOptedOut()Z
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->isOptedOut()Z

    move-result v0

    return v0
.end method

.method public isTestModeEnabled()Z
    .locals 1

    .prologue
    .line 627
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isUsingNewCreativeLocation()Z
    .locals 1

    .prologue
    .line 1136
    iget-boolean v0, p0, Lcom/localytics/android/LocalyticsManager;->mUseNewCreativeLocation:Z

    return v0
.end method

.method public openSession()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->openSession()V

    .line 177
    return-void
.end method

.method public priorityDownloadCreative(Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V
    .locals 1

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/MarketingHandler;->priorityDownloadCreative(Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V

    .line 726
    return-void
.end method

.method public refreshInboxCampaigns(Lcom/localytics/android/InboxRefreshListener;)V
    .locals 1

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->canRefreshInbox()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->setInboxRefreshCallback(Lcom/localytics/android/InboxRefreshListener;)V

    .line 695
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getManifestHandler()Lcom/localytics/android/ManifestHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/ManifestHandler;->refreshManifest()V

    .line 701
    :goto_0
    return-void

    .line 699
    :cond_0
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->getInboxCampaignsAsync(Lcom/localytics/android/InboxRefreshListener;)V

    goto :goto_0
.end method

.method public registerPush(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->registerPush(Ljava/lang/String;J)V

    .line 558
    return-void
.end method

.method public registerPush(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->registerPush(Ljava/lang/String;J)V

    .line 563
    return-void
.end method

.method public removeProfileAttributesFromSet(Ljava/lang/String;[J)V
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->removeProfileAttributesFromSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 406
    return-void
.end method

.method public removeProfileAttributesFromSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->removeProfileAttributesFromSet(Ljava/lang/String;[JLjava/lang/String;)V

    .line 401
    return-void
.end method

.method public removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 416
    return-void
.end method

.method public removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 425
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 426
    return-void
.end method

.method public removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public retrieveTokenFromInstanceId()V
    .locals 1

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->retrieveTokenFromInstanceId()V

    .line 574
    return-void
.end method

.method public setAnalyticsHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/localytics/android/LocalyticsManager;->mAnalyticsHost:Ljava/lang/String;

    .line 823
    return-void
.end method

.method public setAnalyticsListener(Lcom/localytics/android/AnalyticsListener;)V
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->setDeveloperListener(Lcom/localytics/android/AnalyticsListener;)V

    .line 292
    return-void
.end method

.method public setCustomDimension(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/AnalyticsHandler;->setCustomDimension(ILjava/lang/String;)V

    .line 281
    return-void
.end method

.method setCustomer(Lcom/localytics/android/Customer;)V
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getCustomerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getCustomerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocalyticsManager;->setCustomerId(Ljava/lang/String;)V

    .line 464
    :cond_0
    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getFirstName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 466
    const-string v0, "first_name"

    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_1
    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getLastName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 470
    const-string v0, "last_name"

    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_2
    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 474
    const-string v0, "full_name"

    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_3
    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 478
    const-string v0, "email"

    invoke-virtual {p1}, Lcom/localytics/android/Customer;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_4
    return-void
.end method

.method public setCustomerId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 785
    const-string v0, "customer_id"

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/LocalyticsManager;->setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/AnalyticsHandler;->setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public setInAppMessageDismissButtonImage(Landroid/content/res/Resources;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 635
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 636
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 637
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 638
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 639
    if-nez v0, :cond_0

    .line 641
    const-string v0, "Cannot load the new dismiss button image. Is the resource id corrected?"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 642
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->setDismissButtonImage(Landroid/graphics/Bitmap;)V

    .line 658
    :goto_0
    return-void

    .line 647
    :cond_0
    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 648
    invoke-direct {p0, v0, v1}, Lcom/localytics/android/LocalyticsManager;->scaleDownBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 651
    if-eq v1, v0, :cond_1

    .line 653
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 657
    :cond_1
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->setDismissButtonImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setInAppMessageDismissButtonImage(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 662
    const/4 v0, 0x0

    .line 664
    if-eqz p2, :cond_0

    .line 667
    const/4 v0, 0x1

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 668
    invoke-direct {p0, p2, v0}, Lcom/localytics/android/LocalyticsManager;->scaleDownBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 671
    if-ne v0, p2, :cond_0

    .line 673
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 677
    :cond_0
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/localytics/android/MarketingHandler;->setDismissButtonImage(Landroid/graphics/Bitmap;)V

    .line 678
    return-void
.end method

.method public setInAppMessageDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V
    .locals 1

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->setInAppDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V

    .line 894
    return-void
.end method

.method public setInAppMessageDisplayActivity(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 504
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attached activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 509
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->setFragmentManager(Landroid/app/FragmentManager;)V

    .line 511
    invoke-virtual {p0}, Lcom/localytics/android/LocalyticsManager;->isTestModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->showMarketingTest()V

    .line 516
    :cond_1
    return-void
.end method

.method public setInboxCampaignRead(JZ)V
    .locals 1

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/localytics/android/MarketingHandler;->setInboxCampaignRead(JZ)V

    .line 706
    return-void
.end method

.method public setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/MarketingHandler;->setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V

    .line 716
    return-void
.end method

.method setIsAutoIntegrate(Z)V
    .locals 0

    .prologue
    .line 977
    sput-boolean p1, Lcom/localytics/android/LocalyticsManager;->mIsAutoIntegrate:Z

    .line 978
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->setLocation(Landroid/location/Location;)V

    .line 801
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getManifestHandler()Lcom/localytics/android/ManifestHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/ManifestHandler;->locationUpdated()V

    .line 802
    return-void
.end method

.method public setLocationListener(Lcom/localytics/android/LocationListener;)V
    .locals 1

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getLocationHandler()Lcom/localytics/android/LocationHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/LocationHandler;->setDeveloperListener(Lcom/localytics/android/LocationListener;)V

    .line 772
    return-void
.end method

.method public setLocationMonitoringEnabled(Z)V
    .locals 2

    .prologue
    .line 734
    invoke-static {}, Lcom/localytics/android/PlayServicesUtils;->isLocationAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must include the Play Services Location dependency to use this API."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_0
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getLocationHandler()Lcom/localytics/android/LocationHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/LocationHandler;->setLocationMonitoringEnabled(Z)V

    .line 740
    return-void
.end method

.method public setManifestHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 855
    iput-object p1, p0, Lcom/localytics/android/LocalyticsManager;->mManifestHost:Ljava/lang/String;

    .line 856
    return-void
.end method

.method public setMessagingHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/localytics/android/LocalyticsManager;->mMessagingHost:Ljava/lang/String;

    .line 834
    return-void
.end method

.method public setMessagingListener(Lcom/localytics/android/MessagingListener;)V
    .locals 1

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->setDeveloperListener(Lcom/localytics/android/MessagingListener;)V

    .line 683
    return-void
.end method

.method public setNotificationsDisabled(Z)V
    .locals 1

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->setNotificationsDisabled(Z)V

    .line 590
    return-void
.end method

.method public setOptedOut(Z)V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->setOptedOut(Z)V

    .line 166
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 315
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 316
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p4}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;JLjava/lang/String;)V

    .line 311
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 336
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 356
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;[J)V
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 326
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;[JLjava/lang/String;)V

    .line 321
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 346
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 366
    return-void
.end method

.method public setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 2

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v0

    invoke-virtual {p3}, Lcom/localytics/android/Localytics$ProfileScope;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/localytics/android/ProfileHandler;->setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public setProfilesHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/localytics/android/LocalyticsManager;->mProfilesHost:Ljava/lang/String;

    .line 845
    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/localytics/android/LocalyticsManager;->mProxy:Ljava/net/Proxy;

    .line 1125
    return-void
.end method

.method setPushApiHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/localytics/android/LocalyticsManager;->mPushApiHost:Ljava/lang/String;

    .line 861
    return-void
.end method

.method public setPushRegistrationId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->setPushRegistrationId(Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public setReferrerId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 907
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->setReferrerId(Ljava/lang/String;)V

    .line 908
    return-void
.end method

.method setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    sget-object v1, Lcom/localytics/android/Localytics$ProfileScope;->ORGANIZATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, v0, p2, v1}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 493
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return-void

    .line 491
    :cond_0
    sget-object v1, Lcom/localytics/android/Localytics$ProfileScope;->ORGANIZATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocalyticsManager;->deleteProfileAttribute(Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    goto :goto_0
.end method

.method setTestDevicesHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/localytics/android/LocalyticsManager;->mTestDevicesHost:Ljava/lang/String;

    .line 872
    return-void
.end method

.method public setTestModeEnabled(Z)V
    .locals 1

    .prologue
    .line 615
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 617
    invoke-static {p1}, Lcom/localytics/android/Constants;->setTestModeEnabled(Z)V

    .line 618
    if-eqz p1, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->showMarketingTest()V

    .line 623
    :cond_0
    return-void
.end method

.method setTestPushEventsHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/localytics/android/LocalyticsManager;->mTestPushEventsHost:Ljava/lang/String;

    .line 883
    return-void
.end method

.method public stoppedMonitoringAllGeofences()V
    .locals 1

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getLocationHandler()Lcom/localytics/android/LocationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocationHandler;->stoppedMonitoringAllGeofences()V

    .line 761
    return-void
.end method

.method public tagAddedToCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
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
    .line 210
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHandler;->tagAddedToCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 211
    return-void
.end method

.method public tagCompletedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 1
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
    .line 220
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->tagCompletedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    .line 221
    return-void
.end method

.method public tagContentRated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
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
    .line 240
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHandler;->tagContentRated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 241
    return-void
.end method

.method public tagContentViewed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
    .line 225
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/localytics/android/AnalyticsHandler;->tagContentViewed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 226
    return-void
.end method

.method public tagCustomerLoggedIn(Lcom/localytics/android/Customer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/Customer;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p0, p1}, Lcom/localytics/android/LocalyticsManager;->setCustomer(Lcom/localytics/android/Customer;)V

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->tagLoggedIn(Ljava/lang/String;Ljava/util/Map;)V

    .line 259
    return-void
.end method

.method public tagCustomerLoggedOut(Ljava/util/Map;)V
    .locals 1
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
    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocalyticsManager;->setCustomerId(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->tagLoggedOut(Ljava/util/Map;)V

    .line 265
    return-void
.end method

.method public tagCustomerRegistered(Lcom/localytics/android/Customer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/Customer;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p0, p1}, Lcom/localytics/android/LocalyticsManager;->setCustomer(Lcom/localytics/android/Customer;)V

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->tagRegistered(Ljava/lang/String;Ljava/util/Map;)V

    .line 250
    return-void
.end method

.method public tagEvent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 188
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/localytics/android/LocalyticsManager;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 189
    return-void
.end method

.method public tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    .line 194
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/localytics/android/LocalyticsManager;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 195
    return-void
.end method

.method public tagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 1
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
    .line 200
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/localytics/android/AnalyticsHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 201
    return-void
.end method

.method public tagInvited(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
    .line 269
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/AnalyticsHandler;->tagInvited(Ljava/lang/String;Ljava/util/Map;)V

    .line 270
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
    .line 205
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHandler;->tagPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 206
    return-void
.end method

.method public tagPushReceivedEvent(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingHandler;->tagPushReceivedEvent(Landroid/os/Bundle;)V

    .line 605
    return-void
.end method

.method public tagScreen(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/localytics/android/AnalyticsHandler;->tagScreen(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public tagSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 1
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
    .line 230
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/localytics/android/AnalyticsHandler;->tagSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 231
    return-void
.end method

.method public tagShared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
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
    .line 235
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/AnalyticsHandler;->tagShared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 236
    return-void
.end method

.method public tagStartedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 1
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
    .line 215
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/localytics/android/AnalyticsHandler;->tagStartedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    .line 216
    return-void
.end method

.method public triggerInAppMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
    .line 525
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getMarketingHandler()Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/MarketingHandler;->displayInAppMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 526
    return-void
.end method

.method public triggerRegion(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V
    .locals 1

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getLocationHandler()Lcom/localytics/android/LocationHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/LocationHandler;->triggerRegion(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V

    .line 750
    return-void
.end method

.method public triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .locals 1
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
    .line 754
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getLocationHandler()Lcom/localytics/android/LocationHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/localytics/android/LocationHandler;->triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    .line 755
    return-void
.end method

.method public upload()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/localytics/android/LocalyticsManager;->mAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/localytics/android/LocalyticsManager;->getCustomerIdFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 154
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getProfileHandler()Lcom/localytics/android/ProfileHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/localytics/android/ProfileHandler;->upload(Ljava/util/concurrent/Future;)V

    .line 155
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager;->getAnalyticsHandler()Lcom/localytics/android/AnalyticsHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/localytics/android/AnalyticsHandler;->upload(Ljava/util/concurrent/Future;)V

    .line 157
    :cond_0
    return-void
.end method

.method public useNewCreativeLocation(Z)V
    .locals 0

    .prologue
    .line 1130
    iput-boolean p1, p0, Lcom/localytics/android/LocalyticsManager;->mUseNewCreativeLocation:Z

    .line 1131
    return-void
.end method
