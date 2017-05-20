.class final synthetic Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$13;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;

.field private final arg$2:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

.field private final arg$3:J


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$13;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;

    iput-object p2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$13;->arg$2:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

    iput-wide p3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$13;->arg$3:J

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;J)Lrx/b/b;
    .locals 2

    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$13;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;J)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$13;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$13;->arg$2:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

    iget-wide v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$13;->arg$3:J

    check-cast p1, Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->lambda$null$1(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;JLcom/trello/rxlifecycle/a/b;)V

    return-void
.end method
