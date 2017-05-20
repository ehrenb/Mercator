.class public Lcm/aptoide/pt/v8engine/install/InstallerFactory;
.super Ljava/lang/Object;
.source "InstallerFactory.java"


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final ROLLBACK:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDefaultInstaller(Landroid/content/Context;)Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;
    .locals 5

    .prologue
    .line 42
    new-instance v0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->getInstallationProvider()Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationProvider;

    move-result-object v2

    new-instance v3, Lcm/aptoide/pt/utils/FileUtils;

    invoke-direct {v3}, Lcm/aptoide/pt/utils/FileUtils;-><init>()V

    .line 43
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->getInstance()Lcm/aptoide/pt/v8engine/analytics/Analytics;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;-><init>(Landroid/content/pm/PackageManager;Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;Lcm/aptoide/pt/utils/FileUtils;Lcm/aptoide/pt/v8engine/analytics/Analytics;)V

    return-object v0
.end method

.method private getInstallationProvider()Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationProvider;
    .locals 3

    .prologue
    .line 53
    new-instance v1, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationProvider;

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v2

    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    .line 54
    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-direct {v1, v2, v0}, Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationProvider;-><init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/database/accessors/DownloadAccessor;)V

    return-object v1
.end method

.method private getRollbackInstaller(Landroid/content/Context;)Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;
    .locals 5

    .prologue
    .line 47
    new-instance v0, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;

    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->getDefaultInstaller(Landroid/content/Context;)Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    move-result-object v1

    .line 48
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getRollbackRepository()Lcm/aptoide/pt/v8engine/repository/RollbackRepository;

    move-result-object v2

    new-instance v3, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory;

    invoke-direct {v3}, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory;-><init>()V

    .line 49
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->getInstallationProvider()Lcm/aptoide/pt/v8engine/install/provider/DownloadInstallationProvider;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;-><init>(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Lcm/aptoide/pt/v8engine/repository/RollbackRepository;Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory;Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;)V

    return-object v0
.end method


# virtual methods
.method public create(Landroid/content/Context;I)Lcm/aptoide/pt/v8engine/install/Installer;
    .locals 3

    .prologue
    .line 31
    packed-switch p2, :pswitch_data_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installer not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :pswitch_0
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->getDefaultInstaller(Landroid/content/Context;)Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->getRollbackInstaller(Landroid/content/Context;)Lcm/aptoide/pt/v8engine/install/installer/RollbackInstaller;

    move-result-object v0

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
