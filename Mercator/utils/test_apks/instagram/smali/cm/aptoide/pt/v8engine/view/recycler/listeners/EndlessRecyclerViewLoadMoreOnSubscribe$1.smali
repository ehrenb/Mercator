.class Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe$1;
.super Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;
.source "EndlessRecyclerViewLoadMoreOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;->call(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;

.field final synthetic val$subscriber:Lrx/j;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lrx/j;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe$1;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe$1;->val$subscriber:Lrx/j;

    invoke-direct {p0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;)V

    return-void
.end method


# virtual methods
.method public onLoadMore(Z)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe$1;->val$subscriber:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe$1;->val$subscriber:Lrx/j;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe$1;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getItemCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 32
    :cond_0
    return-void
.end method
