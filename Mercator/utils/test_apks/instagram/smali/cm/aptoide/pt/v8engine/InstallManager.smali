.class public Lcm/aptoide/pt/v8engine/InstallManager;
.super Ljava/lang/Object;
.source "InstallManager.java"


# instance fields
.field private final aptoideDownloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

.field private downloadRepository:Lcm/aptoide/pt/v8engine/repository/Repository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm/aptoide/pt/v8engine/repository/Repository",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private installedRepository:Lcm/aptoide/pt/v8engine/repository/Repository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm/aptoide/pt/v8engine/repository/Repository",
            "<",
            "Lcm/aptoide/pt/database/realm/Installed;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final installer:Lcm/aptoide/pt/v8engine/install/Installer;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/v8engine/install/Installer;)V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getDownloadRepository()Lcm/aptoide/pt/v8engine/repository/DownloadRepository;

    move-result-object v0

    .line 47
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getInstalledRepository()Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    move-result-object v1

    .line 46
    invoke-direct {p0, p1, p2, v0, v1}, Lcm/aptoide/pt/v8engine/InstallManager;-><init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/v8engine/install/Installer;Lcm/aptoide/pt/v8engine/repository/DownloadRepository;Lcm/aptoide/pt/v8engine/repository/InstalledRepository;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/v8engine/install/Installer;Lcm/aptoide/pt/v8engine/repository/DownloadRepository;Lcm/aptoide/pt/v8engine/repository/InstalledRepository;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/InstallManager;->aptoideDownloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    .line 53
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/InstallManager;->installer:Lcm/aptoide/pt/v8engine/install/Installer;

    .line 54
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/InstallManager;->downloadRepository:Lcm/aptoide/pt/v8engine/repository/Repository;

    .line 55
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/InstallManager;->installedRepository:Lcm/aptoide/pt/v8engine/repository/Repository;

    .line 56
    return-void
.end method

.method private convertToProgress(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/Download;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->convertToProgressStatus(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/database/realm/Download;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private convertToProgressStatus(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/Download;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallManager;->installedRepository:Lcm/aptoide/pt/v8engine/repository/Repository;

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/repository/Repository;->get(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/database/realm/Download;)Lrx/b/e;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/database/realm/Download;)Lrx/b/e;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private createDownloadAndRetry(Lrx/d;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcm/aptoide/pt/database/realm/Download;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$14;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private installInBackground(Landroid/content/Context;Lcm/aptoide/pt/v8engine/Progress;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/InstallManager;->getInstallation(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 212
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/InstallManager;->startBackgroundInstallationAndWait(Landroid/content/Context;Lcm/aptoide/pt/v8engine/Progress;)Lrx/d;

    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$convertToProgress$2(Lcm/aptoide/pt/database/realm/Download;Ljava/lang/Integer;)Lcm/aptoide/pt/v8engine/Progress;
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 89
    new-instance v0, Lcm/aptoide/pt/v8engine/Progress;

    .line 90
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v1

    if-ne v1, v2, :cond_0

    :goto_0
    const/16 v3, 0x64

    .line 91
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallProgress()I

    move-result v4

    .line 92
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getDownloadSpeed()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/Progress;-><init>(Ljava/lang/Object;ZIIII)V

    return-object v0

    .line 90
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$convertToProgressStatus$3(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/realm/Installed;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Installed;->getVersionCode()I

    move-result v0

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getVersionCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 98
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$convertToProgressStatus$4(Lcm/aptoide/pt/database/realm/Download;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 132
    :goto_1
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_1
    const/4 v0, 0x2

    .line 113
    goto :goto_1

    .line 126
    :pswitch_2
    const/4 v0, 0x4

    .line 127
    goto :goto_1

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic lambda$getInstallations$6(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 143
    return-object p0
.end method

.method static synthetic lambda$startBackgroundInstallationAndWait$16(Lcm/aptoide/pt/v8engine/Progress;Ljava/lang/Void;)Lcm/aptoide/pt/v8engine/Progress;
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/Progress;->setState(I)V

    .line 221
    return-object p0
.end method

.method static synthetic lambda$waitBackgroundInstallationResult$17(Landroid/content/Intent;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 228
    if-eqz p0, :cond_0

    const-string v0, "INSTALL_FINISHED"

    .line 229
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$waitBackgroundInstallationResult$18(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 230
    const-string v0, "INSTALLATION_MD5"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$waitBackgroundInstallationResult$19(Landroid/content/Intent;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method private startBackgroundInstallation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcm/aptoide/pt/v8engine/InstallService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    const-string v1, "START_INSTALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v1, "INSTALLATION_MD5"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/InstallManager;->installer:Lcm/aptoide/pt/v8engine/install/Installer;

    instance-of v1, v1, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;

    if-eqz v1, :cond_1

    .line 239
    const-string v1, "INSTALLER_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 244
    return-void

    .line 240
    :cond_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/InstallManager;->installer:Lcm/aptoide/pt/v8engine/install/Installer;

    instance-of v1, v1, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "INSTALLER_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private startBackgroundInstallationAndWait(Landroid/content/Context;Lcm/aptoide/pt/v8engine/Progress;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/InstallManager;->waitBackgroundInstallationResult(Landroid/content/Context;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$15;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallManager;Landroid/content/Context;Lcm/aptoide/pt/v8engine/Progress;)Lrx/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$16;->lambdaFactory$(Lcm/aptoide/pt/v8engine/Progress;)Lrx/b/e;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private updateDownloadAction(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/Progress;)Lcm/aptoide/pt/v8engine/Progress;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/Download;",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;)",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getAction()I

    move-result v0

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getAction()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 191
    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Download;->setAction(I)V

    .line 192
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallManager;->downloadRepository:Lcm/aptoide/pt/v8engine/repository/Repository;

    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/repository/Repository;->save(Ljava/lang/Object;)V

    .line 194
    :cond_0
    return-object p2
.end method

.method private waitBackgroundInstallationResult(Landroid/content/Context;Ljava/lang/String;)Lrx/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 226
    new-instance v0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "INSTALL_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, v3, v3}, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$17;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$18;->lambdaFactory$(Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$19;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAsListInstallation(Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallManager;->aptoideDownloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getAsListDownload(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallManager;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentInstallation()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/InstallManager;->getInstallations()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallManager;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getInstallation(Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallManager;->aptoideDownloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownload(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallManager;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getInstallations()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallManager;->aptoideDownloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownloads()Lrx/d;

    move-result-object v0

    .line 142
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$6;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallManager;)Lrx/b/e;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getInstallationsAsList()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallManager;->aptoideDownloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getDownloads()Lrx/d;

    move-result-object v0

    .line 82
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallManager;)Lrx/b/e;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public install(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcm/aptoide/pt/database/realm/Download;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/InstallManager;->getInstallation(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/e;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$11;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/e;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lrx/d;->j(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallManager;)Lrx/b/b;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$13;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallManager;Landroid/content/Context;)Lrx/b/e;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public isDownloading(Lcm/aptoide/pt/v8engine/Progress;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstalling(Lcm/aptoide/pt/v8engine/Progress;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 148
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->isDownloading(Lcm/aptoide/pt/v8engine/Progress;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getState()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 149
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPending(Lcm/aptoide/pt/v8engine/Progress;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 172
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$createDownloadAndRetry$14(Lcm/aptoide/pt/database/realm/Download;Ljava/lang/Throwable;)Lrx/d;
    .locals 1

    .prologue
    .line 200
    instance-of v0, p2, Lcm/aptoide/pt/database/exceptions/DownloadNotFoundException;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallManager;->downloadRepository:Lcm/aptoide/pt/v8engine/repository/Repository;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/v8engine/repository/Repository;->save(Ljava/lang/Object;)V

    .line 202
    invoke-static {p2}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$getAsListInstallation$9(Ljava/util/List;)Lrx/d;
    .locals 1

    .prologue
    .line 162
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/InstallManager;->convertToProgress(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$getCurrentInstallation$5(Lcm/aptoide/pt/v8engine/Progress;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->isInstalling(Lcm/aptoide/pt/v8engine/Progress;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getInstallation$8(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->convertToProgress(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getInstallations$7(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->convertToProgress(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getInstallationsAsList$1(Ljava/util/List;)Lrx/d;
    .locals 2

    .prologue
    .line 83
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$20;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallManager;)Lrx/b/e;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$install$10(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/Progress;)Lcm/aptoide/pt/v8engine/Progress;
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/InstallManager;->updateDownloadAction(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/Progress;)Lcm/aptoide/pt/v8engine/Progress;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$install$11(Lcm/aptoide/pt/database/realm/Download;Lrx/d;)Lrx/d;
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0, p2, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->createDownloadAndRetry(Lrx/d;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$install$12(Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 181
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Download;->setOverallDownloadStatus(I)V

    .line 182
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallManager;->downloadRepository:Lcm/aptoide/pt/v8engine/repository/Repository;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/repository/Repository;->save(Ljava/lang/Object;)V

    .line 184
    :cond_0
    return-void
.end method

.method synthetic lambda$install$13(Landroid/content/Context;Lcm/aptoide/pt/v8engine/Progress;)Lrx/d;
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/InstallManager;->installInBackground(Landroid/content/Context;Lcm/aptoide/pt/v8engine/Progress;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$0(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->convertToProgress(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$startBackgroundInstallationAndWait$15(Landroid/content/Context;Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/InstallManager;->startBackgroundInstallation(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public removeInstallationFile(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p2, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->stopInstallation(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallManager;->aptoideDownloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->removeDownload(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public rootInstallAllowed(Z)V
    .locals 0

    .prologue
    .line 254
    invoke-static {p1}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->setRootDialogShowed(Z)V

    .line 255
    invoke-static {p1}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setAllowRootInstallation(Z)V

    .line 256
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->askForRoot()V

    .line 257
    return-void
.end method

.method public showWarning()Z
    .locals 3

    .prologue
    .line 247
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->isRootDialogShowed()Z

    move-result v0

    .line 248
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->isRooted()Z

    move-result v1

    .line 249
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->allowRootInstallation()Z

    move-result v2

    .line 250
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopAllInstallations(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcm/aptoide/pt/v8engine/InstallService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const-string v1, "STOP_ALL_INSTALLS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    return-void
.end method

.method public stopInstallation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcm/aptoide/pt/v8engine/InstallService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    const-string v1, "STOP_INSTALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "INSTALLATION_MD5"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    return-void
.end method

.method public uninstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallManager;->installer:Lcm/aptoide/pt/v8engine/install/Installer;

    invoke-interface {v0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/install/Installer;->uninstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
