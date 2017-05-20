.class final synthetic Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$17;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

.field private final arg$2:Landroid/app/FragmentManager;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$17;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$17;->arg$2:Landroid/app/FragmentManager;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)Lrx/b/a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$17;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$17;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$17;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$17;->arg$2:Landroid/app/FragmentManager;

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->lambda$null$15(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)V

    return-void
.end method
