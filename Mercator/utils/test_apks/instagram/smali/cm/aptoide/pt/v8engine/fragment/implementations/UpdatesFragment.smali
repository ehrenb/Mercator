.class public Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;
.super Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;
.source "UpdatesFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

.field private downloadInstallEventConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

.field private installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

.field private installManager:Lcm/aptoide/pt/v8engine/InstallManager;

.field private installedDisplayablesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation
.end field

.field private installedRepository:Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

.field private oldUpdateListHash:I

.field private updateReloadSubscription:Lrx/k;

.field private updateRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

.field private updatesDisplayablesList:Ljava/util/List;
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
    .line 44
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->oldUpdateListHash:I

    return-void
.end method

.method private fetchInstalled()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Installed;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->installedRepository:Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->getAllSorted()Lrx/d;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$5;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$6;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;)Lrx/b/e;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private filterUpdates(Lcm/aptoide/pt/database/realm/Installed;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/Installed;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Installed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updateRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Installed;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->contains(Ljava/lang/String;Z)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/database/realm/Installed;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fetchInstalled$5(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 166
    return-object p0
.end method

.method static synthetic lambda$fetchInstalled$6(Lcm/aptoide/pt/database/realm/Installed;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Installed;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$filterUpdates$8(Lcm/aptoide/pt/database/realm/Installed;Ljava/lang/Boolean;)Lrx/d;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method public static newInstance()Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;-><init>()V

    return-object v0
.end method

.method private setInstalled(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Installed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->installedDisplayablesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->installedDisplayablesList:Ljava/util/List;

    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;

    new-instance v2, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    invoke-direct {v2}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;-><init>()V

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->installed_tab:I

    .line 176
    invoke-static {v3}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getResString(I)Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-virtual {v2, v3}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->setTitle(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    move-result-object v2

    invoke-direct {v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)V

    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Installed;

    .line 179
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->installedDisplayablesList:Ljava/util/List;

    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/InstalledAppDisplayable;

    invoke-direct {v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/InstalledAppDisplayable;-><init>(Lcm/aptoide/pt/database/realm/Installed;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->installedDisplayablesList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->addDisplayables(Ljava/util/List;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 182
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->TAG:Ljava/lang/String;

    const-string v1, "listed installed apps"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private setUpdates(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Update;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updatesDisplayablesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 124
    iget-object v6, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updatesDisplayablesList:Ljava/util/List;

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->updates:I

    .line 125
    invoke-static {v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getResString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->downloadInstallEventConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;-><init>(Lcm/aptoide/pt/v8engine/InstallManager;Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/Analytics;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;)V

    .line 124
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Update;

    .line 129
    iget-object v7, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updatesDisplayablesList:Ljava/util/List;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    new-instance v2, Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    invoke-direct {v2}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;-><init>()V

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->downloadInstallEventConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    .line 130
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->newInstance(Lcm/aptoide/pt/database/realm/Update;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/v8engine/util/DownloadFactory;Lcm/aptoide/pt/v8engine/analytics/Analytics;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;

    move-result-object v0

    .line 129
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updatesDisplayablesList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->addDisplayables(Ljava/util/List;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 135
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->TAG:Ljava/lang/String;

    const-string v1, "listed updates"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private showUpdateMessage(Ljava/util/List;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Update;",
            ">;)",
            "Lrx/a;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;Ljava/util/List;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Ljava/util/concurrent/Callable;)Lrx/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic lambda$fetchInstalled$7(Lcm/aptoide/pt/database/realm/Installed;)Lrx/d;
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->filterUpdates(Lcm/aptoide/pt/database/realm/Installed;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$0(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->setInstalled(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$1(Ljava/util/List;)Lrx/d;
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 106
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->setUpdates(Ljava/util/List;)V

    .line 107
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->showUpdateMessage(Ljava/util/List;)Lrx/a;

    .line 108
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->fetchInstalled()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$11;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onViewCreated$2(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->finishLoading()V

    .line 112
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->TAG:Ljava/lang/String;

    const-string v1, "listing updates and installed"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method synthetic lambda$onViewCreated$3(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->TAG:Ljava/lang/String;

    const-string v1, "listing updates or installed threw an exception"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 116
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->finishLoading()V

    .line 117
    return-void
.end method

.method synthetic lambda$reload$10(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 216
    instance-of v0, p1, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->add_store:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 219
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 220
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->finishLoading()V

    .line 221
    return-void
.end method

.method synthetic lambda$reload$9()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->finishLoading()V

    return-void
.end method

.method synthetic lambda$showUpdateMessage$4(Ljava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 141
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    .line 142
    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 144
    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->no_updates_available_retoric:I

    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 153
    :goto_2
    iput v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->oldUpdateListHash:I

    .line 154
    const/4 v0, 0x0

    return-object v0

    :cond_0
    move v2, v1

    .line 141
    goto :goto_0

    :cond_1
    move v0, v1

    .line 142
    goto :goto_1

    .line 146
    :cond_2
    iget v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->oldUpdateListHash:I

    if-eq v0, v3, :cond_3

    .line 147
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->new_updates:I

    invoke-virtual {p0, v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 147
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2

    .line 150
    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->no_new_updates_available:I

    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    goto :goto_2
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->onDestroyView()V

    .line 84
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updateReloadSubscription:Lrx/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updateReloadSubscription:Lrx/k;

    invoke-interface {v0}, Lrx/k;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updateReloadSubscription:Lrx/k;

    invoke-interface {v0}, Lrx/k;->unsubscribe()V

    .line 87
    :cond_0
    return-void
.end method

.method public onViewCreated()V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->onViewCreated()V

    .line 98
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updateRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->getAll(Z)Lrx/d;

    move-result-object v0

    const-wide/16 v2, 0x2ee

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 101
    invoke-virtual {v0, v2, v3, v1}, Lrx/d;->b(JLjava/util/concurrent/TimeUnit;)Lrx/d;

    move-result-object v0

    .line 102
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 103
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;)Lrx/b/e;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;)Lrx/b/b;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 118
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 209
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->reload()V

    .line 211
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updateReloadSubscription:Lrx/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updateReloadSubscription:Lrx/k;

    invoke-interface {v0}, Lrx/k;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updateReloadSubscription:Lrx/k;

    invoke-interface {v0}, Lrx/k;->unsubscribe()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updateRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->sync(Z)Lrx/a;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;)Lrx/b/a;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/b/a;Lrx/b/b;)Lrx/k;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updateReloadSubscription:Lrx/k;

    .line 222
    return-void
.end method

.method public setupViews()V
    .locals 5

    .prologue
    .line 66
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->setupViews()V

    .line 68
    new-instance v0, Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v1

    new-instance v2, Lcm/aptoide/pt/v8engine/install/InstallerFactory;

    invoke-direct {v2}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;-><init>()V

    .line 69
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->create(Landroid/content/Context;I)Lcm/aptoide/pt/v8engine/install/Installer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/InstallManager;-><init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/v8engine/install/Installer;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    .line 70
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->getInstance()Lcm/aptoide/pt/v8engine/analytics/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    .line 71
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->downloadInstallEventConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    .line 72
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updatesDisplayablesList:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->installedDisplayablesList:Ljava/util/List;

    .line 77
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getInstalledRepository()Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->installedRepository:Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    .line 78
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getUpdateRepository()Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->updateRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    .line 79
    return-void
.end method
