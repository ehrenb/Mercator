.class public abstract Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;
.super Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;
.source "GetStoreEndlessFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;",
        ">",
        "Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;"
    }
.end annotation


# instance fields
.field protected endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;-><init>()V

    return-void
.end method

.method private setupEndless(Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
            "<TT;+",
            "Lcm/aptoide/pt/dataprovider/ws/v7/Endless;",
            ">;",
            "Lrx/b/b",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 43
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    .line 44
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;->getErrorRequestListener()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    .line 47
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0, p3}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onLoadMore(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method protected abstract buildAction()Lrx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b/b",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected buildDisplayables(ZLjava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;->buildRequest(ZLjava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/V7;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;->buildAction()Lrx/b/b;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;->setupEndless(Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Z)V

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract buildRequest(ZLjava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/V7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
            "<TT;+",
            "Lcm/aptoide/pt/dataprovider/ws/v7/Endless;",
            ">;"
        }
    .end annotation
.end method

.method protected getErrorRequestListener()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getErrorRequestListener$0(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;->finishLoading(Ljava/lang/Throwable;)V

    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;->load(ZZLandroid/os/Bundle;)V

    .line 26
    if-nez p1, :cond_0

    .line 28
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 32
    :cond_0
    return-void
.end method
