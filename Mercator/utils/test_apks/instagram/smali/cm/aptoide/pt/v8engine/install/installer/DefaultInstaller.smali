.class public Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;
.super Ljava/lang/Object;
.source "DefaultInstaller.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/install/Installer;


# static fields
.field public static final OBB_FOLDER:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

.field private fileUtils:Lcm/aptoide/pt/utils/FileUtils;

.field private final installationProvider:Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;

.field private final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/obb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->OBB_FOLDER:Ljava/lang/String;

    .line 47
    const-class v0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;Lcm/aptoide/pt/utils/FileUtils;Lcm/aptoide/pt/v8engine/analytics/Analytics;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->packageManager:Landroid/content/pm/PackageManager;

    .line 56
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->installationProvider:Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;

    .line 57
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->fileUtils:Lcm/aptoide/pt/utils/FileUtils;

    .line 58
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    .line 59
    return-void
.end method

.method private defaultInstall(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 208
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 211
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$11;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;Ljava/io/File;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {v1}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1, v0, p3}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Lrx/b/e;

    move-result-object v0

    .line 214
    invoke-virtual {v1, v0}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private isInstalled(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_0

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic lambda$install$5(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method static synthetic lambda$isInstalled$1(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$10(I)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$waitPackageIntent$15(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$waitPackageIntent$16(Landroid/content/Intent;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method private moveInstallationFiles(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;)V
    .locals 7

    .prologue
    .line 130
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getFiles()Ljava/util/List;

    move-result-object v2

    .line 131
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 132
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 133
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->OBB_FOLDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    iget-object v4, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->fileUtils:Lcm/aptoide/pt/utils/FileUtils;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcm/aptoide/pt/utils/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcm/aptoide/pt/utils/FileUtils;->removeFile(Ljava/lang/String;)Z

    .line 137
    invoke-virtual {v0, v3}, Lcm/aptoide/pt/database/realm/FileToDownload;->setPath(Ljava/lang/String;)V

    .line 131
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 140
    :cond_1
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->save()V

    .line 141
    return-void
.end method

.method private rootInstall(Ljava/io/File;Ljava/lang/String;I)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcm/aptoide/pt/v8engine/install/exception/InstallationException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->isRooted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;

    const-string v1, "No root permissions"

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->allowRootInstallation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;

    const-string v1, "User doesn\'t allow root installation"

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    :try_start_0
    new-instance v0, Leu/chainfire/libsuperuser/b$a;

    invoke-direct {v0}, Leu/chainfire/libsuperuser/b$a;-><init>()V

    .line 160
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/b$a;->a()Leu/chainfire/libsuperuser/b$a;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Leu/chainfire/libsuperuser/b$a;->a(I)Leu/chainfire/libsuperuser/b$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pm install -r "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p2, p3}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Ljava/lang/String;I)Leu/chainfire/libsuperuser/b$e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Leu/chainfire/libsuperuser/b$a;->a(Ljava/lang/String;ILeu/chainfire/libsuperuser/b$e;)Leu/chainfire/libsuperuser/b$a;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/b$a;->b()Leu/chainfire/libsuperuser/b$c;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/b$c;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const/4 v0, 0x0

    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 198
    invoke-direct {p0, p2, p3, v0}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->sendErrorEvent(Ljava/lang/String;ILjava/lang/Exception;)V

    .line 199
    new-instance v1, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installation with root failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sendErrorEvent(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;

    .line 219
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->get(Ljava/lang/String;Ljava/lang/Class;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;

    .line 220
    if-eqz v0, :cond_0

    .line 221
    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;->FAIL:Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;->setResultStatus(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;)V

    .line 222
    invoke-virtual {v0, p3}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;->setError(Ljava/lang/Throwable;)V

    .line 223
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->sendEvent(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V

    .line 225
    :cond_0
    return-void
.end method

.method private startInstallIntent(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    .prologue
    .line 228
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".provider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 241
    :goto_0
    sget-object v2, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const v0, 0x10000003

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 247
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 248
    return-void

    .line 239
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private startUninstallIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcm/aptoide/pt/v8engine/install/exception/InstallationException;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 121
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 125
    new-instance v1, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;

    invoke-direct {v1, v0}, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private systemInstall(Landroid/content/Context;Ljava/io/File;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->packageManager:Landroid/content/pm/PackageManager;

    .line 145
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/net/Uri;)V

    .line 144
    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private waitPackageIntent(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/IntentFilter;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 252
    new-instance v0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;

    invoke-direct {v0, p1, p2, v1, v1}, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    invoke-static {p3}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$13;->lambdaFactory$(Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$14;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public downgrade(Landroid/content/Context;Ljava/lang/String;)Lrx/d;
    .locals 2
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
    .line 96
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->installationProvider:Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;

    invoke-interface {v0, p2}, Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;->getInstallation(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;)Lrx/b/e;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->packageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public install(Landroid/content/Context;Ljava/lang/String;)Lrx/d;
    .locals 2
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
    .line 69
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->allowRootInstallation()Z

    move-result v0

    .line 70
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->isRooted()Z

    move-result v1

    .line 69
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics$RootInstall;->installationType(ZZ)V

    .line 71
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->installationProvider:Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;

    invoke-interface {v0, p2}, Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;->getInstallation(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 72
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;)Lrx/b/b;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;)Lrx/b/e;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$5;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public isInstalled(Ljava/lang/String;)Lrx/d;
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
    .line 62
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->installationProvider:Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/v8engine/install/installer/InstallationProvider;->getInstallation(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;)Lrx/b/e;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lrx/d;->i(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$defaultInstall$13(Landroid/content/Context;Ljava/io/File;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->startInstallIntent(Landroid/content/Context;Ljava/io/File;)V

    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$defaultInstall$14(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->waitPackageIntent(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$downgrade$6(Landroid/content/Context;Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;)Lrx/d;
    .locals 2

    .prologue
    .line 98
    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getVersionName()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p0, p1, v0, v1}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->uninstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$downgrade$7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->install(Landroid/content/Context;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$install$2(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->moveInstallationFiles(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;)V

    return-void
.end method

.method synthetic lambda$install$4(Landroid/content/Context;Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;)Lrx/d;
    .locals 3

    .prologue
    .line 75
    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getVersionCode()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->isInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 78
    :cond_0
    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->systemInstall(Landroid/content/Context;Ljava/io/File;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$17;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;)Ljava/util/concurrent/Callable;

    move-result-object v1

    .line 79
    invoke-static {v1}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/d;)Lrx/d;

    move-result-object v0

    .line 83
    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->defaultInstall(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lrx/d;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/d;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$isInstalled$0(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 63
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getVersionCode()I

    move-result v1

    .line 63
    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->isInstalled(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$11(Ljava/lang/String;IILjava/lang/Integer;)V
    .locals 4

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->isInstalled(Ljava/lang/String;I)Z

    move-result v0

    .line 169
    if-nez v0, :cond_0

    .line 170
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root install not succeeded. Exit code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v1}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->sendErrorEvent(Ljava/lang/String;ILjava/lang/Exception;)V

    .line 173
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$RootInstall;->rootInstallCompleted(IZ)V

    .line 174
    return-void
.end method

.method synthetic lambda$null$3(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getVersionCode()I

    move-result v2

    .line 80
    invoke-direct {p0, v0, v1, v2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->rootInstall(Ljava/io/File;Ljava/lang/String;I)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$rootInstall$12(Ljava/lang/String;IIILjava/util/List;)V
    .locals 5

    .prologue
    .line 163
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install -r exitCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 164
    invoke-static {p4}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$15;->lambdaFactory$(I)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    .line 165
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    const-wide/16 v2, 0x14

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 166
    invoke-virtual {v0, v2, v3, v1}, Lrx/d;->a(JLjava/util/concurrent/TimeUnit;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2, p4}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$16;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Ljava/lang/String;II)Lrx/b/b;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 175
    if-nez p4, :cond_1

    .line 176
    sget-object v0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->TAG:Ljava/lang/String;

    const-string v1, "app successfully installed using root"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void

    .line 178
    :cond_1
    sget-object v0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error using su to install package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    sget-object v2, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "su command result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method synthetic lambda$uninstall$8(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->startUninstallIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$uninstall$9(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->waitPackageIntent(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public uninstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 3
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
    .line 105
    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 106
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 109
    invoke-static {p0, p1, p2, v0}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, v1, p2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/content/Context;Ljava/lang/String;)Lrx/d;
    .locals 1
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
    .line 92
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->install(Landroid/content/Context;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
