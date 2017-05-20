.class public Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment;
.super Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment;
.source "ListAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreEndlessFragment",
        "<",
        "Lcm/aptoide/pt/model/v7/ListApps;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
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
            "Lcm/aptoide/pt/model/v7/ListApps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment;)Lrx/b/b;

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
            "Lcm/aptoide/pt/model/v7/ListApps;",
            "+",
            "Lcm/aptoide/pt/dataprovider/ws/v7/Endless;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment;->requestFactory:Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->newListAppsRequest(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$buildAction$0(Lcm/aptoide/pt/model/v7/ListApps;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 29
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListApps;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 32
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment;->layout:Lcm/aptoide/pt/model/v7/Layout;

    if-eqz v2, :cond_0

    .line 33
    sget-object v2, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment$1;->$SwitchMap$cm$aptoide$pt$model$v7$Layout:[I

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment;->layout:Lcm/aptoide/pt/model/v7/Layout;

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Layout;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    .line 42
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    new-instance v4, Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment;->storeTheme:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcm/aptoide/pt/model/v7/store/Store;->setAppearance(Lcm/aptoide/pt/model/v7/store/Store$Appearance;)Lcm/aptoide/pt/model/v7/store/Store;

    .line 43
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment;->tag:Ljava/lang/String;

    invoke-direct {v3, v0, v4, v7}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;-><init>(Lcm/aptoide/pt/model/v7/listapp/App;Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    .line 36
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    new-instance v4, Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment;->storeTheme:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcm/aptoide/pt/model/v7/store/Store;->setAppearance(Lcm/aptoide/pt/model/v7/store/Store$Appearance;)Lcm/aptoide/pt/model/v7/store/Store;

    .line 37
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickListDisplayable;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment;->tag:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickListDisplayable;-><init>(Lcm/aptoide/pt/model/v7/listapp/App;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    .line 49
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    new-instance v4, Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment;->storeTheme:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcm/aptoide/pt/model/v7/store/Store;->setAppearance(Lcm/aptoide/pt/model/v7/store/Store$Appearance;)Lcm/aptoide/pt/model/v7/store/Store;

    .line 50
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment;->tag:Ljava/lang/String;

    invoke-direct {v3, v0, v4, v7}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;-><init>(Lcm/aptoide/pt/model/v7/listapp/App;Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 54
    :cond_1
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment;->addDisplayables(Ljava/util/List;)V

    .line 55
    return-void

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
