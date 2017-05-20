.class public Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;
.super Ljava/lang/Object;
.source "RatingTotalsLayout.java"


# instance fields
.field private ratingBar:Landroid/support/v7/widget/AppCompatRatingBar;

.field private ratingValue:Landroid/widget/TextView;

.field private usersVoted:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->users_voted:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;->usersVoted:Landroid/widget/TextView;

    .line 18
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->rating_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;->ratingValue:Landroid/widget/TextView;

    .line 19
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->rating_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRatingBar;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;->ratingBar:Landroid/support/v7/widget/AppCompatRatingBar;

    .line 20
    return-void
.end method


# virtual methods
.method public setup(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V
    .locals 7

    .prologue
    .line 23
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStats()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;->usersVoted:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;->getRating()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;->getTotal()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->withSuffix(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;->ratingValue:Landroid/widget/TextView;

    sget-object v2, Lcm/aptoide/pt/utils/AptoideUtils$LocaleU;->DEFAULT:Ljava/util/Locale;

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 26
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;->getRating()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;

    move-result-object v6

    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;->getAvg()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;->ratingBar:Landroid/support/v7/widget/AppCompatRatingBar;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;->getRating()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;->getAvg()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatRatingBar;->setRating(F)V

    .line 28
    return-void
.end method
