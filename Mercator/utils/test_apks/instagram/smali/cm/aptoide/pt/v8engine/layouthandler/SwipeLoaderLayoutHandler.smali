.class public Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;
.super Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;
.source "SwipeLoaderLayoutHandler.java"


# instance fields
.field private swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(ILcm/aptoide/pt/v8engine/interfaces/ReloadInterface;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;-><init>(ILcm/aptoide/pt/v8engine/interfaces/LoadInterface;)V

    .line 24
    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->bindViews(Landroid/view/View;)V

    .line 28
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->swipe_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcm/aptoide/pt/v8engine/R$color;->default_progress_bar_color:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcm/aptoide/pt/v8engine/R$color;->default_color:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcm/aptoide/pt/v8engine/R$color;->default_progress_bar_color:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcm/aptoide/pt/v8engine/R$color;->default_color:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;)Landroid/support/v4/widget/SwipeRefreshLayout$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$b;)V

    .line 32
    return-void
.end method

.method synthetic lambda$bindViews$0()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;->loadInterface:Lcm/aptoide/pt/v8engine/interfaces/LoadInterface;

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/ReloadInterface;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/interfaces/ReloadInterface;->reload()V

    return-void
.end method

.method protected onFinishLoading()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->onFinishLoading()V

    .line 47
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 49
    return-void
.end method

.method public onFinishLoading(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->onFinishLoading(Ljava/lang/Throwable;)V

    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 38
    return-void
.end method

.method public restoreState()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->restoreState()V

    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 43
    return-void
.end method

.method public unbindViews()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$b;)V

    .line 53
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;->unbindViews()V

    .line 54
    return-void
.end method
