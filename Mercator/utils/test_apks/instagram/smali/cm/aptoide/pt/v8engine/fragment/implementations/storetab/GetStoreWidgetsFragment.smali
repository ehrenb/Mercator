.class public Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreWidgetsFragment;
.super Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;
.source "GetStoreWidgetsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
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
    .line 15
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreWidgetsFragment;->requestFactory:Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->newStoreWidgets(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest;->observe(Z)Lrx/d;

    move-result-object v0

    .line 17
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreWidgetsFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreWidgetsFragment;ZLjava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$buildDisplayables$0(ZLjava/lang/String;Lcm/aptoide/pt/model/v7/GetStoreWidgets;)Lrx/d;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p3, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreWidgetsFragment;->loadGetStoreWidgets(Lcm/aptoide/pt/model/v7/GetStoreWidgets;ZLjava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
