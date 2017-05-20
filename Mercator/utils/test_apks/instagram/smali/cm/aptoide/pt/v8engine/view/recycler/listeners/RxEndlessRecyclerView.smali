.class public final Lcm/aptoide/pt/v8engine/view/recycler/listeners/RxEndlessRecyclerView;
.super Ljava/lang/Object;
.source "RxEndlessRecyclerView.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public static loadMore(Landroid/support/v7/widget/RecyclerView;Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;-><init>(Landroid/support/v7/widget/RecyclerView;Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
