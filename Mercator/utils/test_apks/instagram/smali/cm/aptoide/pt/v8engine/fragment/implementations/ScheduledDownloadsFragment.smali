.class public Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;
.super Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;
.source "ScheduledDownloadsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final OPEN_MODE:Ljava/lang/String; = "openMode"

.field public static final OPEN_SCHEDULE_DOWNLOADS_WITH_POPUP_URI:Ljava/lang/String; = "aptoide://cm.aptoide.pt/schedule_downloads?openMode=AskInstallAll"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

.field private downloadConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

.field private emptyData:Landroid/widget/TextView;

.field private installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

.field private installManager:Lcm/aptoide/pt/v8engine/InstallManager;

.field private openMode:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

.field private scheduledDownloadRepository:Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;-><init>()V

    .line 56
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;->normal:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->openMode:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    .line 62
    return-void
.end method

.method private downloadAndInstallScheduledList(Ljava/util/List;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Scheduled;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 139
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    new-instance v3, Lcm/aptoide/pt/actions/PermissionManager;

    invoke-direct {v3}, Lcm/aptoide/pt/actions/PermissionManager;-><init>()V

    move-object v0, v1

    .line 143
    check-cast v0, Lcm/aptoide/pt/actions/PermissionRequest;

    .line 144
    new-instance v4, Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    invoke-direct {v4}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;-><init>()V

    .line 145
    new-instance v5, Lcm/aptoide/pt/v8engine/install/InstallerFactory;

    invoke-direct {v5}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;-><init>()V

    .line 147
    new-instance v6, Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v7

    .line 148
    invoke-virtual {v5, v1, v2}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->create(Landroid/content/Context;I)Lcm/aptoide/pt/v8engine/install/Installer;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcm/aptoide/pt/v8engine/InstallManager;-><init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/v8engine/install/Installer;)V

    .line 150
    invoke-virtual {v3, v0}, Lcm/aptoide/pt/actions/PermissionManager;->requestExternalStoragePermission(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;Ljava/util/List;)Lrx/b/e;

    move-result-object v3

    .line 151
    invoke-virtual {v0, v3}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$3;->lambdaFactory$()Lrx/b/e;

    move-result-object v3

    .line 152
    invoke-virtual {v0, v3}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/util/DownloadFactory;)Lrx/b/e;

    move-result-object v3

    .line 153
    invoke-virtual {v0, v3}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, v6, v1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;Lcm/aptoide/pt/v8engine/InstallManager;Landroid/content/Context;Z)Lrx/b/e;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 160
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$7;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 161
    invoke-virtual {v0, v1, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move v0, v2

    .line 167
    goto :goto_0
.end method

.method private fetchScheduledDownloads()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->scheduledDownloadRepository:Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;->getAllScheduledDownloads()Lrx/d;

    move-result-object v0

    .line 172
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 173
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;)Lrx/b/b;

    move-result-object v2

    .line 174
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 194
    return-void
.end method

.method static synthetic lambda$downloadAndInstallScheduledList$10(Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->TAG:Ljava/lang/String;

    const-string v1, "finished installing scheduled downloads"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method static synthetic lambda$downloadAndInstallScheduledList$11(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method static synthetic lambda$downloadAndInstallScheduledList$4(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 152
    return-object p0
.end method

.method static synthetic lambda$downloadAndInstallScheduledList$5(Lcm/aptoide/pt/v8engine/util/DownloadFactory;Lcm/aptoide/pt/database/realm/Scheduled;)Lcm/aptoide/pt/database/realm/Download;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->create(Lcm/aptoide/pt/database/realm/Scheduled;)Lcm/aptoide/pt/database/realm/Download;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 122
    return-void
.end method

.method static synthetic lambda$null$7(Lcm/aptoide/pt/v8engine/Progress;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/Progress;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;-><init>()V

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 71
    const-string v2, "openMode"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 72
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    return-object v0
.end method

.method public static newInstance()Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;-><init>()V

    return-object v0
.end method

.method private updateUi(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Scheduled;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->emptyData:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->no_sch_downloads:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 210
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->emptyData:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 212
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->finishLoading()V

    .line 222
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->emptyData:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    .line 216
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Scheduled;

    .line 218
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-direct {v3, v0, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;-><init>(Lcm/aptoide/pt/database/realm/Scheduled;Lcm/aptoide/pt/v8engine/InstallManager;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 220
    :cond_2
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;->addDisplayables(Ljava/util/List;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    goto :goto_0
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->bindViews(Landroid/view/View;)V

    .line 96
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->empty_data:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->emptyData:Landroid/widget/TextView;

    .line 97
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getScheduledDownloadRepository()Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->scheduledDownloadRepository:Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->setHasOptionsMenu(Z)V

    .line 100
    return-void
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->fragment_with_toolbar:I

    return v0
.end method

.method synthetic lambda$downloadAndInstallScheduledList$3(Ljava/util/List;Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->scheduledDownloadRepository:Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;->setInstalling(Ljava/util/List;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$downloadAndInstallScheduledList$9(Lcm/aptoide/pt/v8engine/InstallManager;Landroid/content/Context;ZLcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p1, p2, p4}, Lcm/aptoide/pt/v8engine/InstallManager;->install(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p4, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;Lcm/aptoide/pt/database/realm/Download;Z)Lrx/b/a;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$11;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p4}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/b;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$fetchScheduledDownloads$12(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->updateUi(Ljava/util/List;)V

    .line 176
    return-void
.end method

.method synthetic lambda$fetchScheduledDownloads$13(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 178
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->emptyData:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->no_sch_downloads:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->emptyData:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 181
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->finishLoading()V

    .line 182
    return-void
.end method

.method synthetic lambda$load$2(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 3

    .prologue
    .line 112
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$1;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    invoke-virtual {p1}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    :pswitch_0
    return-void

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->scheduledDownloadRepository:Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;->getAllScheduledDownloads()Lrx/d;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    .line 116
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 117
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$13;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$14;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 118
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$null$0(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->downloadAndInstallScheduledList(Ljava/util/List;Z)Z

    return-void
.end method

.method synthetic lambda$null$6(Lcm/aptoide/pt/database/realm/Download;Z)V
    .locals 1

    .prologue
    .line 155
    if-eqz p2, :cond_0

    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->AUTO:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->setupEvents(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;)V

    return-void

    :cond_0
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->CLICK:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    goto :goto_0
.end method

.method synthetic lambda$null$8(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->scheduledDownloadRepository:Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;

    .line 159
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;->deleteScheduledDownload(Ljava/lang/String;)V

    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->load(ZZLandroid/os/Bundle;)V

    .line 104
    if-eqz p1, :cond_0

    .line 105
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$1;->$SwitchMap$cm$aptoide$pt$v8engine$fragment$implementations$ScheduledDownloadsFragment$OpenMode:[I

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->openMode:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->fetchScheduledDownloads()V

    .line 134
    return-void

    .line 109
    :pswitch_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->setting_schdwntitle:I

    .line 110
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->schDown_install:I

    invoke-virtual {p0, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericYesNoCancelMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;)Lrx/b/b;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->loadExtras(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "openMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->openMode:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Lcm/aptoide/pt/v8engine/install/InstallerFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;-><init>()V

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->create(Landroid/content/Context;I)Lcm/aptoide/pt/v8engine/install/Installer;

    move-result-object v0

    .line 79
    new-instance v1, Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcm/aptoide/pt/v8engine/InstallManager;-><init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/v8engine/install/Installer;)V

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    .line 80
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->downloadConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    .line 81
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    .line 82
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->getInstance()Lcm/aptoide/pt/v8engine/analytics/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    .line 83
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 234
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_scheduled_downloads_fragment:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 235
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 240
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    move v0, v3

    .line 295
    :goto_0
    return v0

    .line 245
    :cond_0
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->menu_install_selected:I

    if-ne v0, v1, :cond_4

    .line 246
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v4

    .line 247
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 248
    :goto_1
    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 250
    invoke-virtual {v4, v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getDisplayable(I)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;

    .line 251
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 252
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 256
    :cond_2
    invoke-direct {p0, v5, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->downloadAndInstallScheduledList(Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->emptyData:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->installing_msg:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    :goto_2
    move v0, v3

    .line 262
    goto :goto_0

    .line 259
    :cond_3
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->emptyData:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->schDown_nodownloadselect:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    goto :goto_2

    .line 265
    :cond_4
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->menu_remove:I

    if-ne v0, v1, :cond_7

    .line 266
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v1

    .line 267
    :goto_3
    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getItemCount()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 269
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getDisplayable(I)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;

    .line 270
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 271
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;->removeFromDatabase()V

    .line 267
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move v0, v3

    .line 274
    goto :goto_0

    .line 277
    :cond_7
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->menu_select_all:I

    if-ne v0, v1, :cond_9

    .line 278
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v1

    .line 279
    :goto_4
    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getItemCount()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 280
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getDisplayable(I)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;

    invoke-virtual {v0, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;->setSelected(Z)V

    .line 281
    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->notifyDataSetChanged()V

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    move v0, v3

    .line 283
    goto/16 :goto_0

    .line 286
    :cond_9
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->menu_select_none:I

    if-ne v0, v1, :cond_b

    .line 287
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v4

    move v1, v2

    .line 288
    :goto_5
    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 289
    invoke-virtual {v4, v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getDisplayable(I)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;->setSelected(Z)V

    .line 290
    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->notifyDataSetChanged()V

    .line 288
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_a
    move v0, v3

    .line 292
    goto/16 :goto_0

    .line 295
    :cond_b
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public setupEvents(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;)V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->downloadConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;->SCHEDULED:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    .line 198
    invoke-virtual {v0, p1, p2, v1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;->create(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    .line 199
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

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

    .line 201
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->CLICK:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    sget-object v2, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;->SCHEDULED:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    .line 202
    invoke-virtual {v0, p1, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;->create(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;

    .line 204
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

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

    .line 205
    return-void
.end method

.method public setupToolbarDetails(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 229
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->setting_schdwntitle:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 230
    return-void
.end method
