.class public Lcm/aptoide/pt/v8engine/InstallService;
.super Landroid/app/Service;
.source "InstallService.java"


# static fields
.field public static final ACTION_INSTALL_FINISHED:Ljava/lang/String; = "INSTALL_FINISHED"

.field public static final ACTION_OPEN_APP_VIEW:Ljava/lang/String; = "OPEN_APP_VIEW"

.field public static final ACTION_OPEN_DOWNLOAD_MANAGER:Ljava/lang/String; = "OPEN_DOWNLOAD_MANAGER"

.field public static final ACTION_START_INSTALL:Ljava/lang/String; = "START_INSTALL"

.field public static final ACTION_STOP_ALL_INSTALLS:Ljava/lang/String; = "STOP_ALL_INSTALLS"

.field public static final ACTION_STOP_INSTALL:Ljava/lang/String; = "STOP_INSTALL"

.field public static final EXTRA_INSTALLATION_MD5:Ljava/lang/String; = "INSTALLATION_MD5"

.field public static final EXTRA_INSTALLER_TYPE:Ljava/lang/String; = "INSTALLER_TYPE"

.field public static final INSTALLER_TYPE_DEFAULT:I = 0x0

.field public static final INSTALLER_TYPE_ROLLBACK:I = 0x1

.field private static final NOTIFICATION_ID:I = 0x8

.field public static final TAG:Ljava/lang/String; = "InstallService"


# instance fields
.field private analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

.field private defaultInstaller:Lcm/aptoide/pt/v8engine/install/Installer;

.field private downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

.field private installManager:Lcm/aptoide/pt/v8engine/InstallManager;

.field private installerTypeMap:Ljava/util/Map;
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

.field private notification:Landroid/app/Notification;

.field private rollbackInstaller:Lcm/aptoide/pt/v8engine/install/Installer;

.field private subscriptions:Lrx/j/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private buildNotification(Lcm/aptoide/pt/v8engine/Progress;Landroid/support/v4/app/am$a;Landroid/support/v4/app/am$a;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;",
            "Landroid/support/v4/app/am$a;",
            "Landroid/support/v4/app/am$a;",
            "Landroid/app/PendingIntent;",
            ")",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v1, Landroid/support/v4/app/am$d;

    invoke-direct {v1, p0}, Landroid/support/v4/app/am$d;-><init>(Landroid/content/Context;)V

    .line 281
    const v0, 0x1080081

    invoke-virtual {v1, v0}, Landroid/support/v4/app/am$d;->a(I)Landroid/support/v4/app/am$d;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 283
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/InstallService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcm/aptoide/pt/downloadmanager/R$string;->aptoide_downloading:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 284
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v6

    invoke-interface {v6}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 282
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/am$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    .line 286
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 287
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/database/realm/Download;->getStatusName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
    invoke-virtual {v2, v0}, Landroid/support/v4/app/am$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$d;

    move-result-object v0

    .line 288
    invoke-virtual {v0, p4}, Landroid/support/v4/app/am$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/am$d;

    move-result-object v2

    const/16 v3, 0x64

    .line 290
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallProgress()I

    move-result v0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->isIndeterminate()Z

    move-result v4

    .line 289
    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/am$d;->a(IIZ)Landroid/support/v4/app/am$d;

    move-result-object v0

    .line 291
    invoke-virtual {v0, p2}, Landroid/support/v4/app/am$d;->a(Landroid/support/v4/app/am$a;)Landroid/support/v4/app/am$d;

    move-result-object v0

    .line 292
    invoke-virtual {v0, p3}, Landroid/support/v4/app/am$d;->a(Landroid/support/v4/app/am$a;)Landroid/support/v4/app/am$d;

    .line 293
    invoke-virtual {v1}, Landroid/support/v4/app/am$d;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private createDeeplinkingIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 326
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 327
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 328
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getActivityProvider()Lcm/aptoide/pt/v8engine/configuration/ActivityProvider;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/v8engine/configuration/ActivityProvider;->getMainActivityFragmentClass()Ljava/lang/Class;

    move-result-object v2

    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 329
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 330
    return-object v0
.end method

.method private downloadAndInstall(Landroid/content/Context;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownload(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;)Lrx/b/e;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;)Lrx/b/b;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$11;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;)Lrx/b/b;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$13;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;Landroid/content/Context;)Lrx/b/e;

    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$14;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;)Lrx/b/e;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private downloadAndInstallCurrentDownload(Landroid/content/Context;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getCurrentDownload()Lrx/d;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;Landroid/content/Context;)Lrx/b/e;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private getAction(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/am$a;
    .locals 2

    .prologue
    .line 298
    new-instance v0, Landroid/support/v4/app/am$a;

    invoke-direct {p0, p3, p4, p5}, Lcm/aptoide/pt/v8engine/InstallService;->getPendingIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Landroid/support/v4/app/am$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method private getDownloadManagerAction(ILjava/lang/String;)Landroid/support/v4/app/am$a;
    .locals 6

    .prologue
    .line 271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 272
    const-string v1, "APTOIDE_APPID_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->ic_manager:I

    sget v0, Lcm/aptoide/pt/v8engine/R$string;->open_apps_manager:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/InstallService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "OPEN_DOWNLOAD_MANAGER"

    move-object v0, p0

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/InstallService;->getAction(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/am$a;

    move-result-object v0

    return-object v0
.end method

.method private getInstaller(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/install/Installer;
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->installerTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 219
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 228
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->rollbackInstaller:Lcm/aptoide/pt/v8engine/install/Installer;

    .line 231
    :goto_0
    return-object v0

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->defaultInstaller:Lcm/aptoide/pt/v8engine/install/Installer;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcm/aptoide/pt/v8engine/install/InstallerFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->create(Landroid/content/Context;I)Lcm/aptoide/pt/v8engine/install/Installer;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->defaultInstaller:Lcm/aptoide/pt/v8engine/install/Installer;

    .line 224
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->defaultInstaller:Lcm/aptoide/pt/v8engine/install/Installer;

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getPauseAction(ILjava/lang/String;)Landroid/support/v4/app/am$a;
    .locals 6

    .prologue
    .line 263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    const-string v1, "APTOIDE_APPID_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget v1, Lcm/aptoide/pt/downloadmanager/R$drawable;->media_pause:I

    sget v0, Lcm/aptoide/pt/downloadmanager/R$string;->pause_download:I

    .line 266
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/InstallService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "STOP_INSTALL"

    move-object v0, p0

    move v3, p1

    move-object v5, p2

    .line 265
    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/InstallService;->getAction(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/am$a;

    move-result-object v0

    return-object v0
.end method

.method private getPendingIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcm/aptoide/pt/v8engine/InstallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 305
    const-string v2, "INSTALLATION_MD5"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 308
    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private hasNextDownload()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getCurrentDownloads()Lrx/d;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$15;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$downloadAndInstall$10(Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$hasNextDownload$15(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 177
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openAppView(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 319
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/InstallService;->createDeeplinkingIntent()Landroid/content/Intent;

    move-result-object v0

    .line 320
    const-string v1, "appViewFragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    const-string v1, "md5"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/InstallService;->startActivity(Landroid/content/Intent;)V

    .line 323
    return-void
.end method

.method private openDownloadManager()V
    .locals 3

    .prologue
    .line 313
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/InstallService;->createDeeplinkingIntent()Landroid/content/Intent;

    move-result-object v0

    .line 314
    const-string v1, "fromDownloadNotification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/InstallService;->startActivity(Landroid/content/Intent;)V

    .line 316
    return-void
.end method

.method private removeFromScheduled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 194
    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;

    .line 195
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;->delete(Ljava/lang/String;)V

    .line 196
    const-string v0, "InstallService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing schedulled download with appId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method private removeNotificationAndStop()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/InstallService;->stopForeground(Z)V

    .line 182
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/InstallService;->stopSelf()V

    .line 183
    return-void
.end method

.method private sendBackgroundInstallFinishedBroadcast(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "INSTALL_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "INSTALLATION_MD5"

    .line 187
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 186
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/InstallService;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/InstallService;->removeFromScheduled(Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method

.method private setupNotification()V
    .locals 4

    .prologue
    .line 235
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->subscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/InstallService;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/InstallManager;->getCurrentInstallation()Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$16;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;)Lrx/b/b;

    move-result-object v2

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$17;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 260
    return-void
.end method

.method private stopAllDownloads()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->pauseAllDownloads()V

    .line 123
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/InstallService;->removeNotificationAndStop()V

    .line 124
    return-void
.end method

.method private stopDownload(Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/InstallService;->hasNextDownload()Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;Ljava/lang/String;)Lrx/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private stopForegroundAndInstall(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;Z)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcm/aptoide/pt/database/realm/Download;",
            "Z)",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/InstallService;->getInstaller(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/install/Installer;

    move-result-object v0

    .line 202
    invoke-virtual {p0, p3}, Lcm/aptoide/pt/v8engine/InstallService;->stopForeground(Z)V

    .line 203
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid download action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    :goto_0
    return-object v0

    .line 205
    :pswitch_0
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcm/aptoide/pt/v8engine/install/Installer;->install(Landroid/content/Context;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 207
    :pswitch_1
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcm/aptoide/pt/v8engine/install/Installer;->update(Landroid/content/Context;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcm/aptoide/pt/v8engine/install/Installer;->downgrade(Landroid/content/Context;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopOnDownloadError(I)V
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/InstallService;->removeNotificationAndStop()V

    .line 172
    :cond_0
    return-void
.end method

.method private treatNext(Z)V
    .locals 0

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/InstallService;->removeNotificationAndStop()V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$downloadAndInstall$11(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->get(Ljava/lang/String;Ljava/lang/Class;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    .line 158
    if-eqz v0, :cond_0

    .line 159
    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;->SUCC:Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->setResultStatus(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;)V

    .line 160
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/InstallService;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->sendEvent(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V

    .line 162
    :cond_0
    return-void
.end method

.method synthetic lambda$downloadAndInstall$13(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcm/aptoide/pt/v8engine/InstallService;->stopForegroundAndInstall(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;Z)Lrx/d;

    move-result-object v0

    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$18;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$downloadAndInstall$14(Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/InstallService;->hasNextDownload()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$downloadAndInstall$8(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->startDownload(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$downloadAndInstall$9(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/InstallService;->stopOnDownloadError(I)V

    .line 144
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->get(Ljava/lang/String;Ljava/lang/Class;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->setDownloadHadProgress(Z)V

    .line 152
    :cond_0
    return-void
.end method

.method synthetic lambda$downloadAndInstallCurrentDownload$7(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/InstallService;->downloadAndInstall(Landroid/content/Context;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$12(Lcm/aptoide/pt/database/realm/Download;Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/InstallService;->sendBackgroundInstallFinishedBroadcast(Lcm/aptoide/pt/database/realm/Download;)V

    return-void
.end method

.method synthetic lambda$onStartCommand$0(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/InstallService;->treatNext(Z)V

    return-void
.end method

.method synthetic lambda$onStartCommand$1(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/InstallService;->removeNotificationAndStop()V

    return-void
.end method

.method synthetic lambda$onStartCommand$2(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/InstallService;->treatNext(Z)V

    return-void
.end method

.method synthetic lambda$onStartCommand$3(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/InstallService;->removeNotificationAndStop()V

    return-void
.end method

.method synthetic lambda$onStartCommand$4(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/InstallService;->treatNext(Z)V

    return-void
.end method

.method synthetic lambda$onStartCommand$5(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/InstallService;->removeNotificationAndStop()V

    return-void
.end method

.method synthetic lambda$setupNotification$16(Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 6

    .prologue
    .line 236
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getDownloadId()I

    move-result v1

    .line 239
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-direct {p0, v1, v0}, Lcm/aptoide/pt/v8engine/InstallService;->getDownloadManagerAction(ILjava/lang/String;)Landroid/support/v4/app/am$a;

    move-result-object v2

    .line 243
    const-string v3, "OPEN_APP_VIEW"

    .line 244
    invoke-direct {p0, v1, v3, v0}, Lcm/aptoide/pt/v8engine/InstallService;->getPendingIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 245
    invoke-direct {p0, v1, v0}, Lcm/aptoide/pt/v8engine/InstallService;->getPauseAction(ILjava/lang/String;)Landroid/support/v4/app/am$a;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/InstallService;->notification:Landroid/app/Notification;

    if-nez v1, :cond_1

    .line 249
    invoke-direct {p0, p1, v0, v2, v3}, Lcm/aptoide/pt/v8engine/InstallService;->buildNotification(Lcm/aptoide/pt/v8engine/Progress;Landroid/support/v4/app/am$a;Landroid/support/v4/app/am$a;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->notification:Landroid/app/Notification;

    .line 257
    :goto_0
    const/16 v0, 0x8

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/InstallService;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcm/aptoide/pt/v8engine/InstallService;->startForeground(ILandroid/app/Notification;)V

    .line 259
    :cond_0
    return-void

    .line 251
    :cond_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/InstallService;->notification:Landroid/app/Notification;

    iget-wide v4, v1, Landroid/app/Notification;->when:J

    .line 253
    invoke-direct {p0, p1, v0, v2, v3}, Lcm/aptoide/pt/v8engine/InstallService;->buildNotification(Lcm/aptoide/pt/v8engine/Progress;Landroid/support/v4/app/am$a;Landroid/support/v4/app/am$a;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->notification:Landroid/app/Notification;

    .line 254
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->notification:Landroid/app/Notification;

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    goto :goto_0
.end method

.method synthetic lambda$setupNotification$17(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/InstallService;->removeNotificationAndStop()V

    return-void
.end method

.method synthetic lambda$stopDownload$6(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->pauseDownload(Ljava/lang/String;)Ljava/lang/Void;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 71
    const-string v0, "InstallService"

    const-string v1, "Install service is starting"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    .line 73
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->initDownloadService(Landroid/content/Context;)V

    .line 74
    new-instance v0, Lcm/aptoide/pt/v8engine/install/InstallerFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->create(Landroid/content/Context;I)Lcm/aptoide/pt/v8engine/install/Installer;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->rollbackInstaller:Lcm/aptoide/pt/v8engine/install/Installer;

    .line 75
    new-instance v0, Lcm/aptoide/pt/v8engine/InstallManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/InstallService;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/InstallService;->rollbackInstaller:Lcm/aptoide/pt/v8engine/install/Installer;

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/InstallManager;-><init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/v8engine/install/Installer;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    .line 76
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->subscriptions:Lrx/j/b;

    .line 77
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/InstallService;->setupNotification()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->installerTypeMap:Ljava/util/Map;

    .line 79
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->getInstance()Lcm/aptoide/pt/v8engine/analytics/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->subscriptions:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->unsubscribe()V

    .line 110
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 111
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 83
    if-eqz p1, :cond_5

    .line 84
    const-string v0, "INSTALLATION_MD5"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, "START_INSTALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/InstallService;->installerTypeMap:Ljava/util/Map;

    const-string v2, "INSTALLER_TYPE"

    .line 87
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 86
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/InstallService;->subscriptions:Lrx/j/b;

    invoke-direct {p0, p0, v0}, Lcm/aptoide/pt/v8engine/InstallService;->downloadAndInstall(Landroid/content/Context;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;)Lrx/b/b;

    move-result-object v2

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 105
    :cond_0
    :goto_0
    return v4

    .line 90
    :cond_1
    const-string v1, "STOP_INSTALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/InstallService;->subscriptions:Lrx/j/b;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/InstallService;->stopDownload(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;)Lrx/b/b;

    move-result-object v2

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    goto :goto_0

    .line 93
    :cond_2
    const-string v1, "OPEN_APP_VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/InstallService;->openAppView(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_3
    const-string v0, "OPEN_DOWNLOAD_MANAGER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/InstallService;->openDownloadManager()V

    goto :goto_0

    .line 97
    :cond_4
    const-string v0, "STOP_ALL_INSTALLS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/InstallService;->stopAllDownloads()V

    goto :goto_0

    .line 101
    :cond_5
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService;->subscriptions:Lrx/j/b;

    .line 102
    invoke-direct {p0, p0}, Lcm/aptoide/pt/v8engine/InstallService;->downloadAndInstallCurrentDownload(Landroid/content/Context;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;)Lrx/b/b;

    move-result-object v2

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    goto :goto_0
.end method
