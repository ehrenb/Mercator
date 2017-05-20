.class final synthetic Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;

.field private final arg$2:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;

    iput-object p2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget$$Lambda$1;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;->lambda$bindView$1(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;Ljava/lang/Void;)V

    return-void
.end method
