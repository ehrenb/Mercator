.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;

.field private final arg$2:[I

.field private final arg$3:Ljava/util/LinkedList;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;[ILjava/util/LinkedList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$1;->arg$2:[I

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$1;->arg$3:Ljava/util/LinkedList;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;[ILjava/util/LinkedList;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;[ILjava/util/LinkedList;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$1;->arg$2:[I

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$1;->arg$3:Ljava/util/LinkedList;

    check-cast p1, Lcm/aptoide/pt/model/v7/GetFollowers;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->lambda$load$0([ILjava/util/LinkedList;Lcm/aptoide/pt/model/v7/GetFollowers;)V

    return-void
.end method
