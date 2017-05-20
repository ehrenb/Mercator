.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;
.source "AppUpdateDisplayable.java"


# instance fields
.field private abUrl:Ljava/lang/String;

.field private analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

.field private appIconUrl:Ljava/lang/String;

.field private appId:J

.field private appName:Ljava/lang/String;

.field private appVersionName:Ljava/lang/String;

.field private dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

.field private dateUpdated:Ljava/util/Date;

.field private download:Lcm/aptoide/pt/database/realm/Download;

.field private downloadConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

.field private installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

.field private installManager:Lcm/aptoide/pt/v8engine/InstallManager;

.field private packageName:Ljava/lang/String;

.field private permissionManager:Lcm/aptoide/pt/actions/PermissionManager;

.field private socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

.field private spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

.field private storeIconUrl:Ljava/lang/String;

.field private storeName:Ljava/lang/String;

.field private timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/timeline/AppUpdate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;JLjava/lang/String;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/actions/PermissionManager;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;Lcm/aptoide/pt/v8engine/analytics/Analytics;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)V

    .line 75
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->appIconUrl:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->storeIconUrl:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->storeName:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->dateUpdated:Ljava/util/Date;

    .line 79
    iput-object p6, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->appVersionName:Ljava/lang/String;

    .line 80
    iput-object p7, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    .line 81
    iput-object p8, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->appName:Ljava/lang/String;

    .line 82
    iput-object p9, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->packageName:Ljava/lang/String;

    .line 83
    iput-object p10, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->download:Lcm/aptoide/pt/database/realm/Download;

    .line 84
    iput-object p11, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    .line 85
    iput-wide p12, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->appId:J

    .line 86
    move-object/from16 v0, p14

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->abUrl:Ljava/lang/String;

    .line 87
    move-object/from16 v0, p15

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    .line 88
    move-object/from16 v0, p16

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->permissionManager:Lcm/aptoide/pt/actions/PermissionManager;

    .line 89
    move-object/from16 v0, p17

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    .line 90
    move-object/from16 v0, p18

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    .line 91
    move-object/from16 v0, p19

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->downloadConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    .line 92
    move-object/from16 v0, p20

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    .line 93
    move-object/from16 v0, p21

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    .line 94
    return-void
.end method

.method public static from(Lcm/aptoide/pt/model/v7/timeline/AppUpdate;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/util/DownloadFactory;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/actions/PermissionManager;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;
    .locals 24

    .prologue
    .line 100
    const/16 v16, 0x0

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;->getAb()Lcm/aptoide/pt/model/v7/timeline/Ab;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Ab;->getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/timeline/Conversion;->getUrl()Ljava/lang/String;

    move-result-object v16

    .line 107
    :cond_0
    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;->getIcon()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;->getAdded()Ljava/util/Date;

    move-result-object v7

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/listapp/File;->getVername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;->getName()Ljava/lang/String;

    move-result-object v10

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->create(Lcm/aptoide/pt/model/v7/listapp/App;I)Lcm/aptoide/pt/database/realm/Download;

    move-result-object v12

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;->getId()J

    move-result-wide v14

    new-instance v21, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    invoke-direct/range {v21 .. v21}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;-><init>()V

    new-instance v22, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    invoke-direct/range {v22 .. v22}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;-><init>()V

    .line 113
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->getInstance()Lcm/aptoide/pt/v8engine/analytics/Analytics;

    move-result-object v23

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    move-object/from16 v13, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    invoke-direct/range {v2 .. v23}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/AppUpdate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;JLjava/lang/String;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/actions/PermissionManager;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;Lcm/aptoide/pt/v8engine/analytics/Analytics;)V

    return-object v2
.end method

.method private getUpdateNoSpaceErrorText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->out_of_space_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setupEvents()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->downloadConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->download:Lcm/aptoide/pt/database/realm/Download;

    sget-object v2, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->CLICK:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    sget-object v3, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;->TIMELINE:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;->create(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    .line 137
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v3}, Lcm/aptoide/pt/database/realm/Download;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->save(Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V

    .line 139
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->download:Lcm/aptoide/pt/database/realm/Download;

    sget-object v2, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->CLICK:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    sget-object v3, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;->TIMELINE:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    .line 140
    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;->create(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;

    .line 142
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v3}, Lcm/aptoide/pt/database/realm/Download;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->save(Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V

    .line 143
    return-void
.end method


# virtual methods
.method public getAbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->abUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->appIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->appId:J

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppTitle(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 6

    .prologue
    .line 156
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->appName:Ljava/lang/String;

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->black:I

    invoke-static {p1, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->appName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getCompletedText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_app_update_updated:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    packed-switch p2, :pswitch_data_0

    .line 230
    :goto_0
    return-object v0

    .line 224
    :pswitch_0
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getUpdateErrorText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getUpdateNoSpaceErrorText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getHasUpdateText(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 165
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_app_update:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_app_has_update:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 167
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    aput-object v0, v3, v5

    .line 166
    invoke-virtual {v1, v2, v4, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createStyleSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->storeIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSinceLastUpdate(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->dateUpdated:Ljava/util/Date;

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->getTimeSinceDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateAppText(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->appstimeline_update_app:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_app_update_button:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    .line 180
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    .line 179
    invoke-virtual {v1, v2, v4, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createStyleSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateErrorText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_app_update_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatingText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_app_update_updating:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionText(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 172
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_app_update_version:I

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->appVersionName:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 173
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->appVersionName:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 172
    invoke-virtual {v0, v1, v4, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createStyleSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 193
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_app_update:I

    return v0
.end method

.method public isDownloading(Lcm/aptoide/pt/v8engine/Progress;)Z
    .locals 1
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
    .line 209
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->isDownloading(Lcm/aptoide/pt/v8engine/Progress;)Z

    move-result v0

    return v0
.end method

.method public isInstalling(Lcm/aptoide/pt/v8engine/Progress;)Z
    .locals 1
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
    .line 205
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->isInstalling(Lcm/aptoide/pt/v8engine/Progress;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$update$0(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable$1;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    invoke-virtual {p1}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/InstallManager;->rootInstallAllowed(Z)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/InstallManager;->rootInstallAllowed(Z)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method synthetic lambda$update$1()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->setupEvents()V

    return-void
.end method

.method synthetic lambda$updateProgress$2(Lcm/aptoide/pt/v8engine/Progress;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 147
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPermission(Landroid/content/Context;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->permissionManager:Lcm/aptoide/pt/actions/PermissionManager;

    check-cast p1, Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/actions/PermissionManager;->requestExternalStoragePermission(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public sendClickEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;->sendEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public share(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getTimelineCard()Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->share(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Landroid/content/Context;Z)V

    .line 218
    return-void
.end method

.method public update(Landroid/content/Context;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .line 117
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/InstallManager;->showWarning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->root_access_dialog:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 119
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {p1, v0, v1}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericYesNoCancelMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)Lrx/b/b;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 131
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/InstallManager;->install(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)Lrx/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public updateProgress()Lrx/d;
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
    .line 146
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/InstallManager;->getInstallations()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)Lrx/b/e;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
