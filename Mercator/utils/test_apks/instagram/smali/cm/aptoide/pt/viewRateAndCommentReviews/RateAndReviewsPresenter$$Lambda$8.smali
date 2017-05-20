.class final synthetic Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$8;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$8;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$8;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$8;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;

    check-cast p1, Lcm/aptoide/pt/model/v7/ListReviews;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->lambda$showReviews$8(Lcm/aptoide/pt/model/v7/ListReviews;)V

    return-void
.end method
