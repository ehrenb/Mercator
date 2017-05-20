.class public Lcm/aptoide/pt/database/realm/Rollback;
.super Lio/realm/ad;
.source "Rollback.java"

# interfaces
.implements Lio/realm/al;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/database/realm/Rollback$Action;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final APP_NAME:Ljava/lang/String; = "appName"

.field public static final CONFIRMED:Ljava/lang/String; = "confirmed"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final VERSION_CODE:Ljava/lang/String; = "versionCode"

.field public static final VERSION_NAME:Ljava/lang/String; = "versionName"


# instance fields
.field private action:Ljava/lang/String;

.field private alternativeApkPath:Ljava/lang/String;

.field private apkPath:Ljava/lang/String;

.field private appId:J

.field private appName:Ljava/lang/String;

.field private confirmed:Z

.field private icon:Ljava/lang/String;

.field private mainObbMd5:Ljava/lang/String;

.field private mainObbName:Ljava/lang/String;

.field private mainObbPath:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private patchObbMd5:Ljava/lang/String;

.field private patchObbName:Ljava/lang/String;

.field private patchObbPath:Ljava/lang/String;

.field private timestamp:J

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/database/realm/Rollback$Action;)V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 59
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Rollback$Action;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->action:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->appId:J

    .line 61
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->appName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->icon:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->packageName:Ljava/lang/String;

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->timestamp:J

    .line 65
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMd5sum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->md5:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->apkPath:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getPathAlt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->alternativeApkPath:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->versionName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVercode()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->versionCode:I

    .line 71
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb;->getMain()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getFilename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcm/aptoide/pt/database/realm/Rollback;->mainObbName:Ljava/lang/String;

    .line 76
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcm/aptoide/pt/database/realm/Rollback;->mainObbPath:Ljava/lang/String;

    .line 77
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getMd5sum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/database/realm/Rollback;->mainObbMd5:Ljava/lang/String;

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb;->getPatch()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/database/realm/Rollback;->patchObbName:Ljava/lang/String;

    .line 83
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/database/realm/Rollback;->patchObbPath:Ljava/lang/String;

    .line 84
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getMd5sum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->patchObbMd5:Ljava/lang/String;

    .line 87
    :cond_1
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$action()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlternativeApkPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApkPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()J
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$appId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$appName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$icon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$icon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainObbMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainObbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainObbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPatchObbMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPatchObbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPatchObbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$timestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$versionCode()I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$versionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConfirmed()Z
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Rollback;->realmGet$confirmed()Z

    move-result v0

    return v0
.end method

.method public realmGet$action()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->action:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$alternativeApkPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->alternativeApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$apkPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->apkPath:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$appId()J
    .locals 2

    iget-wide v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->appId:J

    return-wide v0
.end method

.method public realmGet$appName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$confirmed()Z
    .locals 1

    iget-boolean v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->confirmed:Z

    return v0
.end method

.method public realmGet$icon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mainObbMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->mainObbMd5:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mainObbName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->mainObbName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mainObbPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->mainObbPath:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$md5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$patchObbMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->patchObbMd5:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$patchObbName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->patchObbName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$patchObbPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->patchObbPath:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$timestamp()J
    .locals 2

    iget-wide v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->timestamp:J

    return-wide v0
.end method

.method public realmGet$versionCode()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->versionCode:I

    return v0
.end method

.method public realmGet$versionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Rollback;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$action(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->action:Ljava/lang/String;

    return-void
.end method

.method public realmSet$alternativeApkPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->alternativeApkPath:Ljava/lang/String;

    return-void
.end method

.method public realmSet$apkPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->apkPath:Ljava/lang/String;

    return-void
.end method

.method public realmSet$appId(J)V
    .locals 1

    iput-wide p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->appId:J

    return-void
.end method

.method public realmSet$appName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->appName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$confirmed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->confirmed:Z

    return-void
.end method

.method public realmSet$icon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->icon:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mainObbMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->mainObbMd5:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mainObbName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->mainObbName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mainObbPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->mainObbPath:Ljava/lang/String;

    return-void
.end method

.method public realmSet$md5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->md5:Ljava/lang/String;

    return-void
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->packageName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$patchObbMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->patchObbMd5:Ljava/lang/String;

    return-void
.end method

.method public realmSet$patchObbName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->patchObbName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$patchObbPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->patchObbPath:Ljava/lang/String;

    return-void
.end method

.method public realmSet$timestamp(J)V
    .locals 1

    iput-wide p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->timestamp:J

    return-void
.end method

.method public realmSet$versionCode(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->versionCode:I

    return-void
.end method

.method public realmSet$versionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Rollback;->versionName:Ljava/lang/String;

    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$action(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setAlternativeApkPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$alternativeApkPath(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public setApkPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$apkPath(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public setAppId(J)V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$appId(J)V

    .line 219
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$appName(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setConfirmed(Z)V
    .locals 0

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$confirmed(Z)V

    .line 151
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$icon(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public setIconPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$icon(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public setMainObbMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$mainObbMd5(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public setMainObbName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$mainObbName(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public setMainObbPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$mainObbPath(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$md5(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$packageName(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public setPatchObbMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$patchObbMd5(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public setPatchObbName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$patchObbName(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public setPatchObbPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$patchObbPath(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$timestamp(J)V

    .line 111
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$versionCode(I)V

    .line 183
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Rollback;->realmSet$versionName(Ljava/lang/String;)V

    .line 167
    return-void
.end method
