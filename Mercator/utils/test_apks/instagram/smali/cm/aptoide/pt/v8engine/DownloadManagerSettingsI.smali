.class public Lcm/aptoide/pt/v8engine/DownloadManagerSettingsI;
.super Ljava/lang/Object;
.source "DownloadManagerSettingsI.java"

# interfaces
.implements Lcm/aptoide/pt/downloadmanager/interfaces/DownloadSettingsInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getButton1Icon()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->ic_manager:I

    return v0
.end method

.method public getButton1Text(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->open_apps_manager:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getCachePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainIcon()I
    .locals 1

    .prologue
    .line 16
    const v0, 0x1080081

    return v0
.end method

.method public getMaxCacheSize()J
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getCacheLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getObbDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

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

    return-object v0
.end method
