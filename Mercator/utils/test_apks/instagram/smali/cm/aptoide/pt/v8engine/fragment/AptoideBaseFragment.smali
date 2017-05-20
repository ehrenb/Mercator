.class public Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;
.super Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragment;
.source "AptoideBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
        ">",
        "Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragment",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected requestFactory:Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->requestFactory:Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;

    .line 19
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method
