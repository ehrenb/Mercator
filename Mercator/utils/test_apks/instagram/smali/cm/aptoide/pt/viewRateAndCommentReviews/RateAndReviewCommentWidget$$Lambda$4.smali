.class final synthetic Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;

.field private final arg$2:Lcm/aptoide/pt/model/v7/Review;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Lcm/aptoide/pt/model/v7/Review;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;

    iput-object p2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$4;->arg$2:Lcm/aptoide/pt/model/v7/Review;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Lcm/aptoide/pt/model/v7/Review;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$4;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Lcm/aptoide/pt/model/v7/Review;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$4;->arg$2:Lcm/aptoide/pt/model/v7/Review;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->lambda$bindView$7(Lcm/aptoide/pt/model/v7/Review;Ljava/lang/Void;)V

    return-void
.end method
