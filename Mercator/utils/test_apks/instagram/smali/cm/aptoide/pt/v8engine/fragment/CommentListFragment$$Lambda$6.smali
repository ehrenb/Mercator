.class final synthetic Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

.field private final arg$2:J

.field private final arg$3:J

.field private final arg$4:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

    iput-wide p2, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$6;->arg$2:J

    iput-wide p4, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$6;->arg$3:J

    iput-object p6, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$6;->arg$4:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;JJLjava/lang/String;)Lrx/b/e;
    .locals 7

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$6;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$6;-><init>(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;JJLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

    iget-wide v2, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$6;->arg$2:J

    iget-wide v4, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$6;->arg$3:J

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$6;->arg$4:Ljava/lang/String;

    move-object v7, p1

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual/range {v1 .. v7}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->lambda$createNewCommentFragment$9(JJLjava/lang/String;Ljava/lang/Boolean;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
