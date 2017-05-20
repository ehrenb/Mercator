.class public Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory;
.super Ljava/lang/Object;
.source "RollbackFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method static synthetic lambda$createRollback$0(Landroid/content/Context;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Rollback$Action;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/database/realm/Rollback;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 38
    new-instance v1, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-direct {v1}, Lcm/aptoide/pt/database/realm/Rollback;-><init>()V

    .line 39
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Rollback$Action;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/database/realm/Rollback;->setAction(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v3}, Lcm/aptoide/pt/database/realm/Rollback;->setConfirmed(Z)V

    .line 41
    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getApkLabel(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/database/realm/Rollback;->setAppName(Ljava/lang/String;)V

    .line 42
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/database/realm/Rollback;->setPackageName(Ljava/lang/String;)V

    .line 43
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/database/realm/Rollback;->setVersionCode(I)V

    .line 44
    invoke-virtual {v1, p3}, Lcm/aptoide/pt/database/realm/Rollback;->setVersionName(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/database/realm/Rollback;->setTimestamp(J)V

    .line 46
    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$AlgorithmU;->computeMd5(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/database/realm/Rollback;->setMd5(Ljava/lang/String;)V

    .line 47
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    invoke-virtual {v1, p4}, Lcm/aptoide/pt/database/realm/Rollback;->setIcon(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-object v1

    .line 50
    :cond_0
    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getApkIconPath(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {p0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getImagesCachePath()Ljava/lang/String;

    move-result-object v2

    .line 53
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-static {v3, p1, v0, v4, v5}, Lcm/aptoide/pt/utils/FileUtils;->saveBitmapToFile(Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Z

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/database/realm/Rollback;->setIcon(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createRollback(Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;Lcm/aptoide/pt/database/realm/Rollback$Action;)Lcm/aptoide/pt/database/realm/Rollback;
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-direct {v0}, Lcm/aptoide/pt/database/realm/Rollback;-><init>()V

    .line 64
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Rollback;->setMd5(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Rollback$Action;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Rollback;->setAction(Ljava/lang/String;)V

    .line 66
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Rollback;->setAppName(Ljava/lang/String;)V

    .line 67
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Rollback;->setPackageName(Ljava/lang/String;)V

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Rollback;->setConfirmed(Z)V

    .line 69
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Rollback;->setIcon(Ljava/lang/String;)V

    .line 70
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Rollback;->setVersionCode(I)V

    .line 71
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/install/installer/RollbackInstallation;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Rollback;->setVersionName(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcm/aptoide/pt/database/realm/Rollback;->setTimestamp(J)V

    .line 73
    return-object v0
.end method

.method public createRollback(Landroid/content/Context;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Rollback$Action;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/database/realm/Rollback$Action;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Rollback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p1, p2, p3, p5, p4}, Lcm/aptoide/pt/v8engine/install/provider/RollbackFactory$$Lambda$1;->lambdaFactory$(Landroid/content/Context;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Rollback$Action;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    .line 58
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
