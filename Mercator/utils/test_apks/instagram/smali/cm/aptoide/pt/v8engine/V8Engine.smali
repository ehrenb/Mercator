.class public abstract Lcm/aptoide/pt/v8engine/V8Engine;
.super Lcm/aptoide/pt/dataprovider/DataProvider;
.source "V8Engine.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static activityProvider:Lcm/aptoide/pt/v8engine/configuration/ActivityProvider;

.field private static aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private static autoUpdateWasCalled:Z

.field private static displayableWidgetMapping:Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

.field private static fragmentProvider:Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcm/aptoide/pt/v8engine/V8Engine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->TAG:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcm/aptoide/pt/v8engine/V8Engine;->autoUpdateWasCalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/DataProvider;-><init>()V

    return-void
.end method

.method private static addDefaultStore()V
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getDefaultStore()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$5;->lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->subscribeStore(Ljava/lang/String;Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    .line 141
    return-void
.end method

.method private static checkUpdates()V
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getUpdateRepository()Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    move-result-object v0

    .line 110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->sync(Z)Lrx/a;

    move-result-object v1

    const/4 v2, 0x0

    .line 111
    invoke-virtual {v0, v2}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->getAll(Z)Lrx/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/a;->b(Lrx/d;)Lrx/d;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$4;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 116
    return-void
.end method

.method public static clearUserData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/database/accessors/Accessor;->removeAll()V

    .line 125
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getDefaultStore()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->subscribeStore(Ljava/lang/String;Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    .line 126
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->regenerateUserAgent()V

    .line 127
    return-void
.end method

.method public static getActivityProvider()Lcm/aptoide/pt/v8engine/configuration/ActivityProvider;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->activityProvider:Lcm/aptoide/pt/v8engine/configuration/ActivityProvider;

    return-object v0
.end method

.method public static getDisplayableWidgetMapping()Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->displayableWidgetMapping:Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    return-object v0
.end method

.method public static getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->fragmentProvider:Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    return-object v0
.end method

.method public static isAutoUpdateWasCalled()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcm/aptoide/pt/v8engine/V8Engine;->autoUpdateWasCalled:Z

    return v0
.end method

.method static synthetic lambda$addDefaultStore$4(Lcm/aptoide/pt/model/v7/store/GetStoreMeta;)V
    .locals 0

    .prologue
    .line 139
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->checkUpdates()V

    return-void
.end method

.method static synthetic lambda$checkUpdates$2(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->TAG:Ljava/lang/String;

    const-string v1, "updates are up to date now"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$checkUpdates$3(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 115
    return-void
.end method

.method static synthetic lambda$generateAptoideUUID$16()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 294
    sget-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadInstalledApps$18()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 305
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/database/accessors/Accessor;->removeAll()V

    .line 308
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getAllInstalledApps()Ljava/util/List;

    move-result-object v0

    .line 309
    sget-object v1, Lcm/aptoide/pt/v8engine/V8Engine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user installed apps."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$21;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 316
    return-object v0
.end method

.method static synthetic lambda$loadInstalledApps$19(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 318
    return-object p0
.end method

.method static synthetic lambda$loadInstalledApps$20(Landroid/content/pm/PackageInfo;)Lcm/aptoide/pt/database/realm/Installed;
    .locals 1

    .prologue
    .line 319
    new-instance v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/database/realm/Installed;-><init>(Landroid/content/pm/PackageInfo;)V

    return-object v0
.end method

.method static synthetic lambda$loadInstalledApps$21(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 322
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcm/aptoide/pt/database/accessors/Accessor;->insertAll(Ljava/util/List;)V

    .line 323
    return-void
.end method

.method static synthetic lambda$loadStores$0(Ljava/util/List;)V
    .locals 6

    .prologue
    .line 86
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 87
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/accountmanager/ws/responses/Subscription;

    .line 88
    new-instance v3, Lcm/aptoide/pt/database/realm/Store;

    invoke-direct {v3}, Lcm/aptoide/pt/database/realm/Store;-><init>()V

    .line 89
    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/responses/Subscription;->getDownloads()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcm/aptoide/pt/database/realm/Store;->setDownloads(J)V

    .line 90
    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/responses/Subscription;->getAvatarHd()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/responses/Subscription;->getAvatarHd()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Lcm/aptoide/pt/database/realm/Store;->setIconPath(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/responses/Subscription;->getId()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcm/aptoide/pt/database/realm/Store;->setStoreId(J)V

    .line 93
    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/responses/Subscription;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcm/aptoide/pt/database/realm/Store;->setStoreName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/responses/Subscription;->getTheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/database/realm/Store;->setTheme(Ljava/lang/String;)V

    .line 96
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/StoreAccessor;

    invoke-virtual {v0, v3}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->insert(Lio/realm/ad;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/responses/Subscription;->getAvatar()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 99
    :cond_1
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->addDefaultStore()V

    .line 102
    :cond_2
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->checkUpdates()V

    .line 103
    return-void
.end method

.method static synthetic lambda$loadStores$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method static synthetic lambda$null$17(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I
    .locals 4

    .prologue
    .line 313
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static synthetic lambda$null$5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->addDefaultStore()V

    return-void
.end method

.method static synthetic lambda$null$6(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 206
    return-void
.end method

.method static synthetic lambda$onCreate$10(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$File;->moveFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onCreate$11()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onCreate$12(Ljava/lang/Long;)V
    .locals 5

    .prologue
    .line 245
    sget-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleaned size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 246
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->formatBytes(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onCreate$13(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 248
    return-void
.end method

.method static synthetic lambda$onCreate$14(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method static synthetic lambda$onCreate$15(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 264
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 265
    return-void
.end method

.method static synthetic lambda$onCreate$8(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V
    .locals 3

    .prologue
    .line 213
    sget-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hello "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method static synthetic lambda$onCreate$9(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 216
    return-void
.end method

.method private loadInstalledApps()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$17;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$18;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$19;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 319
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$20;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    .line 321
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    .line 324
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static loadStores()V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserRepos()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$1;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 106
    return-void
.end method

.method public static loadUserData()V
    .locals 0

    .prologue
    .line 119
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->loadStores()V

    .line 120
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->regenerateUserAgent()V

    .line 121
    return-void
.end method

.method private static regenerateUserAgent()V
    .locals 4

    .prologue
    .line 130
    sget-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    new-instance v1, Lcm/aptoide/pt/v8engine/V8Engine$1;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/V8Engine$1;-><init>()V

    .line 135
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$Core;->getDefaultVername()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getPartnerId()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/utils/AptoideUtils$NetworkUtils;->getDefaultUserAgent(Lcm/aptoide/pt/interfaces/AptoideClientUUID;Lcm/aptoide/pt/actions/UserData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->setUserAgent(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static setAutoUpdateWasCalled(Z)V
    .locals 0

    .prologue
    .line 78
    sput-boolean p0, Lcm/aptoide/pt/v8engine/V8Engine;->autoUpdateWasCalled:Z

    return-void
.end method

.method private setupStrictMode()V
    .locals 1

    .prologue
    .line 372
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 372
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 378
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 378
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 383
    return-void
.end method


# virtual methods
.method protected activateLogger()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-static {v0}, Lcm/aptoide/pt/logger/Logger;->setDBG(Z)V

    .line 148
    return-void
.end method

.method protected createActivityProvider()Lcm/aptoide/pt/v8engine/configuration/ActivityProvider;
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcm/aptoide/pt/v8engine/configuration/implementation/ActivityProviderImpl;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/configuration/implementation/ActivityProviderImpl;-><init>()V

    return-object v0
.end method

.method protected createDisplayableWidgetMapping()Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->getInstance()Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    move-result-object v0

    return-object v0
.end method

.method protected createFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lcm/aptoide/pt/v8engine/configuration/implementation/FragmentProviderImpl;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/configuration/implementation/FragmentProviderImpl;-><init>()V

    return-object v0
.end method

.method public createShortCut()V
    .locals 4

    .prologue
    .line 386
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcm/aptoide/pt/v8engine/MainActivityFragment;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 389
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 390
    const-string v0, "android.intent.extra.shortcut.NAME"

    const-string v2, "Aptoide"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 392
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/V8Engine;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$mipmap;->ic_launcher:I

    invoke-static {v2, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 391
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 393
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/V8Engine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 395
    return-void
.end method

.method generateAptoideUUID()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$16;->lambdaFactory$()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    .line 295
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected getTokenInvalidator()Lcm/aptoide/pt/dataprovider/interfaces/TokenInvalidator;
    .locals 1

    .prologue
    .line 272
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$15;->lambdaFactory$()Lcm/aptoide/pt/dataprovider/interfaces/TokenInvalidator;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onCreate$7(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 197
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->isUserDataLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->loadUserData()V

    .line 201
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->setUserDataLoaded()V

    .line 208
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->setFirstRun(Z)V

    .line 209
    return-void

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/V8Engine;->generateAptoideUUID()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$22;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$23;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 152
    :try_start_0
    invoke-static {}, Lcm/aptoide/pt/preferences/PRNGFixes;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 157
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/V8Engine;->createFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->fragmentProvider:Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    .line 158
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/V8Engine;->createActivityProvider()Lcm/aptoide/pt/v8engine/configuration/ActivityProvider;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->activityProvider:Lcm/aptoide/pt/v8engine/configuration/ActivityProvider;

    .line 159
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/V8Engine;->createDisplayableWidgetMapping()Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->displayableWidgetMapping:Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    .line 160
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    sput-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 165
    invoke-super {p0}, Lcm/aptoide/pt/dataprovider/DataProvider;->onCreate()V

    .line 171
    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/Database;->initialize(Landroid/content/Context;)V

    .line 173
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/V8Engine;->generateAptoideUUID()Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->n()Lrx/k;

    .line 175
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->regenerateUserAgent()V

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v2, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGIN:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 178
    sget-object v2, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGOUT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    new-instance v2, Lcm/aptoide/pt/v8engine/V8Engine$2;

    invoke-direct {v2, p0}, Lcm/aptoide/pt/v8engine/V8Engine$2;-><init>(Lcm/aptoide/pt/v8engine/V8Engine;)V

    invoke-virtual {p0, v2, v0}, Lcm/aptoide/pt/v8engine/V8Engine;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$LocalyticsSessionControl;->firstSession(Landroid/content/SharedPreferences;)V

    .line 186
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle$Application;->onCreate(Landroid/app/Application;)V

    .line 187
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->isDebug()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcm/aptoide/pt/logger/Logger;->setDBG(Z)V

    .line 188
    new-instance v0, Lcom/b/a/a$a;

    invoke-direct {v0}, Lcom/b/a/a$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/a$a;->a(Z)Lcom/b/a/a$a;

    move-result-object v0

    const-string v2, "X89WPPSKWQB2FT6B8F3X"

    invoke-virtual {v0, p0, v2}, Lcom/b/a/a$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 191
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/V8Engine;->createShortCut()V

    .line 192
    sget v0, Lcm/aptoide/pt/v8engine/R$xml;->settings:I

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 193
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->isFirstRunV7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->removeLocalAccount()V

    .line 196
    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/V8Engine;->loadInstalledApps()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/V8Engine;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lrx/d;->n()Lrx/k;

    .line 212
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->refreshAndSaveUserInfoData()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$7;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$8;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 221
    :goto_2
    invoke-static {p0}, Lcm/aptoide/pt/utils/SecurityUtils;->checkAppSignature(Landroid/content/Context;)I

    move-result v0

    .line 222
    if-eqz v0, :cond_1

    .line 223
    sget-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->TAG:Ljava/lang/String;

    const-string v1, "app signature is not valid!"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_1
    invoke-static {}, Lcm/aptoide/pt/utils/SecurityUtils;->checkEmulator()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    sget-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->TAG:Ljava/lang/String;

    const-string v1, "application is running on an emulator"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_2
    invoke-static {p0}, Lcm/aptoide/pt/utils/SecurityUtils;->checkDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    sget-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->TAG:Ljava/lang/String;

    const-string v1, "application has debug flag active"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_3
    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v4

    check-cast v4, Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    .line 235
    invoke-static {}, Lcm/aptoide/pt/v8engine/filemanager/FileManager;->build()Lcm/aptoide/pt/v8engine/filemanager/FileManager;

    move-result-object v9

    .line 236
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v0

    new-instance v2, Lcm/aptoide/pt/v8engine/DownloadNotificationActionsActionsInterface;

    invoke-direct {v2}, Lcm/aptoide/pt/v8engine/DownloadNotificationActionsActionsInterface;-><init>()V

    new-instance v3, Lcm/aptoide/pt/v8engine/DownloadManagerSettingsI;

    invoke-direct {v3}, Lcm/aptoide/pt/v8engine/DownloadManagerSettingsI;-><init>()V

    .line 238
    invoke-static {}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;->build()Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;

    move-result-object v5

    new-instance v6, Lcm/aptoide/pt/utils/FileUtils;

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$9;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-direct {v6, v1}, Lcm/aptoide/pt/utils/FileUtils;-><init>(Lrx/b/b;)V

    new-instance v1, Lcm/aptoide/pt/v8engine/download/TokenHttpClient;

    sget-object v7, Lcm/aptoide/pt/v8engine/V8Engine;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$10;->lambdaFactory$()Lcm/aptoide/pt/actions/UserData;

    move-result-object v8

    .line 241
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v12

    invoke-interface {v12}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getPartnerId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v7, v8, v12}, Lcm/aptoide/pt/v8engine/download/TokenHttpClient;-><init>(Lcm/aptoide/pt/interfaces/AptoideClientUUID;Lcm/aptoide/pt/actions/UserData;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/download/TokenHttpClient;->customMake()Lokhttp3/OkHttpClient$Builder;

    move-result-object v7

    new-instance v8, Lcm/aptoide/pt/v8engine/DownloadAnalytics;

    .line 242
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->getInstance()Lcm/aptoide/pt/v8engine/analytics/Analytics;

    move-result-object v1

    invoke-direct {v8, v1}, Lcm/aptoide/pt/v8engine/DownloadAnalytics;-><init>(Lcm/aptoide/pt/v8engine/analytics/Analytics;)V

    move-object v1, p0

    .line 237
    invoke-virtual/range {v0 .. v8}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->init(Landroid/content/Context;Lcm/aptoide/pt/downloadmanager/interfaces/DownloadNotificationActionsInterface;Lcm/aptoide/pt/downloadmanager/interfaces/DownloadSettingsInterface;Lcm/aptoide/pt/database/accessors/DownloadAccessor;Lcm/aptoide/pt/downloadmanager/interfaces/CacheManager;Lcm/aptoide/pt/utils/FileUtils;Lokhttp3/OkHttpClient$Builder;Lcm/aptoide/pt/downloadmanager/interfaces/Analytics;)V

    .line 244
    invoke-virtual {v9}, Lcm/aptoide/pt/v8engine/filemanager/FileManager;->purgeCache()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$11;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$12;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 245
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 257
    new-instance v0, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/deprecated/SQLiteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 260
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->getInstance()Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/v8engine/V8Engine;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 261
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTestManager;->initialize(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$13;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$14;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 262
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 267
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AccountAnalytcsImp;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AccountAnalytcsImp;-><init>()V

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->setAnalytics(Lcm/aptoide/accountmanager/Analytics;)V

    .line 268
    sget-object v0, Lcm/aptoide/pt/v8engine/V8Engine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " millis."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 187
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 218
    :cond_5
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/V8Engine;->loadInstalledApps()Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->n()Lrx/k;

    goto/16 :goto_2
.end method

.method protected setupCrashReports(Z)V
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/crashreports/CrashlyticsCrashLogger;

    invoke-direct {v1, p0, p1}, Lcm/aptoide/pt/crashreports/CrashlyticsCrashLogger;-><init>(Landroid/content/Context;Z)V

    .line 277
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->addLogger(Lcm/aptoide/pt/crashreports/CrashLogger;)Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/crashreports/ConsoleLogger;

    invoke-direct {v1}, Lcm/aptoide/pt/crashreports/ConsoleLogger;-><init>()V

    .line 278
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->addLogger(Lcm/aptoide/pt/crashreports/CrashLogger;)Lcm/aptoide/pt/crashreports/CrashReport;

    .line 279
    return-void
.end method
