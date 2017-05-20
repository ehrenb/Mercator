.class final synthetic Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;

.field private final arg$2:Ljava/util/List;

.field private final arg$3:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$2;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;

    iput-object p2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$2;->arg$2:Ljava/util/List;

    iput-object p3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$2;->arg$3:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;Ljava/util/List;Ljava/util/List;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$2;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$2;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$2;->arg$2:Ljava/util/List;

    iget-object v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$2;->arg$3:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->lambda$call$2(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
