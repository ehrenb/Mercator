.class final synthetic Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

.field private final arg$2:J

.field private final arg$3:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

    iput-wide p2, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$3;->arg$2:J

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$3;->arg$3:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;JLjava/lang/String;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

    iget-wide v2, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$3;->arg$2:J

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$3;->arg$3:Ljava/lang/String;

    check-cast p1, Lcm/aptoide/pt/model/v7/ListComments;

    invoke-virtual {v0, v2, v3, v1, p1}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->lambda$caseListStoreComments$1(JLjava/lang/String;Lcm/aptoide/pt/model/v7/ListComments;)V

    return-void
.end method
