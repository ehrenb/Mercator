.class public abstract Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragment;
.super Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;
.source "GridRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
        ">",
        "Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final adapterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;-><init>()V

    .line 25
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragment;->adapterClass:Ljava/lang/Class;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;-><init>()V

    .line 29
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragment;->adapterClass:Ljava/lang/Class;

    .line 30
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragment;->adapterClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createLayoutManager()Landroid/support/v7/widget/RecyclerView$h;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager;-><init>(Landroid/content/Context;Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;)V

    return-object v0
.end method

.method protected getViewToShowAfterLoadingId()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->recycler_view:I

    return v0
.end method
