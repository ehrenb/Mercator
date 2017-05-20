.class public Lcm/aptoide/pt/database/realm/Update;
.super Lio/realm/ad;
.source "Update.java"

# interfaces
.implements Lio/realm/au;


# static fields
.field public static final ALTERNATIVE_URL:Ljava/lang/String; = "alternativeApkPath"

.field public static final APK_PATH:Ljava/lang/String; = "apkPath"

.field public static final APP_ID:Ljava/lang/String; = "appId"

.field public static final EXCLUDED:Ljava/lang/String; = "excluded"

.field public static final FILE_SIZE:Ljava/lang/String; = "fileSize"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final LABEL:Ljava/lang/String; = "label"

.field public static final MD5:Ljava/lang/String; = "md5"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final UPDATE_VERSION_CODE:Ljava/lang/String; = "updateVersionCode"

.field public static final UPDATE_VERSION_NAME:Ljava/lang/String; = "updateVersionName"

.field public static final VERSION_CODE:Ljava/lang/String; = "versionCode"


# instance fields
.field private alternativeApkPath:Ljava/lang/String;

.field private apkPath:Ljava/lang/String;

.field private appId:J

.field private excluded:Z

.field private fileSize:D

.field private icon:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private mainObbMd5:Ljava/lang/String;

.field private mainObbName:Ljava/lang/String;

.field private mainObbPath:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private patchObbMd5:Ljava/lang/String;

.field private patchObbName:Ljava/lang/String;

.field private patchObbPath:Ljava/lang/String;

.field private timestamp:J

.field private trustedBadge:Ljava/lang/String;

.field private updateVersionCode:I

.field private updateVersionName:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/listapp/App;)V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 62
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/database/realm/Update;->appId:J

    .line 63
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->label:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->icon:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->packageName:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getMd5sum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->md5:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->apkPath:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getFilesize()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcm/aptoide/pt/database/realm/Update;->fileSize:D

    .line 73
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getVername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->updateVersionName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getPathAlt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->alternativeApkPath:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getVercode()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/database/realm/Update;->updateVersionCode:I

    .line 76
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware$Rank;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->trustedBadge:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb;->getMain()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getFilename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcm/aptoide/pt/database/realm/Update;->mainObbName:Ljava/lang/String;

    .line 83
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcm/aptoide/pt/database/realm/Update;->mainObbPath:Ljava/lang/String;

    .line 84
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getMd5sum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/database/realm/Update;->mainObbMd5:Ljava/lang/String;

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb;->getPatch()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/database/realm/Update;->patchObbName:Ljava/lang/String;

    .line 90
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/database/realm/Update;->patchObbPath:Ljava/lang/String;

    .line 91
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getMd5sum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->patchObbMd5:Ljava/lang/String;

    .line 94
    :cond_1
    return-void
.end method


# virtual methods
.method public getAlternativeApkPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApkPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()J
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$appId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileSize()D
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$fileSize()D

    move-result-wide v0

    return-wide v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$icon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$label()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainObbMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainObbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainObbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPatchObbMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPatchObbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPatchObbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$timestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrustedBadge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$trustedBadge()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateVersionCode()I
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$updateVersionCode()I

    move-result v0

    return v0
.end method

.method public getUpdateVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$updateVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$versionCode()I

    move-result v0

    return v0
.end method

.method public isExcluded()Z
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Update;->realmGet$excluded()Z

    move-result v0

    return v0
.end method

.method public realmGet$alternativeApkPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->alternativeApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$apkPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->apkPath:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$appId()J
    .locals 2

    iget-wide v0, p0, Lcm/aptoide/pt/database/realm/Update;->appId:J

    return-wide v0
.end method

.method public realmGet$excluded()Z
    .locals 1

    iget-boolean v0, p0, Lcm/aptoide/pt/database/realm/Update;->excluded:Z

    return v0
.end method

.method public realmGet$fileSize()D
    .locals 2

    iget-wide v0, p0, Lcm/aptoide/pt/database/realm/Update;->fileSize:D

    return-wide v0
.end method

.method public realmGet$icon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$label()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->label:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mainObbMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->mainObbMd5:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mainObbName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->mainObbName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mainObbPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->mainObbPath:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$md5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$patchObbMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->patchObbMd5:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$patchObbName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->patchObbName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$patchObbPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->patchObbPath:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$timestamp()J
    .locals 2

    iget-wide v0, p0, Lcm/aptoide/pt/database/realm/Update;->timestamp:J

    return-wide v0
.end method

.method public realmGet$trustedBadge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->trustedBadge:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$updateVersionCode()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/Update;->updateVersionCode:I

    return v0
.end method

.method public realmGet$updateVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Update;->updateVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$versionCode()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/Update;->versionCode:I

    return v0
.end method

.method public realmSet$alternativeApkPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Update;->alternativeApkPath:Ljava/lang/String;

    return-void
.end method

.method public realmSet$apkPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Update;->apkPath:Ljava/lang/String;

    return-void
.end method

.method public realmSet$appId(J)V
    .locals 1

    iput-wide p1, p0, Lcm/aptoide/pt/database/realm/Update;->appId:J

    return-void
.end method

.method public realmSet$excluded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcm/aptoide/pt/database/realm/Update;->excluded:Z

    return-void
.end method

.method public realmSet$fileSize(D)V
    .locals 1

    iput-wide p1, p0, Lcm/aptoide/pt/database/realm/Update;->fileSize:D

    return-void
.end method

.method public realmSet$icon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Update;->icon:Ljava/lang/String;

    return-void
.end method

.method public realmSet$label(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Update;->label:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mainObbMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Update;->mainObbMd5:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mainObbName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Update;->mainObbName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mainObbPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Update;->mainObbPath:Ljava/lang/String;

    return-void
.end method

.method public realmSet$md5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Update;->md5:Ljava/lang/String;

    return-void
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Update;->packageName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$patchObbMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Update;->patchObbMd5:Ljava/lang/String;

    return-void
.end method

.method public realmSet$patchObbName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Update;->patchObbName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$patchObbPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Update;->patchObbPath:Ljava/lang/String;

    return-void
.end method

.method public realmSet$timestamp(J)V
    .locals 1

    iput-wide p1, p0, Lcm/aptoide/pt/database/realm/Update;->timestamp:J

    return-void
.end method

.method public realmSet$trustedBadge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Update;->trustedBadge:Ljava/lang/String;

    return-void
.end method

.method public realmSet$updateVersionCode(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/Update;->updateVersionCode:I

    return-void
.end method

.method public realmSet$updateVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Update;->updateVersionName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$versionCode(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/Update;->versionCode:I

    return-void
.end method

.method public setAlternativeApkPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$alternativeApkPath(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public setApkPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$apkPath(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setAppId(J)V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/database/realm/Update;->realmSet$appId(J)V

    .line 102
    return-void
.end method

.method public setExcluded(Z)V
    .locals 0

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$excluded(Z)V

    .line 238
    return-void
.end method

.method public setFileSize(D)V
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/database/realm/Update;->realmSet$fileSize(D)V

    .line 174
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$icon(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$label(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public setMainObbMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$mainObbMd5(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public setMainObbName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$mainObbName(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public setMainObbPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$mainObbPath(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$md5(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$packageName(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setPatchObbMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$patchObbMd5(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public setPatchObbName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$patchObbName(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public setPatchObbPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$patchObbPath(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/database/realm/Update;->realmSet$timestamp(J)V

    .line 150
    return-void
.end method

.method public setUpdateVersionCode(I)V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$updateVersionCode(I)V

    .line 198
    return-void
.end method

.method public setUpdateVersionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$updateVersionName(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Update;->realmSet$versionCode(I)V

    .line 134
    return-void
.end method
