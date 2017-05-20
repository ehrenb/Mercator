.class final synthetic Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$$Lambda$2;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$$Lambda$2;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$$Lambda$2;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$$Lambda$2;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->lambda$setupLogic$1(Ljava/lang/Void;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
