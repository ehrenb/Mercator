.class public Lcm/aptoide/pt/v8engine/install/InstalledIntentService;
.super Landroid/app/IntentService;
.source "InstalledIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;

.field private analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

.field private final installedRepository:Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

.field private final repository:Lcm/aptoide/pt/v8engine/repository/RollbackRepository;

.field private final subscriptions:Lrx/j/b;

.field private final updatesRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "InstalledIntentService"

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    .line 54
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getRollbackRepository()Lcm/aptoide/pt/v8engine/repository/RollbackRepository;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->repository:Lcm/aptoide/pt/v8engine/repository/RollbackRepository;

    .line 55
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getInstalledRepository()Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->installedRepository:Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    .line 56
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getUpdateRepository()Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->updatesRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    .line 58
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->subscriptions:Lrx/j/b;

    .line 59
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->getInstance()Lcm/aptoide/pt/v8engine/analytics/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    .line 60
    return-void
.end method

.method private checkAndBroadcastReferrer(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 138
    const-class v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    .line 139
    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;

    .line 141
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/InstalledIntentService;Ljava/lang/String;Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;)Lrx/b/b;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$5;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->subscriptions:Lrx/j/b;

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 160
    return-void
.end method

.method private checkAndLogNullPackageInfo(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageName null for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 224
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private confirmAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->repository:Lcm/aptoide/pt/v8engine/repository/RollbackRepository;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/RollbackRepository;->getNotConfirmedRollback(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/InstalledIntentService;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/InstalledIntentService;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 92
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 95
    return-void
.end method

.method private databaseOnPackageAdded(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 128
    invoke-static {p1}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0, p1}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->checkAndLogNullPackageInfo(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    :goto_0
    return-object v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->installedRepository:Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    new-instance v2, Lcm/aptoide/pt/database/realm/Installed;

    invoke-direct {v2, v0}, Lcm/aptoide/pt/database/realm/Installed;-><init>(Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->save(Lcm/aptoide/pt/database/realm/Installed;)V

    goto :goto_0
.end method

.method private databaseOnPackageRemoved(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->installedRepository:Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->remove(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->updatesRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->remove(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method private databaseOnPackageReplaced(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 5

    .prologue
    .line 181
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->updatesRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$7;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lrx/d;->i(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->o()Lrx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Update;

    .line 185
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Update;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Update;->getTrustedBadge()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Update;->getTrustedBadge()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics$ApplicationInstall;->replaced(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    invoke-static {p1}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 191
    invoke-direct {p0, v1, p1}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->checkAndLogNullPackageInfo(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 208
    :goto_0
    return-object v0

    .line 195
    :cond_1
    invoke-static {p0, v1}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/InstalledIntentService;Landroid/content/pm/PackageInfo;)Lrx/b/a;

    move-result-object v2

    .line 197
    if-eqz v0, :cond_3

    .line 198
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Update;->getVersionCode()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 200
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->updatesRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->remove(Lcm/aptoide/pt/database/realm/Update;)Lrx/a;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$9;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 201
    invoke-virtual {v0, v2, v3}, Lrx/a;->a(Lrx/b/a;Lrx/b/b;)Lrx/k;

    :cond_2
    :goto_1
    move-object v0, v1

    .line 208
    goto :goto_0

    .line 205
    :cond_3
    invoke-interface {v2}, Lrx/b/a;->call()V

    goto :goto_1
.end method

.method static synthetic lambda$checkAndBroadcastReferrer$6(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 157
    return-void
.end method

.method static synthetic lambda$confirmAction$2(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$databaseOnPackageReplaced$10(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$databaseOnPackageReplaced$7(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 183
    return-void
.end method

.method static synthetic lambda$databaseOnPackageReplaced$8(Ljava/lang/Throwable;)Lcm/aptoide/pt/database/realm/Update;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$null$3(Lcm/aptoide/pt/database/realm/MinimalAd;)V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->extractReferrer(Lcm/aptoide/pt/database/realm/MinimalAd;IZ)V

    return-void
.end method

.method static synthetic lambda$null$4(Ljava/lang/Throwable;)Lcm/aptoide/pt/database/realm/MinimalAd;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method private sendInstallEvent(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 3

    .prologue
    .line 163
    if-eqz p2, :cond_1

    .line 164
    sget-object v0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending event with the id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;

    .line 166
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->get(Ljava/lang/String;Ljava/lang/Class;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;

    .line 167
    if-eqz v0, :cond_0

    .line 168
    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;->SUCC:Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;->setResultStatus(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;)V

    .line 169
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->sendEvent(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V

    .line 170
    sget-object v0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->TAG:Ljava/lang/String;

    const-string v1, "Event sent"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Event not sent, the event was null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "PackageInfo is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private shouldConfirmRollback(Lcm/aptoide/pt/database/realm/Rollback;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 117
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Rollback;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/database/realm/Rollback$Action;->INSTALL:Lcm/aptoide/pt/database/realm/Rollback$Action;

    invoke-virtual {v1}, Lcm/aptoide/pt/database/realm/Rollback$Action;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 118
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Rollback;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/database/realm/Rollback$Action;->UNINSTALL:Lcm/aptoide/pt/database/realm/Rollback$Action;

    .line 120
    invoke-virtual {v1}, Lcm/aptoide/pt/database/realm/Rollback$Action;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Rollback;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/database/realm/Rollback$Action;->UPDATE:Lcm/aptoide/pt/database/realm/Rollback$Action;

    invoke-virtual {v1}, Lcm/aptoide/pt/database/realm/Rollback$Action;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 123
    :cond_2
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Rollback;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/database/realm/Rollback$Action;->DOWNGRADE:Lcm/aptoide/pt/database/realm/Rollback$Action;

    invoke-virtual {v1}, Lcm/aptoide/pt/database/realm/Rollback$Action;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$checkAndBroadcastReferrer$5(Ljava/lang/String;Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;Lcm/aptoide/pt/database/realm/StoredMinimalAd;)V
    .locals 2

    .prologue
    .line 142
    if-eqz p3, :cond_0

    .line 143
    invoke-virtual {p3}, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->getReferrer()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->broadcastReferrer(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {p3}, Lcm/aptoide/pt/dataprovider/util/DataproviderUtils$AdNetworksUtils;->knockCpi(Lcm/aptoide/pt/model/StoredMinimalAdInterface;)V

    .line 145
    invoke-virtual {p2, p3}, Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;->remove(Lcm/aptoide/pt/database/realm/StoredMinimalAd;)V

    .line 155
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->adsRepository:Lcm/aptoide/pt/v8engine/repository/AdsRepository;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/AdsRepository;->getAdsFromSecondInstall(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 148
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$10;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService$$Lambda$11;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lrx/d;->i(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lrx/d;->n()Lrx/k;

    goto :goto_0
.end method

.method synthetic lambda$confirmAction$0(Ljava/lang/String;Lcm/aptoide/pt/database/realm/Rollback;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p2, p1}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->shouldConfirmRollback(Lcm/aptoide/pt/database/realm/Rollback;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$confirmAction$1(Lcm/aptoide/pt/database/realm/Rollback;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->repository:Lcm/aptoide/pt/v8engine/repository/RollbackRepository;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/RollbackRepository;->confirmRollback(Lcm/aptoide/pt/database/realm/Rollback;)V

    .line 94
    return-void
.end method

.method synthetic lambda$databaseOnPackageReplaced$9(Landroid/content/pm/PackageInfo;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->installedRepository:Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    new-instance v1, Lcm/aptoide/pt/database/realm/Installed;

    invoke-direct {v1, p1}, Lcm/aptoide/pt/database/realm/Installed;-><init>(Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->save(Lcm/aptoide/pt/database/realm/Installed;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-direct {p0, v3, v2}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->confirmAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v1, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    invoke-virtual {p0, v3}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->onPackageAdded(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :sswitch_0
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    .line 80
    :pswitch_1
    invoke-virtual {p0, v3}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->onPackageReplaced(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_2
    invoke-virtual {p0, v3}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        -0x304ed112 -> :sswitch_1
        0x1f50b9c2 -> :sswitch_2
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPackageAdded(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 98
    sget-object v0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->databaseOnPackageAdded(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 101
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->checkAndBroadcastReferrer(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->sendInstallEvent(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    .line 103
    return-void
.end method

.method protected onPackageRemoved(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 112
    sget-object v0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Packaged removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->databaseOnPackageRemoved(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method protected onPackageReplaced(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 106
    sget-object v0, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Packaged replaced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->databaseOnPackageReplaced(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 108
    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/install/InstalledIntentService;->sendInstallEvent(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    .line 109
    return-void
.end method
