.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "UpdatesHeaderDisplayable.java"


# instance fields
.field private analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

.field private converter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

.field private installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

.field private installManager:Lcm/aptoide/pt/v8engine/InstallManager;

.field private label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/v8engine/InstallManager;Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/Analytics;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 37
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    .line 38
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->label:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    .line 40
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->converter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    .line 41
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    .line 42
    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 45
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getInstallManager()Lcm/aptoide/pt/v8engine/InstallManager;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->updates_header_row:I

    return v0
.end method

.method public install(Landroid/support/v4/app/u;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/u;",
            "Lcm/aptoide/pt/database/realm/Download;",
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
    .line 53
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/InstallManager;->showWarning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->root_access_dialog:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 55
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {p1, v0, v1}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericYesNoCancelMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;)Lrx/b/b;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 67
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/InstallManager;->install(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/a;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$install$0(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable$1;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    invoke-virtual {p1}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/InstallManager;->rootInstallAllowed(Z)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/InstallManager;->rootInstallAllowed(Z)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method synthetic lambda$install$1(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->setupDownloadEvent(Lcm/aptoide/pt/database/realm/Download;)V

    return-void
.end method

.method public setupDownloadEvent(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->converter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->CLICK:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    sget-object v2, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;->UPDATE_TAB:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    sget-object v3, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->UPDATE_ALL:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    .line 73
    invoke-virtual {v0, p1, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;->create(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    .line 75
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

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

    .line 77
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->installConverter:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->CLICK:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    sget-object v2, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;->UPDATE_TAB:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;

    sget-object v3, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->UPDATE_ALL:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    .line 78
    invoke-virtual {v0, p1, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;->create(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;

    .line 80
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

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

    .line 81
    return-void
.end method
