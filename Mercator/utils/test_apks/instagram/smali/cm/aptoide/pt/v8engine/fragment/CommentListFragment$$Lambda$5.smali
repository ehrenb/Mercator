.class final synthetic Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:J


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$5;->arg$2:Ljava/lang/String;

    iput-wide p3, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$5;->arg$3:J

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;Ljava/lang/String;J)Lrx/b/e;
    .locals 2

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$5;-><init>(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$5;->arg$2:Ljava/lang/String;

    iget-wide v2, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$5;->arg$3:J

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->lambda$createNewCommentFragment$5(Ljava/lang/String;JLjava/lang/Boolean;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
