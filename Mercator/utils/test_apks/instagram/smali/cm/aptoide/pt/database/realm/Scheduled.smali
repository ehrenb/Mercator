.class public Lcm/aptoide/pt/database/realm/Scheduled;
.super Lio/realm/ad;
.source "Scheduled.java"

# interfaces
.implements Lio/realm/an;


# static fields
.field public static final APP_ACTION:Ljava/lang/String; = "appAction"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final IS_DOWNLOADING:Ljava/lang/String; = "isDownloading"

.field public static final MD5:Ljava/lang/String; = "md5"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final VERSION_NAME:Ljava/lang/String; = "versionName"

.field public static final VER_CODE:Ljava/lang/String; = "verCode"


# instance fields
.field private alternativeApkPath:Ljava/lang/String;

.field private appAction:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private isDownloading:Z

.field private mainObbMd5:Ljava/lang/String;

.field private mainObbName:Ljava/lang/String;

.field private mainObbPath:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private patchObbMd5:Ljava/lang/String;

.field private patchObbName:Ljava/lang/String;

.field private patchObbPath:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private storeName:Ljava/lang/String;

.field private verCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 61
    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->name:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcm/aptoide/pt/database/realm/Scheduled;->versionName:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcm/aptoide/pt/database/realm/Scheduled;->icon:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcm/aptoide/pt/database/realm/Scheduled;->path:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcm/aptoide/pt/database/realm/Scheduled;->md5:Ljava/lang/String;

    .line 66
    iput p6, p0, Lcm/aptoide/pt/database/realm/Scheduled;->verCode:I

    .line 67
    iput-object p7, p0, Lcm/aptoide/pt/database/realm/Scheduled;->packageName:Ljava/lang/String;

    .line 68
    iput-object p8, p0, Lcm/aptoide/pt/database/realm/Scheduled;->storeName:Ljava/lang/String;

    .line 69
    iput-object p9, p0, Lcm/aptoide/pt/database/realm/Scheduled;->alternativeApkPath:Ljava/lang/String;

    .line 70
    iput-object p10, p0, Lcm/aptoide/pt/database/realm/Scheduled;->mainObbName:Ljava/lang/String;

    .line 71
    iput-object p11, p0, Lcm/aptoide/pt/database/realm/Scheduled;->mainObbPath:Ljava/lang/String;

    .line 72
    iput-object p12, p0, Lcm/aptoide/pt/database/realm/Scheduled;->mainObbMd5:Ljava/lang/String;

    .line 73
    iput-object p13, p0, Lcm/aptoide/pt/database/realm/Scheduled;->patchObbName:Ljava/lang/String;

    .line 74
    iput-object p14, p0, Lcm/aptoide/pt/database/realm/Scheduled;->patchObbPath:Ljava/lang/String;

    .line 75
    move-object/from16 v0, p15

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->patchObbMd5:Ljava/lang/String;

    .line 76
    move/from16 v0, p16

    iput-boolean v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->isDownloading:Z

    .line 77
    move-object/from16 v0, p17

    iput-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->appAction:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static from(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/database/AppAction;)Lcm/aptoide/pt/database/realm/Scheduled;
    .locals 18

    .prologue
    .line 82
    const/4 v10, 0x0

    .line 83
    const/4 v11, 0x0

    .line 84
    const/4 v12, 0x0

    .line 86
    const/4 v13, 0x0

    .line 87
    const/4 v14, 0x0

    .line 88
    const/4 v15, 0x0

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb;->getMain()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v1

    .line 93
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb;->getPatch()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v0

    .line 95
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getFilename()Ljava/lang/String;

    move-result-object v10

    .line 97
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 98
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getMd5sum()Ljava/lang/String;

    move-result-object v12

    .line 101
    :cond_0
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getFilename()Ljava/lang/String;

    move-result-object v13

    .line 103
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 104
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getMd5sum()Ljava/lang/String;

    move-result-object v15

    .line 108
    :cond_1
    new-instance v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v4

    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v5

    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMd5sum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v6

    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVercode()I

    move-result v6

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v8

    invoke-virtual {v8}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v9

    invoke-virtual {v9}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getPathAlt()Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x0

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/AppAction;->name()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v0 .. v17}, Lcm/aptoide/pt/database/realm/Scheduled;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAlternativeApkPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$appAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppActionAsEnum()Lcm/aptoide/pt/database/AppAction;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$appAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/database/AppAction;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/database/AppAction;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$icon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObb()Lcm/aptoide/pt/model/v7/Obb;
    .locals 3

    .prologue
    .line 199
    new-instance v0, Lcm/aptoide/pt/model/v7/Obb;

    invoke-direct {v0}, Lcm/aptoide/pt/model/v7/Obb;-><init>()V

    .line 200
    new-instance v1, Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    invoke-direct {v1}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;-><init>()V

    .line 201
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->setFilename(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->setPath(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->setMd5sum(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Obb;->setMain(Lcm/aptoide/pt/model/v7/Obb$ObbItem;)V

    .line 206
    new-instance v1, Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    invoke-direct {v1}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;-><init>()V

    .line 207
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->setFilename(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->setPath(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->setMd5sum(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Obb;->setPatch(Lcm/aptoide/pt/model/v7/Obb$ObbItem;)V

    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$path()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$storeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerCode()I
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$verCode()I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$versionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Scheduled;->realmGet$isDownloading()Z

    move-result v0

    return v0
.end method

.method public realmGet$alternativeApkPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->alternativeApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$appAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->appAction:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$icon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$isDownloading()Z
    .locals 1

    iget-boolean v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->isDownloading:Z

    return v0
.end method

.method public realmGet$mainObbMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->mainObbMd5:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mainObbName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->mainObbName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mainObbPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->mainObbPath:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$md5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$patchObbMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->patchObbMd5:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$patchObbName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->patchObbName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$patchObbPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->patchObbPath:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->path:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$storeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$verCode()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->verCode:I

    return v0
.end method

.method public realmGet$versionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Scheduled;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$alternativeApkPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->alternativeApkPath:Ljava/lang/String;

    return-void
.end method

.method public realmSet$appAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->appAction:Ljava/lang/String;

    return-void
.end method

.method public realmSet$icon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->icon:Ljava/lang/String;

    return-void
.end method

.method public realmSet$isDownloading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->isDownloading:Z

    return-void
.end method

.method public realmSet$mainObbMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->mainObbMd5:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mainObbName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->mainObbName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mainObbPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->mainObbPath:Ljava/lang/String;

    return-void
.end method

.method public realmSet$md5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->md5:Ljava/lang/String;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->packageName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$patchObbMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->patchObbMd5:Ljava/lang/String;

    return-void
.end method

.method public realmSet$patchObbName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->patchObbName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$patchObbPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->patchObbPath:Ljava/lang/String;

    return-void
.end method

.method public realmSet$path(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->path:Ljava/lang/String;

    return-void
.end method

.method public realmSet$storeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->storeName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$verCode(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->verCode:I

    return-void
.end method

.method public realmSet$versionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Scheduled;->versionName:Ljava/lang/String;

    return-void
.end method

.method public setAlternativeApkPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Scheduled;->realmSet$alternativeApkPath(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public setAppAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Scheduled;->realmSet$appAction(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setDownloading(Z)V
    .locals 0

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Scheduled;->realmSet$isDownloading(Z)V

    .line 220
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Scheduled;->realmSet$icon(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Scheduled;->realmSet$md5(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Scheduled;->realmSet$name(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Scheduled;->realmSet$packageName(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Scheduled;->realmSet$path(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setStoreName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Scheduled;->realmSet$storeName(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public setVerCode(I)V
    .locals 0

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Scheduled;->realmSet$verCode(I)V

    .line 172
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Scheduled;->realmSet$versionName(Ljava/lang/String;)V

    .line 128
    return-void
.end method
