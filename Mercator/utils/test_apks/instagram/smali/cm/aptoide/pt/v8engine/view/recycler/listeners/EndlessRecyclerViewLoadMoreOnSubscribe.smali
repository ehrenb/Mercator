.class public Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;
.super Ljava/lang/Object;
.source "EndlessRecyclerViewLoadMoreOnSubscribe.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

.field private final recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 21
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;->call(Lrx/j;)V

    return-void
.end method

.method public call(Lrx/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lrx/a/a;->verifyMainThread()V

    .line 27
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe$1;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-direct {v0, p0, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe$1;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lrx/j;)V

    .line 35
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 37
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe$2;

    invoke-direct {v1, p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe$2;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;)V

    invoke-virtual {p1, v1}, Lrx/j;->add(Lrx/k;)V

    .line 42
    return-void
.end method
