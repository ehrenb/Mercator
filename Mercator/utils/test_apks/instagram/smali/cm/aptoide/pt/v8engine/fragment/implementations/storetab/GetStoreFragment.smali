.class public Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;
.super Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;
.source "GetStoreFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 17
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;->requestFactory:Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->newStore(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;->observe(Z)Lrx/d;

    move-result-object v0

    .line 19
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;ZLjava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;)Lrx/b/b;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$buildDisplayables$0(ZLjava/lang/String;Lcm/aptoide/pt/model/v7/store/GetStore;)Lrx/d;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p3}, Lcm/aptoide/pt/model/v7/store/GetStore;->getNodes()Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getWidgets()Lcm/aptoide/pt/model/v7/GetStoreWidgets;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;->loadGetStoreWidgets(Lcm/aptoide/pt/model/v7/GetStoreWidgets;ZLjava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$buildDisplayables$1(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AdultRowDisplayable;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AdultRowDisplayable;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    return-void
.end method
