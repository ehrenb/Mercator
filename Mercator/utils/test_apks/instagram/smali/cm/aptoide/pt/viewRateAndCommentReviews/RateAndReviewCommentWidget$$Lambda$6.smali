.class final synthetic Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;

.field private final arg$2:Lcm/aptoide/pt/model/v7/Review;

.field private final arg$3:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Lcm/aptoide/pt/model/v7/Review;Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$6;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;

    iput-object p2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$6;->arg$2:Lcm/aptoide/pt/model/v7/Review;

    iput-object p3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$6;->arg$3:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Lcm/aptoide/pt/model/v7/Review;Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$6;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$6;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Lcm/aptoide/pt/model/v7/Review;Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$6;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$6;->arg$2:Lcm/aptoide/pt/model/v7/Review;

    iget-object v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$6;->arg$3:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->lambda$bindView$9(Lcm/aptoide/pt/model/v7/Review;Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;Ljava/lang/Void;)V

    return-void
.end method
