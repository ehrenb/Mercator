.class public Lcm/aptoide/pt/v8engine/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/analytics/Analytics$AccountEvents;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$RootInstall;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$File;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$LocalyticsSessionControl;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$HomePageEditorsChoice;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$LTV;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$ViewedApplication;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$DownloadComplete;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$ClickedOnInstallButton;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$ApplicationLaunch;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$ApplicationInstall;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$Search;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$DownloadManager;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$Updates;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$Stores;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$Top;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$AdultContent;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$Home;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$BackupApps;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$Facebook;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$Settings;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$ExcludedUpdates;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$SendFeedback;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$ScheduledDownloads;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$Rollback;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$UserRegister;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$Tutorial;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$Screens;,
        Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "Action"

.field private static final ACTIVATE_FLURRY:Z = true

.field private static ACTIVATE_LOCALYTICS:Z = false

.field private static final ALL:I = 0x7fffffff

.field private static final FABRIC:I = 0x4

.field private static final FLURRY:I = 0x2

.field private static final LOCALYTICS:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final aptoideClientUuid:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field static instance:Lcm/aptoide/pt/v8engine/analytics/Analytics;

.field private static isFirstSession:Z

.field private static final unwantedValuesList:[Ljava/lang/String;


# instance fields
.field private saver:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 50
    const-class v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;

    .line 56
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ads-highlighted"

    aput-object v2, v0, v1

    const-string v1, "apps-group-trending"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "apps-group-local-top-apps"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "timeline-your-friends-installs"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "apps-group-latest-applications"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "apps-group-top-apps-in-this-store"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "apps-group-aptoide-publishers"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "stores-group-top-stores"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "stores-group-featured-stores"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "reviews-group-reviews"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "apps-group-top-games"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "apps-group-top-stores"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "apps-group-featured-stores"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "apps-group-editors-choice"

    aput-object v2, v0, v1

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->unwantedValuesList:[Ljava/lang/String;

    .line 65
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;

    new-instance v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;-><init>()V

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics;-><init>(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;)V

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->instance:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    .line 66
    sput-boolean v3, Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z

    .line 70
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 71
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->aptoideClientUuid:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 72
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->saver:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;

    .line 78
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 46
    sput-boolean p0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->isFirstSession:Z

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->logFabricEvent(Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .prologue
    .line 46
    sput-boolean p0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->isFirstSession:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcm/aptoide/pt/interfaces/AptoideClientUUID;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->aptoideClientUuid:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/util/HashMap;I)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/util/HashMap;I)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->logFacebookEvents(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->logFacebookEvents(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->unwantedValuesList:[Ljava/lang/String;

    return-object v0
.end method

.method private static checkAcceptability(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    if-ne p1, v0, :cond_0

    sget-boolean v2, Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z

    if-nez v2, :cond_0

    .line 129
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;

    const-string v2, "Localytics Disabled "

    invoke-static {v0, v2}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return v1

    .line 131
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 135
    :cond_1
    and-int v2, p0, p1

    if-ne v2, p1, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static checkBuildVariant()Z
    .locals 2

    .prologue
    .line 81
    const-string v0, "release"

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "prod"

    const-string v1, "dev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcm/aptoide/pt/v8engine/analytics/Analytics;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->instance:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    return-object v0
.end method

.method private static logFabricEvent(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->checkAcceptability(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    new-instance v2, Lcom/a/a/a/k;

    invoke-direct {v2, p0}, Lcom/a/a/a/k;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/a/a/a/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/c;

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {}, Lcom/a/a/a/a;->c()Lcom/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/a/a/a;->a(Lcom/a/a/a/k;)V

    .line 165
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fabric Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_1
    return-void
.end method

.method private static logFacebookEvents(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 151
    const-string v0, "release"

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle$Application;->facebookLogger:Lcom/facebook/a/g;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/a/g;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static logFacebookEvents(Ljava/lang/String;Ljava/util/Map;)V
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
    .line 140
    const-string v0, "release"

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 144
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_1
    invoke-static {p0, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->logFacebookEvents(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private remove(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->saver:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;->remove(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V

    .line 199
    return-void
.end method

.method private static track(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 172
    :try_start_0
    sget-boolean v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z

    if-nez v0, :cond_0

    .line 174
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->checkAcceptability(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;)V

    .line 176
    :cond_1
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->checkAcceptability(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/b/a/a;->a(Ljava/lang/String;)Lcom/b/a/c;

    .line 178
    :cond_2
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 87
    :try_start_0
    sget-boolean v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z

    if-nez v0, :cond_0

    .line 89
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p0, v0, p3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 95
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static track(Ljava/lang/String;Ljava/util/HashMap;I)V
    .locals 3

    .prologue
    .line 103
    :try_start_0
    sget-boolean v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z

    if-nez v0, :cond_0

    .line 106
    :cond_0
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->checkAcceptability(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {p0, p1}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 108
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Localytics Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_1
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->checkAcceptability(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    invoke-static {p0, p1}, Lcom/b/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/b/a/c;

    .line 113
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flurry Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_2
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/Class;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;",
            ">;)",
            "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->saver:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;

    move-result-object v0

    return-object v0
.end method

.method public save(Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/Analytics;->saver:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;->save(Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V

    .line 186
    return-void
.end method

.method public sendEvent(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V
    .locals 0

    .prologue
    .line 193
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;->send()V

    .line 194
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->remove(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V

    .line 195
    return-void
.end method
