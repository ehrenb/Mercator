.class final synthetic Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final instance:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$11;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$11;

    invoke-direct {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$11;-><init>()V

    sput-object v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$11;->instance:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$11;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Landroid/view/View$OnClickListener;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$11;->instance:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$11;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->lambda$setReviewRating$14(Landroid/view/View;)V

    return-void
.end method
