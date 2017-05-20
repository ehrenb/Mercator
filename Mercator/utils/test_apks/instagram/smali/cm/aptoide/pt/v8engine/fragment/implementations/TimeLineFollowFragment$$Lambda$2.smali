.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;

.field private final arg$2:Ljava/util/LinkedList;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;Ljava/util/LinkedList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$2;->arg$2:Ljava/util/LinkedList;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;Ljava/util/LinkedList;)Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$2;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;Ljava/util/LinkedList;)V

    return-object v0
.end method


# virtual methods
.method public call(Lcm/aptoide/pt/model/v7/BaseV7Response;)Z
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$2;->arg$2:Ljava/util/LinkedList;

    check-cast p1, Lcm/aptoide/pt/model/v7/GetFollowers;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->lambda$load$1(Ljava/util/LinkedList;Lcm/aptoide/pt/model/v7/GetFollowers;)Z

    move-result v0

    return v0
.end method
