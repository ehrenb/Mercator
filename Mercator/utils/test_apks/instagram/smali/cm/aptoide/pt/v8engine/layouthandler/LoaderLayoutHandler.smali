.class public Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;
.super Ljava/lang/Object;
.source "LoaderLayoutHandler.java"


# instance fields
.field private genericErrorView:Landroid/view/View;

.field final loadInterface:Lcm/aptoide/pt/v8engine/interfaces/LoadInterface;

.field private noNetworkConnectionView:Landroid/view/View;

.field protected progressBar:Landroid/widget/ProgressBar;

.field private retryErrorView:Landroid/view/View;

.field private retryNoNetworkView:Landroid/view/View;

.field private viewToShowAfterLoading:Landroid/view/View;

.field private final viewToShowAfterLoadingId:I


# direct methods
.method public constructor <init>(ILcm/aptoide/pt/v8engine/interfaces/LoadInterface;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->viewToShowAfterLoadingId:I

    .line 39
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->loadInterface:Lcm/aptoide/pt/v8engine/interfaces/LoadInterface;

    .line 40
    return-void
.end method

.method static synthetic lambda$finishLoading$4(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method static synthetic lambda$finishLoading$5(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->viewToShowAfterLoadingId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->viewToShowAfterLoading:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->viewToShowAfterLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->progressBar:Landroid/widget/ProgressBar;

    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 47
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->generic_error:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->genericErrorView:Landroid/view/View;

    .line 48
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->no_network_connection:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->noNetworkConnectionView:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->genericErrorView:Landroid/view/View;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->retryErrorView:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->noNetworkConnectionView:Landroid/view/View;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->retryNoNetworkView:Landroid/view/View;

    .line 51
    return-void
.end method

.method public finishLoading()V
    .locals 3

    .prologue
    .line 87
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    .line 90
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler$$Lambda$5;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 94
    return-void
.end method

.method public finishLoading(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 56
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;Ljava/lang/Throwable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method synthetic lambda$finishLoading$0(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->onFinishLoading(Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$finishLoading$3()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->onFinishLoading()V

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onFinishLoading$1(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 67
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->restoreState()V

    .line 68
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->loadInterface:Lcm/aptoide/pt/v8engine/interfaces/LoadInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/interfaces/LoadInterface;->load(ZZLandroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method synthetic lambda$onFinishLoading$2(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->restoreState()V

    .line 75
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->loadInterface:Lcm/aptoide/pt/v8engine/interfaces/LoadInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/interfaces/LoadInterface;->load(ZZLandroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method protected onFinishLoading()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->viewToShowAfterLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    return-void
.end method

.method protected onFinishLoading(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->viewToShowAfterLoading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-static {p1}, Lcm/aptoide/pt/dataprovider/util/ErrorUtils;->isNoNetworkConnection(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->genericErrorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->noNetworkConnectionView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->retryNoNetworkView:Landroid/view/View;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->noNetworkConnectionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->genericErrorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->retryErrorView:Landroid/view/View;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected restoreState()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 81
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->genericErrorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->noNetworkConnectionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 84
    return-void
.end method

.method public unbindViews()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
