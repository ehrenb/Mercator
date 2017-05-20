.class public abstract Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;
.super Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;
.source "GridRecyclerFragmentWithDecorator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
        ">",
        "Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method protected getItemDecoration()Landroid/support/v7/widget/RecyclerView$g;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;)V

    return-object v0
.end method

.method public setupViews()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->setupViews()V

    .line 28
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;->getItemDecoration()Landroid/support/v7/widget/RecyclerView$g;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragmentWithDecorator;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 32
    :cond_0
    return-void
.end method
