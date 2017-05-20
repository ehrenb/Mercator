.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;
.source "RecommendedStoreDisplayable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo",
        "<",
        "Lcm/aptoide/pt/model/v7/store/Store;",
        ">;"
    }
.end annotation


# instance fields
.field storeRepository:Lcm/aptoide/pt/v8engine/repository/StoreRepository;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/store/Store;Lcm/aptoide/pt/v8engine/repository/StoreRepository;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>(Ljava/lang/Object;)V

    .line 26
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;->storeRepository:Lcm/aptoide/pt/v8engine/repository/StoreRepository;

    .line 27
    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_recommended_store:I

    return v0
.end method

.method public isFollowing()Lrx/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;->storeRepository:Lcm/aptoide/pt/v8engine/repository/StoreRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/v8engine/repository/StoreRepository;->isSubscribed(J)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public openStoreFragment(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newStoreFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 53
    invoke-interface {p1, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 55
    return-void
.end method

.method public subscribeStore()V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/StoreUtilsProxy;->subscribeStore(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public unsubscribeStore()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->unsubscribeStore(Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->unsubscribeStore(Ljava/lang/String;)V

    .line 50
    return-void
.end method
