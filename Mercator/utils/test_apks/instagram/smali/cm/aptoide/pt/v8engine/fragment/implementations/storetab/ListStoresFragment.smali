.class public Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListStoresFragment;
.super Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;
.source "ListStoresFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment",
        "<",
        "Lcm/aptoide/pt/model/v7/store/ListStores;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildAction()Lrx/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b/b",
            "<",
            "Lcm/aptoide/pt/model/v7/store/ListStores;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListStoresFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListStoresFragment;)Lrx/b/b;

    move-result-object v0

    return-object v0
.end method

.method protected buildRequest(ZLjava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/V7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
            "<",
            "Lcm/aptoide/pt/model/v7/store/ListStores;",
            "+",
            "Lcm/aptoide/pt/dataprovider/ws/v7/Endless;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListStoresFragment;->requestFactory:Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->newListStoresRequest(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$buildAction$0(Lcm/aptoide/pt/model/v7/store/ListStores;)V
    .locals 4

    .prologue
    .line 28
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/ListStores;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    .line 32
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;

    invoke-direct {v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;-><init>(Lcm/aptoide/pt/model/v7/store/Store;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListStoresFragment;->addDisplayable(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    .line 36
    return-void
.end method
