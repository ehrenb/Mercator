.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "ActiveDownloadDisplayable.java"


# instance fields
.field private final download:Lcm/aptoide/pt/database/realm/Download;

.field private final installManager:Lcm/aptoide/pt/v8engine/InstallManager;

.field private onPauseAction:Lrx/b/a;

.field private onResumeAction:Lrx/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 22
    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    .line 23
    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->download:Lcm/aptoide/pt/database/realm/Download;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/InstallManager;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 27
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->download:Lcm/aptoide/pt/database/realm/Download;

    .line 28
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    .line 29
    return-void
.end method

.method static synthetic lambda$getDownloadObservable$0(Lcm/aptoide/pt/v8engine/Progress;)Lcm/aptoide/pt/database/realm/Download;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    return-object v0
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getDownloadObservable()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/InstallManager;->getInstallation(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->active_donwload_row_layout:I

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->onPauseAction:Lrx/b/a;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->onPauseAction:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    .line 50
    :cond_0
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->onPause()V

    .line 51
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->onResume()V

    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->onResumeAction:Lrx/b/a;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->onResumeAction:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    .line 44
    :cond_0
    return-void
.end method

.method public pauseInstall(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->download:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/InstallManager;->stopInstallation(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public setOnPauseAction(Lrx/b/a;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->onPauseAction:Lrx/b/a;

    .line 64
    return-void
.end method

.method public setOnResumeAction(Lrx/b/a;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->onResumeAction:Lrx/b/a;

    .line 68
    return-void
.end method
