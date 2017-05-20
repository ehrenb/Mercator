.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "UpdateDisplayable.java"


# instance fields
.field private alternativeApkPath:Ljava/lang/String;

.field private analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

.field private apkPath:Ljava/lang/String;

.field private appId:J

.field private converter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

.field private download:Lcm/aptoide/pt/database/realm/Download;

.field private icon:Ljava/lang/String;

.field private installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

.field private installManager:Lcm/aptoide/pt/v8engine/InstallManager;

.field private label:Ljava/lang/String;

.field private mainObbMd5:Ljava/lang/String;

.field private mainObbName:Ljava/lang/String;

.field private mainObbPath:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private patchObbMd5:Ljava/lang/String;

.field private patchObbName:Ljava/lang/String;

.field private patchObbPath:Ljava/lang/String;

.field private updateVersionName:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/v8engine/analytics/Analytics;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 69
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->packageName:Ljava/lang/String;

    .line 70
    iput-wide p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->appId:J

    .line 71
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->label:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->icon:Ljava/lang/String;

    .line 73
    iput p6, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->versionCode:I

    .line 74
    iput-object p7, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->md5:Ljava/lang/String;

    .line 75
    iput-object p8, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->apkPath:Ljava/lang/String;

    .line 76
    iput-object p9, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->alternativeApkPath:Ljava/lang/String;

    .line 77
    iput-object p10, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->updateVersionName:Ljava/lang/String;

    .line 78
    iput-object p11, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->mainObbName:Ljava/lang/String;

    .line 79
    iput-object p12, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->mainObbPath:Ljava/lang/String;

    .line 80
    iput-object p13, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->mainObbMd5:Ljava/lang/String;

    .line 81
    move-object/from16 v0, p14

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->patchObbName:Ljava/lang/String;

    .line 82
    move-object/from16 v0, p15

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->patchObbPath:Ljava/lang/String;

    .line 83
    move-object/from16 v0, p16

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->patchObbMd5:Ljava/lang/String;

    .line 84
    move-object/from16 v0, p17

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->download:Lcm/aptoide/pt/database/realm/Download;

    .line 85
    move-object/from16 v0, p18

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    .line 86
    move-object/from16 v0, p19

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    .line 87
    move-object/from16 v0, p20

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->converter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    .line 88
    move-object/from16 v0, p21

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    .line 89
    return-void
.end method

.method static synthetic lambda$downloadAndInstall$3(Lcm/aptoide/pt/actions/PermissionManager;Lcm/aptoide/pt/actions/PermissionRequest;Ljava/lang/Boolean;)Lrx/d;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/actions/PermissionManager;->requestDownloadAccess(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$0(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcm/aptoide/pt/database/realm/Update;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/v8engine/util/DownloadFactory;Lcm/aptoide/pt/v8engine/analytics/Analytics;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;
    .locals 24

    .prologue
    .line 96
    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/Update;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/Update;->getAppId()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/Update;->getLabel()Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/Update;->getIcon()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/Update;->getVersionCode()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/Update;->getMd5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/Update;->getApkPath()Ljava/lang/String;

    move-result-object v10

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/Update;->getAlternativeApkPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/Update;->getUpdateVersionName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/Update;->getMainObbName()Ljava/lang/String;

    move-result-object v13

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/Update;->getMainObbPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/Update;->getMainObbMd5()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/Update;->getPatchObbName()Ljava/lang/String;

    move-result-object v16

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/Update;->getPatchObbPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/database/realm/Update;->getPatchObbMd5()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->create(Lcm/aptoide/pt/database/realm/Update;)Lcm/aptoide/pt/database/realm/Download;

    move-result-object v19

    move-object/from16 v20, p1

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    invoke-direct/range {v2 .. v23}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/v8engine/analytics/Analytics;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;)V

    return-object v2
.end method

.method private setupEvents(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->converter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->CLICK:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    sget-object v2, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;->UPDATE_TAB:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    .line 125
    invoke-virtual {v0, p1, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;->create(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    .line 126
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->save(Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V

    .line 127
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->CLICK:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    sget-object v2, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;->UPDATE_TAB:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    .line 128
    invoke-virtual {v0, p1, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;->create(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;

    .line 130
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->save(Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V

    .line 131
    return-void
.end method


# virtual methods
.method public downloadAndInstall(Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcm/aptoide/pt/actions/PermissionRequest;",
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
    .line 106
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Updates;->update()V

    .line 107
    new-instance v0, Lcm/aptoide/pt/actions/PermissionManager;

    invoke-direct {v0}, Lcm/aptoide/pt/actions/PermissionManager;-><init>()V

    .line 108
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/actions/PermissionManager;->requestExternalStoragePermission(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;Landroid/content/Context;)Lrx/b/e;

    move-result-object v2

    .line 109
    invoke-virtual {v1, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v1

    invoke-static {v0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/actions/PermissionManager;Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/b/e;

    move-result-object v0

    .line 118
    invoke-virtual {v1, v0}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;Landroid/content/Context;)Lrx/b/e;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAlternativeApkPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->alternativeApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getApkPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->apkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->appId:J

    return-wide v0
.end method

.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getDownload()Lcm/aptoide/pt/database/realm/Download;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->download:Lcm/aptoide/pt/database/realm/Download;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallManager()Lcm/aptoide/pt/v8engine/InstallManager;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMainObbMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->mainObbMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getMainObbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->mainObbName:Ljava/lang/String;

    return-object v0
.end method

.method public getMainObbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->mainObbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchObbMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->patchObbMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchObbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->patchObbName:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchObbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->patchObbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->updateVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->versionCode:I

    return v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 138
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->update_row:I

    return v0
.end method

.method synthetic lambda$downloadAndInstall$2(Landroid/content/Context;Ljava/lang/Void;)Lrx/d;
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/InstallManager;->showWarning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, ""

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->root_access_dialog:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 112
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {p1, v0, v1}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericYesNoCancelMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable$$Lambda$5;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;)Lrx/b/b;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$downloadAndInstall$5(Landroid/content/Context;Ljava/lang/Void;)Lrx/d;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/InstallManager;->install(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;)Lrx/b/a;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$1(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/InstallManager;->rootInstallAllowed(Z)V

    return-void
.end method

.method synthetic lambda$null$4()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->setupEvents(Lcm/aptoide/pt/database/realm/Download;)V

    return-void
.end method
