.class final synthetic Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

    check-cast p1, Lcm/aptoide/pt/model/v7/ListComments;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->lambda$caseListSocialTimelineComments$0(Lcm/aptoide/pt/model/v7/ListComments;)V

    return-void
.end method
