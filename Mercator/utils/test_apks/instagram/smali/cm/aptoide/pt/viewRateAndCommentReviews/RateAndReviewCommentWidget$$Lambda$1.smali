.class final synthetic Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;

.field private final arg$2:Landroid/support/v4/app/u;

.field private final arg$3:Lcm/aptoide/pt/model/v7/Review;

.field private final arg$4:Ljava/lang/String;

.field private final arg$5:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

.field private final arg$6:J


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Landroid/support/v4/app/u;Lcm/aptoide/pt/model/v7/Review;Ljava/lang/String;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;

    iput-object p2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;->arg$2:Landroid/support/v4/app/u;

    iput-object p3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;->arg$3:Lcm/aptoide/pt/model/v7/Review;

    iput-object p4, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;->arg$4:Ljava/lang/String;

    iput-object p5, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;->arg$5:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

    iput-wide p6, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;->arg$6:J

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Landroid/support/v4/app/u;Lcm/aptoide/pt/model/v7/Review;Ljava/lang/String;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;J)Lrx/b/e;
    .locals 9

    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Landroid/support/v4/app/u;Lcm/aptoide/pt/model/v7/Review;Ljava/lang/String;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;J)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;

    iget-object v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;->arg$2:Landroid/support/v4/app/u;

    iget-object v3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;->arg$3:Lcm/aptoide/pt/model/v7/Review;

    iget-object v4, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;->arg$4:Ljava/lang/String;

    iget-object v5, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;->arg$5:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

    iget-wide v6, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;->arg$6:J

    move-object v8, p1

    check-cast v8, Ljava/lang/Void;

    invoke-virtual/range {v1 .. v8}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->lambda$bindView$4(Landroid/support/v4/app/u;Lcm/aptoide/pt/model/v7/Review;Ljava/lang/String;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;JLjava/lang/Void;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
