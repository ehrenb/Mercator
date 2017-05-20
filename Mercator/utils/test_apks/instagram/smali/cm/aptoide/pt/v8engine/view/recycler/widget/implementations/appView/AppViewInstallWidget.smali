.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "AppViewInstallWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actionButton:Landroid/widget/Button;

.field private actionCancel:Landroid/widget/ImageView;

.field private actionPause:Landroid/widget/ImageView;

.field private actionResume:Landroid/widget/ImageView;

.field private analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

.field private downloadInstallEventConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

.field private downloadProgress:Landroid/widget/ProgressBar;

.field private downloadProgressLayout:Landroid/widget/RelativeLayout;

.field private installAndLatestVersionLayout:Landroid/widget/RelativeLayout;

.field private installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

.field private installManager:Lcm/aptoide/pt/v8engine/InstallManager;

.field private isUpdate:Z

.field private latestAvailableLayout:Landroid/view/View;

.field private latestAvailableTrustedSeal:Landroid/view/View;

.field private minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

.field private notLatestAvailableText:Landroid/view/View;

.field private otherVersions:Landroid/widget/TextView;

.field private permissionRequest:Lcm/aptoide/pt/actions/PermissionRequest;

.field private shareInTimeline:Landroid/widget/CheckBox;

.field private textProgress:Landroid/widget/TextView;

.field private trustedVersion:Lcm/aptoide/pt/model/v7/listapp/App;

.field private versionName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 113
    return-void
.end method

.method static synthetic access$002(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->isUpdate:Z

    return p1
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;ILandroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setupActionButton(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$200(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->showRootInstallWarningPopup(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;)Lrx/j/b;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->compositeSubscription:Lrx/j/b;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;)Lcm/aptoide/pt/v8engine/InstallManager;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    return-object v0
.end method

.method static synthetic access$700(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/database/realm/Download;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setupEvents(Lcm/aptoide/pt/database/realm/Download;)V

    return-void
.end method

.method private downgradeListener(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 270
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/model/v7/GetAppMeta$App;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method private downloadStatusUpdate(Lcm/aptoide/pt/v8engine/Progress;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;",
            "Lcm/aptoide/pt/model/v7/GetAppMeta$App;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 429
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 431
    :sswitch_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionResume:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 437
    :sswitch_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionResume:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->downloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getCurrent()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 440
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->textProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getCurrent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 444
    :sswitch_2
    if-eqz p3, :cond_0

    .line 445
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getDownloadError()I

    move-result v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->showErrorMessage(I)V

    goto :goto_0

    .line 451
    :sswitch_3
    invoke-static {p2}, Lcm/aptoide/pt/v8engine/analytics/Analytics$DownloadComplete;->downloadComplete(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V

    .line 452
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->isUpdate:Z

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/MinimalAd;->getCpdUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-static {v0}, Lcm/aptoide/pt/dataprovider/util/DataproviderUtils$AdNetworksUtils;->knockCpd(Lcm/aptoide/pt/model/MinimalAdInterface;)V

    goto :goto_0

    .line 429
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
        0x9 -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method private findTrustedVersion(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;)V
    .locals 6

    .prologue
    .line 592
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcm/aptoide/pt/model/v7/Malware$Rank;->TRUSTED:Lcm/aptoide/pt/model/v7/Malware$Rank;

    .line 593
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v1

    .line 592
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Malware$Rank;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    .line 596
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 597
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 598
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/listapp/File;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcm/aptoide/pt/model/v7/Malware$Rank;->TRUSTED:Lcm/aptoide/pt/model/v7/Malware$Rank;

    .line 601
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/listapp/File;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v3

    .line 599
    invoke-virtual {v2, v3}, Lcm/aptoide/pt/model/v7/Malware$Rank;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->trustedVersion:Lcm/aptoide/pt/model/v7/listapp/App;

    goto :goto_0

    .line 606
    :cond_1
    return-void
.end method

.method private getOrigin(Lcm/aptoide/pt/v8engine/Progress;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;)",
            "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;"
        }
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 527
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->INSTALL:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    .line 529
    :goto_0
    return-object v0

    .line 518
    :pswitch_0
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->INSTALL:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    goto :goto_0

    .line 521
    :pswitch_1
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->UPDATE:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    goto :goto_0

    .line 524
    :pswitch_2
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->DOWNGRADE:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    goto :goto_0

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isDownloadBarVisible()Z
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installAndLatestVersionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->downloadProgressLayout:Landroid/widget/RelativeLayout;

    .line 544
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThisTheLatestTrustedVersionAvailable(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 554
    if-eqz p2, :cond_0

    .line 555
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 558
    :goto_0
    if-eqz v0, :cond_2

    .line 560
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMd5sum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getMd5sum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 561
    if-eqz v0, :cond_2

    .line 562
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v0

    sget-object v3, Lcm/aptoide/pt/model/v7/Malware$Rank;->TRUSTED:Lcm/aptoide/pt/model/v7/Malware$Rank;

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 565
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 557
    goto :goto_0

    :cond_1
    move v0, v2

    .line 562
    goto :goto_1

    :cond_2
    move v0, v2

    .line 565
    goto :goto_1
.end method

.method private isThisTheLatestVersionAvailable(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 580
    if-eqz p2, :cond_1

    .line 581
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 582
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 583
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 584
    :goto_0
    if-eqz v1, :cond_0

    .line 585
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMd5sum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getMd5sum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 587
    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 583
    goto :goto_0
.end method

.method static synthetic lambda$bindView$0(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 151
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-interface {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newOtherVersionsFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 154
    invoke-interface {p1, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 155
    return-void
.end method

.method static synthetic lambda$bindView$2(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method static synthetic lambda$installOrUpgradeListener$17(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 413
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v1

    .line 414
    sget-object v0, Lcm/aptoide/pt/model/v7/Malware$Rank;->TRUSTED:Lcm/aptoide/pt/model/v7/Malware$Rank;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Malware$Rank;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Landroid/support/v7/a/d$a;

    invoke-direct {v0, p1}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    .line 417
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$layout;->dialog_install_warning:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 418
    invoke-virtual {v0, v2}, Landroid/support/v7/a/d$a;->b(Landroid/view/View;)Landroid/support/v7/a/d$a;

    .line 419
    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;-><init>(Lcm/aptoide/pt/model/v7/Malware$Rank;ZLandroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 420
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->getDialog()Landroid/support/v7/a/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-interface {p3, p5}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic lambda$null$14(Landroid/view/View;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 389
    instance-of v0, p1, Ljava/lang/SecurityException;

    if-eqz v0, :cond_0

    .line 390
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->needs_permission_to_fs:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 392
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 393
    return-void
.end method

.method static synthetic lambda$null$27(Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 2

    .prologue
    .line 507
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->TAG:Ljava/lang/String;

    const-string v1, "Installing"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method static synthetic lambda$null$28(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 509
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 510
    return-void
.end method

.method static synthetic lambda$null$7(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 304
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->needs_permission_to_fs:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 305
    return-void
.end method

.method static synthetic lambda$showErrorMessage$18(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 2

    .prologue
    .line 467
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->TAG:Ljava/lang/String;

    const-string v1, "Error dialog"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showErrorMessage$19(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 468
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$showErrorMessage$20(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 2

    .prologue
    .line 474
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->TAG:Ljava/lang/String;

    const-string v1, "Showing no space dialog"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showErrorMessage$21(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 475
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$updateUi$3(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->openApp(Ljava/lang/String;)V

    return-void
.end method

.method private setDownloadBarInvisible()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installAndLatestVersionLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->downloadProgressLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 535
    return-void
.end method

.method private setDownloadBarVisible()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installAndLatestVersionLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->downloadProgressLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 540
    return-void
.end method

.method private setupActionButton(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 226
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    return-void
.end method

.method private setupDownloadControls(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/v8engine/Progress;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/GetAppMeta$App;",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getMd5()Ljava/lang/String;

    move-result-object v0

    .line 484
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionCancel:Landroid/widget/ImageView;

    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$16;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionPause:Landroid/widget/ImageView;

    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$17;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionResume:Landroid/widget/ImageView;

    invoke-static {p0, p3, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$18;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/v8engine/Progress;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    return-void
.end method

.method private setupEvents(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->downloadInstallEventConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->CLICK:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    sget-object v2, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;->APPVIEW:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    .line 311
    invoke-virtual {v0, p1, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;->create(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    .line 314
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->save(Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V

    .line 316
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->CLICK:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    sget-object v2, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;->APPVIEW:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    .line 317
    invoke-virtual {v0, p1, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;->create(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;

    .line 319
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

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

    .line 320
    return-void
.end method

.method private setupInstallOrBuyButton(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 5

    .prologue
    .line 230
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->isPaid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPay()Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;->isPaid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionButton:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v3

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->buy:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 236
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPay()Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPay()Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;->getPrice()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionButton:Landroid/widget/Button;

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/model/v7/GetAppMeta$App;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;)V

    .line 253
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "APP_BOUGHT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/u;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->isUpdate:Z

    .line 256
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->install:I

    .line 257
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getVersions()Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installOrUpgradeListener(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 256
    invoke-direct {p0, v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setupActionButton(ILandroid/view/View$OnClickListener;)V

    .line 258
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->isShouldInstall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionButton:Landroid/widget/Button;

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showErrorMessage(I)V
    .locals 4

    .prologue
    .line 463
    packed-switch p1, :pswitch_data_0

    .line 478
    :goto_0
    return-void

    .line 465
    :pswitch_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    const-string v1, ""

    .line 466
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->error_occured:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericOkMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$12;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$13;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 467
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    goto :goto_0

    .line 471
    :pswitch_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    .line 472
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->out_of_space_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->out_of_space_dialog_message:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 471
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericOkMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$14;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$15;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 474
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showMessageOKCancel(Ljava/lang/String;Lcm/aptoide/pt/utils/SimpleSubscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/utils/SimpleSubscriber",
            "<",
            "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->compositeSubscription:Lrx/j/b;

    .line 342
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, p1}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericContinueCancelMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v1

    .line 343
    invoke-virtual {v1, p2}, Lrx/d;->b(Lrx/j;)Lrx/k;

    move-result-object v1

    .line 341
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 344
    return-void
.end method

.method private showRootInstallWarningPopup(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/InstallManager;->showWarning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->compositeSubscription:Lrx/j/b;

    const/4 v1, 0x0

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->root_access_dialog:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 325
    invoke-static {v2, v3}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-static {p1, v1, v2}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericYesNoCancelMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;)Lrx/b/b;

    move-result-object v2

    .line 326
    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 337
    :cond_0
    return-void
.end method

.method private updateUi(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;Z)V
    .locals 3

    .prologue
    .line 183
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUi() called with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->getProgress()Lcm/aptoide/pt/v8engine/Progress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->getProgress()Lcm/aptoide/pt/v8engine/Progress;

    move-result-object v0

    invoke-direct {p0, v0, p3, p6}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->downloadStatusUpdate(Lcm/aptoide/pt/v8engine/Progress;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Z)V

    .line 187
    :cond_0
    invoke-virtual {p5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->getButtonState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    :cond_1
    :goto_0
    return-void

    .line 189
    :pswitch_0
    invoke-virtual {p5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->getProgress()Lcm/aptoide/pt/v8engine/Progress;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->downloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->getProgress()Lcm/aptoide/pt/v8engine/Progress;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/Progress;->isIndeterminate()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 191
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->isDownloadBarVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setDownloadBarVisible()V

    .line 193
    invoke-virtual {p5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->getProgress()Lcm/aptoide/pt/v8engine/Progress;

    move-result-object v0

    invoke-direct {p0, p3, v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setupDownloadControls(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/v8engine/Progress;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;)V

    goto :goto_0

    .line 199
    :cond_2
    :pswitch_1
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setDownloadBarInvisible()V

    .line 200
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setupInstallOrBuyButton(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/model/v7/GetApp;)V

    .line 201
    invoke-interface {p4}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->getLastV4()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/AppMenuOptions;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/interfaces/AppMenuOptions;->setUnInstallMenuOptionVisible(Lrx/b/a;)V

    goto :goto_0

    .line 205
    :pswitch_2
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setDownloadBarInvisible()V

    .line 206
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->downgrade:I

    invoke-direct {p0, p3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->downgradeListener(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setupActionButton(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 210
    :pswitch_3
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setDownloadBarInvisible()V

    .line 211
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->open:I

    invoke-static {p3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setupActionButton(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 216
    :pswitch_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->isUpdate:Z

    .line 217
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setDownloadBarInvisible()V

    .line 218
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->update:I

    .line 219
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getVersions()Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;

    move-result-object v1

    invoke-virtual {p0, p3, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installOrUpgradeListener(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 218
    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setupActionButton(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 116
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->download_progress_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->downloadProgressLayout:Landroid/widget/RelativeLayout;

    .line 117
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->install_and_latest_version_layout:I

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installAndLatestVersionLayout:Landroid/widget/RelativeLayout;

    .line 119
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->share_in_timeline:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->shareInTimeline:Landroid/widget/CheckBox;

    .line 120
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->download_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->downloadProgress:Landroid/widget/ProgressBar;

    .line 121
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->text_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->textProgress:Landroid/widget/TextView;

    .line 122
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->ic_action_pause:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionPause:Landroid/widget/ImageView;

    .line 123
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->ic_action_resume:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionResume:Landroid/widget/ImageView;

    .line 124
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->ic_action_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionCancel:Landroid/widget/ImageView;

    .line 125
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->action_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionButton:Landroid/widget/Button;

    .line 126
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_version_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->versionName:Landroid/widget/TextView;

    .line 127
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->other_versions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->otherVersions:Landroid/widget/TextView;

    .line 128
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->latest_available_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->latestAvailableLayout:Landroid/view/View;

    .line 129
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->latest_available_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->latestAvailableTrustedSeal:Landroid/view/View;

    .line 130
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->not_latest_available_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->notLatestAvailableText:Landroid/view/View;

    .line 131
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 134
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->setInstallButton(Landroid/widget/Button;)V

    .line 136
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->initDownloadService(Landroid/content/Context;)V

    .line 138
    new-instance v1, Lcm/aptoide/pt/v8engine/install/InstallerFactory;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;-><init>()V

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->create(Landroid/content/Context;I)Lcm/aptoide/pt/v8engine/install/Installer;

    move-result-object v1

    .line 139
    new-instance v2, Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/v8engine/InstallManager;-><init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/v8engine/install/Installer;)V

    iput-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    .line 140
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->downloadInstallEventConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    .line 141
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    .line 142
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->getInstance()Lcm/aptoide/pt/v8engine/analytics/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    .line 144
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->getMinimalAd()Lcm/aptoide/pt/database/realm/MinimalAd;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->minimalAd:Lcm/aptoide/pt/database/realm/MinimalAd;

    .line 145
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcm/aptoide/pt/model/v7/GetApp;

    .line 146
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v3

    .line 147
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v4

    check-cast v4, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 149
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->versionName:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->otherVersions:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-array v5, v6, [Z

    aput-boolean v6, v5, v8

    .line 158
    iget-object v6, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->compositeSubscription:Lrx/j/b;

    .line 159
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->getState()Lrx/d;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;[Z)Lrx/b/b;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 158
    invoke-virtual {v6, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 166
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getVersions()Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->isThisTheLatestVersionAvailable(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->notLatestAvailableText:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->latestAvailableLayout:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 169
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getVersions()Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->isThisTheLatestTrustedVersionAvailable(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->latestAvailableTrustedSeal:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/actions/PermissionRequest;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->permissionRequest:Lcm/aptoide/pt/actions/PermissionRequest;

    .line 178
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->notLatestAvailableText:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->latestAvailableLayout:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public installOrUpgradeListener(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;)Landroid/view/View$OnClickListener;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 349
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v3

    .line 351
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->isUpdate:Z

    if-eqz v0, :cond_0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->updating_msg:I

    .line 353
    :goto_0
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->isUpdate:Z

    if-eqz v0, :cond_1

    move v6, v7

    .line 354
    :goto_1
    new-instance v4, Lcm/aptoide/pt/actions/PermissionManager;

    invoke-direct {v4}, Lcm/aptoide/pt/actions/PermissionManager;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    .line 355
    invoke-static/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;ILcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionManager;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 396
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->findTrustedVersion(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;)V

    .line 397
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->trustedVersion:Lcm/aptoide/pt/model/v7/listapp/App;

    if-eqz v1, :cond_2

    .line 399
    :goto_2
    invoke-static {p0, v7, p1, v3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;ZLcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 412
    invoke-static {p1, v3, v7, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$11;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0

    .line 351
    :cond_0
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->installing_msg:I

    goto :goto_0

    :cond_1
    move v6, v8

    .line 353
    goto :goto_1

    :cond_2
    move v7, v8

    .line 397
    goto :goto_2
.end method

.method synthetic lambda$bindView$1(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;[ZLcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 160
    aget-boolean v0, p5, v7

    if-nez v0, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->updateUi(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;Z)V

    .line 161
    aput-boolean v7, p5, v7

    .line 162
    return-void

    :cond_0
    move v6, v7

    .line 160
    goto :goto_0
.end method

.method synthetic lambda$downgradeListener$8(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 271
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 272
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/actions/PermissionRequest;

    .line 274
    invoke-static {p0, p2, p1, v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$29;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Landroid/view/View;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/b/a;

    move-result-object v1

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$30;->lambdaFactory$(Landroid/view/View;)Lrx/b/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcm/aptoide/pt/actions/PermissionRequest;->requestAccessToExternalFileSystem(Lrx/b/a;Lrx/b/a;)V

    .line 306
    return-void
.end method

.method synthetic lambda$installOrUpgradeListener$15(ILcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionManager;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;ILandroid/view/View;)V
    .locals 4

    .prologue
    .line 356
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->installing_msg:I

    if-ne p1, v0, :cond_0

    .line 357
    invoke-static {p2}, Lcm/aptoide/pt/v8engine/analytics/Analytics$ClickedOnInstallButton;->clicked(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V

    .line 358
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics$DownloadComplete;->installClicked(J)V

    .line 361
    :cond_0
    invoke-direct {p0, p3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->showRootInstallWarningPopup(Landroid/content/Context;)V

    .line 363
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->permissionRequest:Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-virtual {p4, v1}, Lcm/aptoide/pt/actions/PermissionManager;->requestDownloadAccess(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p4}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$24;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/actions/PermissionManager;)Lrx/b/e;

    move-result-object v2

    .line 364
    invoke-virtual {v1, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p5, p6}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$25;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;I)Lrx/b/e;

    move-result-object v2

    .line 365
    invoke-virtual {v1, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v1

    .line 372
    invoke-virtual {v1}, Lrx/d;->i()Lrx/d;

    move-result-object v1

    .line 373
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p5, p3, p7, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$26;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Landroid/content/Context;Landroid/view/View;I)Lrx/b/b;

    move-result-object v2

    invoke-static {p7}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$27;->lambdaFactory$(Landroid/view/View;)Lrx/b/b;

    move-result-object v3

    .line 374
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 363
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 394
    return-void
.end method

.method synthetic lambda$installOrUpgradeListener$16(ZLcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 401
    if-eqz p1, :cond_0

    .line 403
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->trustedVersion:Lcm/aptoide/pt/model/v7/listapp/App;

    .line 404
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->trustedVersion:Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(JLjava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 409
    :goto_0
    check-cast p3, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-interface {p3, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 410
    return-void

    .line 407
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newSearchFragment(Ljava/lang/String;Z)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$null$10(Lcm/aptoide/pt/actions/PermissionManager;Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->permissionRequest:Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/actions/PermissionManager;->requestExternalStoragePermission(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$11(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setupEvents(Lcm/aptoide/pt/database/realm/Download;)V

    return-void
.end method

.method synthetic lambda$null$12(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;ILjava/lang/Void;)Lrx/d;
    .locals 3

    .prologue
    .line 366
    new-instance v1, Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;-><init>()V

    .line 367
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetApp;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->create(Lcm/aptoide/pt/model/v7/GetAppMeta$App;I)Lcm/aptoide/pt/database/realm/Download;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcm/aptoide/pt/v8engine/InstallManager;->install(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v1

    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$28;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/a;

    move-result-object v0

    .line 370
    invoke-virtual {v1, v0}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$13(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Landroid/content/Context;Landroid/view/View;ILcm/aptoide/pt/v8engine/Progress;)V
    .locals 7

    .prologue
    .line 375
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getShowPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->isCreateStoreAndSetUserPrivacyAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    .line 380
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->getPreviewDialogBuilder(Landroid/content/Context;)Landroid/support/v7/a/d$a;

    move-result-object v5

    .line 381
    new-instance v6, Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-direct {v6}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;-><init>()V

    .line 384
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/model/v7/GetApp;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "install"

    move-object v3, p2

    move-object v4, v0

    .line 383
    invoke-virtual/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->showShareCardPreviewDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Landroid/support/v7/a/d$a;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)V

    .line 387
    :cond_0
    invoke-static {p3, p4}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 388
    return-void
.end method

.method synthetic lambda$null$24(Lcm/aptoide/pt/actions/PermissionManager;Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 495
    .line 496
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/actions/PermissionRequest;

    .line 495
    invoke-virtual {p1, v0}, Lcm/aptoide/pt/actions/PermissionManager;->requestExternalStoragePermission(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$25(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setupEvents(Lcm/aptoide/pt/database/realm/Download;)V

    .line 503
    return-void
.end method

.method synthetic lambda$null$26(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/v8engine/Progress;Ljava/lang/Void;)Lrx/d;
    .locals 3

    .prologue
    .line 498
    new-instance v1, Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;-><init>()V

    .line 499
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetApp;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v2

    .line 500
    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getAction()I

    move-result v0

    .line 499
    invoke-virtual {v1, v2, v0}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->create(Lcm/aptoide/pt/model/v7/GetAppMeta$App;I)Lcm/aptoide/pt/database/realm/Download;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcm/aptoide/pt/v8engine/InstallManager;->install(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v1

    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$23;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$6(Landroid/view/View;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)V
    .locals 7

    .prologue
    .line 276
    .line 277
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->downgrade_warning_dialog:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Landroid/view/View;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)V

    .line 276
    invoke-direct {p0, v6, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->showMessageOKCancel(Ljava/lang/String;Lcm/aptoide/pt/utils/SimpleSubscriber;)V

    .line 303
    return-void
.end method

.method synthetic lambda$setupDownloadControls$22(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/InstallManager;->removeInstallationFile(Ljava/lang/String;Landroid/content/Context;)V

    .line 486
    return-void
.end method

.method synthetic lambda$setupDownloadControls$23(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->stopInstallation(Landroid/content/Context;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method synthetic lambda$setupDownloadControls$29(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/v8engine/Progress;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 493
    new-instance v0, Lcm/aptoide/pt/actions/PermissionManager;

    invoke-direct {v0}, Lcm/aptoide/pt/actions/PermissionManager;-><init>()V

    .line 494
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->permissionRequest:Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/actions/PermissionManager;->requestDownloadAccess(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v2

    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$19;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/actions/PermissionManager;)Lrx/b/e;

    move-result-object v0

    .line 495
    invoke-virtual {v2, v0}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$20;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/v8engine/Progress;)Lrx/b/e;

    move-result-object v2

    .line 497
    invoke-virtual {v0, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 505
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$21;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$22;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 506
    invoke-virtual {v0, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 494
    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 511
    return-void
.end method

.method synthetic lambda$setupInstallOrBuyButton$4(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->buyApp(Landroid/content/Context;Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V

    return-void
.end method

.method synthetic lambda$setupInstallOrBuyButton$5(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;)V
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->isShouldInstall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 262
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->setShouldInstall(Z)V

    .line 264
    :cond_0
    return-void
.end method

.method synthetic lambda$showRootInstallWarningPopup$9(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 2

    .prologue
    .line 327
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$3;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    invoke-virtual {p1}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 335
    :goto_0
    return-void

    .line 329
    :pswitch_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/InstallManager;->rootInstallAllowed(Z)V

    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/InstallManager;->rootInstallAllowed(Z)V

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
