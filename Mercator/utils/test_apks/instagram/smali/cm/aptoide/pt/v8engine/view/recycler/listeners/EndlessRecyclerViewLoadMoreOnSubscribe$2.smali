.class Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe$2;
.super Lrx/a/a;
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

.field final synthetic val$listener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe$2;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe$2;->val$listener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-direct {p0}, Lrx/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe$2;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;

    # getter for: Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;->access$000(Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerViewLoadMoreOnSubscribe$2;->val$listener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 40
    return-void
.end method
