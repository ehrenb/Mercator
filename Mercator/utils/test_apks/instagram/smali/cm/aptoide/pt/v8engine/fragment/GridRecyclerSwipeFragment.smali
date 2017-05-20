.class public abstract Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;
.super Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;
.source "GridRecyclerSwipeFragment.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/interfaces/ReloadInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment$BundleCons;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
        ">",
        "Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator",
        "<TT;>;",
        "Lcm/aptoide/pt/v8engine/interfaces/ReloadInterface;"
    }
.end annotation


# instance fields
.field protected storeTheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;-><init>()V

    return-void
.end method


# virtual methods
.method protected createLoaderLayoutHandler()Lcm/aptoide/pt/v8engine/layouthandler/LoaderLayoutHandler;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->getViewToShowAfterLoadingId()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lcm/aptoide/pt/v8engine/layouthandler/SwipeLoaderLayoutHandler;-><init>(ILcm/aptoide/pt/v8engine/interfaces/ReloadInterface;)V

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->recycler_swipe_fragment:I

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->storeTheme:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getDefaultTheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->storeTheme:Ljava/lang/String;

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->storeTheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/util/ThemeUtils;->setStoreTheme(Landroid/app/Activity;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->storeTheme:Ljava/lang/String;

    invoke-static {v1}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/util/ThemeUtils;->setStatusBarThemeColor(Landroid/app/Activity;Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;)V

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->load(ZZLandroid/os/Bundle;)V

    .line 49
    return-void
.end method
