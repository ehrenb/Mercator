.class final synthetic Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/model/v7/Review;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/model/v7/Review;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$4;->arg$1:Lcm/aptoide/pt/model/v7/Review;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/model/v7/Review;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$4;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$4;-><init>(Lcm/aptoide/pt/model/v7/Review;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$4;->arg$1:Lcm/aptoide/pt/model/v7/Review;

    check-cast p1, Lcm/aptoide/pt/model/v7/ListComments;

    invoke-static {v0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->lambda$null$0(Lcm/aptoide/pt/model/v7/Review;Lcm/aptoide/pt/model/v7/ListComments;)Lcm/aptoide/pt/model/v7/Review;

    move-result-object v0

    return-object v0
.end method
