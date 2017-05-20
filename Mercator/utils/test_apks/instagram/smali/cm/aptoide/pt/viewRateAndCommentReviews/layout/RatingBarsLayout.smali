.class public Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;
.super Ljava/lang/Object;
.source "RatingBarsLayout.java"


# instance fields
.field private progressAndTextLayouts:[Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;->progressAndTextLayouts:[Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;

    .line 13
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;->progressAndTextLayouts:[Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;

    const/4 v1, 0x0

    new-instance v2, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;

    sget v3, Lcm/aptoide/pt/v8engine/R$id;->one_rate_star_progress:I

    sget v4, Lcm/aptoide/pt/v8engine/R$id;->one_rate_star_count:I

    invoke-direct {v2, v3, v4, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;-><init>(IILandroid/view/View;)V

    aput-object v2, v0, v1

    .line 15
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;->progressAndTextLayouts:[Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;

    const/4 v1, 0x1

    new-instance v2, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;

    sget v3, Lcm/aptoide/pt/v8engine/R$id;->two_rate_star_progress:I

    sget v4, Lcm/aptoide/pt/v8engine/R$id;->two_rate_star_count:I

    invoke-direct {v2, v3, v4, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;-><init>(IILandroid/view/View;)V

    aput-object v2, v0, v1

    .line 17
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;->progressAndTextLayouts:[Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;

    const/4 v1, 0x2

    new-instance v2, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;

    sget v3, Lcm/aptoide/pt/v8engine/R$id;->three_rate_star_progress:I

    sget v4, Lcm/aptoide/pt/v8engine/R$id;->three_rate_star_count:I

    invoke-direct {v2, v3, v4, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;-><init>(IILandroid/view/View;)V

    aput-object v2, v0, v1

    .line 19
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;->progressAndTextLayouts:[Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;

    const/4 v1, 0x3

    new-instance v2, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;

    sget v3, Lcm/aptoide/pt/v8engine/R$id;->four_rate_star_progress:I

    sget v4, Lcm/aptoide/pt/v8engine/R$id;->four_rate_star_count:I

    invoke-direct {v2, v3, v4, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;-><init>(IILandroid/view/View;)V

    aput-object v2, v0, v1

    .line 21
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;->progressAndTextLayouts:[Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;

    const/4 v1, 0x4

    new-instance v2, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;

    sget v3, Lcm/aptoide/pt/v8engine/R$id;->five_rate_star_progress:I

    sget v4, Lcm/aptoide/pt/v8engine/R$id;->five_rate_star_count:I

    invoke-direct {v2, v3, v4, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;-><init>(IILandroid/view/View;)V

    aput-object v2, v0, v1

    .line 23
    return-void
.end method


# virtual methods
.method public setup(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V
    .locals 5

    .prologue
    .line 26
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStats()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;->getRating()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;->getTotal()I

    move-result v1

    .line 28
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;->getVotes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;

    .line 29
    iget-object v3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;->progressAndTextLayouts:[Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->getValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->getCount()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;->setup(II)V

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
