.class final synthetic Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment$$Lambda$3;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment$$Lambda$3;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment$$Lambda$3;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment$$Lambda$3;->arg$1:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->lambda$bindViews$3(Landroid/view/View;)V

    return-void
.end method
