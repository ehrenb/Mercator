.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;

.field private final arg$2:[I


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$4;->arg$2:[I

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;[I)Lrx/b/a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;[I)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$4;->arg$2:[I

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->lambda$load$3([I)V

    return-void
.end method
