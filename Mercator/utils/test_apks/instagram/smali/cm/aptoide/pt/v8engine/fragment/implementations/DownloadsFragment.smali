.class public Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;
.super Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;
.source "DownloadsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

.field private completedDisplayables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation
.end field

.field private downloadConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

.field private downloadingDisplayables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation
.end field

.field private installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

.field private installManager:Lcm/aptoide/pt/v8engine/InstallManager;

.field private standingByDisplayables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;-><init>()V

    return-void
.end method

.method private addListHeaders()Lrx/a;
    .locals 1

    .prologue
    .line 116
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Ljava/util/concurrent/Callable;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method private createDisplayableForDownload(Lcm/aptoide/pt/database/realm/Download;)Lrx/a;
    .locals 1

    .prologue
    .line 98
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;Lcm/aptoide/pt/database/realm/Download;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Ljava/util/concurrent/Callable;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method private isDownloading(Lcm/aptoide/pt/database/realm/Download;)Z
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStandingBy(Lcm/aptoide/pt/database/realm/Download;)Z
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 157
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 158
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$null$3()V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->TAG:Ljava/lang/String;

    const-string v1, "updated list of download states"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method static synthetic lambda$onViewCreated$5(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method static synthetic lambda$onViewCreated$6(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 94
    return-void
.end method

.method public static newInstance()Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;-><init>()V

    return-object v0
.end method

.method private updateUi()Lrx/a;
    .locals 1

    .prologue
    .line 141
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Ljava/util/concurrent/Callable;)Lrx/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentViewId()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->recycler_fragment_downloads:I

    return v0
.end method

.method synthetic lambda$addListHeaders$8()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 120
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->downloadingDisplayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->downloadingDisplayables:Ljava/util/List;

    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->active:I

    .line 122
    invoke-static {v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getResString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;-><init>(Ljava/lang/String;Lcm/aptoide/pt/v8engine/InstallManager;)V

    .line 121
    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->standingByDisplayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->standingByDisplayables:Ljava/util/List;

    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;

    new-instance v2, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    invoke-direct {v2}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;-><init>()V

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->stand_by:I

    .line 129
    invoke-static {v3}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getResString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-virtual {v2, v3}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->setTitle(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    move-result-object v2

    invoke-direct {v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)V

    .line 127
    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->completedDisplayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->completedDisplayables:Ljava/util/List;

    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;

    new-instance v2, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    invoke-direct {v2}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;-><init>()V

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->completed:I

    .line 134
    invoke-static {v3}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getResString(I)Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-virtual {v2, v3}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->setTitle(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    move-result-object v2

    invoke-direct {v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)V

    .line 132
    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 136
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$createDisplayableForDownload$7(Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->isDownloading(Lcm/aptoide/pt/database/realm/Download;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->downloadingDisplayables:Ljava/util/List;

    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-direct {v1, p1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;-><init>(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/InstallManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->isStandingBy(Lcm/aptoide/pt/database/realm/Download;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v6, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->standingByDisplayables:Ljava/util/List;

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->downloadConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;-><init>(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;Lcm/aptoide/pt/v8engine/analytics/Analytics;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    iget-object v6, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->completedDisplayables:Ljava/util/List;

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->downloadConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;-><init>(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;Lcm/aptoide/pt/v8engine/analytics/Analytics;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method synthetic lambda$null$1(Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->createDisplayableForDownload(Lcm/aptoide/pt/database/realm/Download;)Lrx/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/a;->b()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onViewCreated$0(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->downloadingDisplayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->standingByDisplayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->completedDisplayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    return-void
.end method

.method synthetic lambda$onViewCreated$2(Ljava/util/List;)Lrx/d;
    .locals 2

    .prologue
    .line 80
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;)Lrx/b/e;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onViewCreated$4(Ljava/util/List;)Lrx/d;
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->addListHeaders()Lrx/a;

    move-result-object v0

    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->updateUi()Lrx/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/a;)Lrx/a;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment$$Lambda$9;->lambdaFactory$()Lrx/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/b/a;)Lrx/a;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lrx/a;->b()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$updateUi$9()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->downloadingDisplayables:Ljava/util/List;

    .line 143
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->addDisplayables(Ljava/util/List;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->standingByDisplayables:Ljava/util/List;

    .line 144
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->addDisplayables(Ljava/util/List;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->completedDisplayables:Ljava/util/List;

    const/4 v2, 0x1

    .line 145
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->addDisplayables(Ljava/util/List;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->downloadingDisplayables:Ljava/util/List;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->standingByDisplayables:Ljava/util/List;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->completedDisplayables:Ljava/util/List;

    .line 171
    new-instance v0, Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v1

    new-instance v2, Lcm/aptoide/pt/v8engine/install/InstallerFactory;

    invoke-direct {v2}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;-><init>()V

    .line 172
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->create(Landroid/content/Context;I)Lcm/aptoide/pt/v8engine/install/Installer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/InstallManager;-><init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/v8engine/install/Installer;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    .line 174
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->getInstance()Lcm/aptoide/pt/v8engine/analytics/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    .line 175
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    .line 176
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->downloadConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    .line 178
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated()V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;->onViewCreated()V

    .line 71
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getDownloadRepository()Lcm/aptoide/pt/v8engine/repository/DownloadRepository;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/repository/DownloadRepository;->getAll()Lrx/d;

    move-result-object v0

    .line 73
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    const-wide/16 v2, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    invoke-virtual {v0, v2, v3, v1}, Lrx/d;->b(JLjava/util/concurrent/TimeUnit;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;)Lrx/b/b;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;)Lrx/b/e;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 85
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;)Lrx/b/e;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 89
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment$$Lambda$4;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment$$Lambda$5;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 90
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 95
    return-void
.end method
