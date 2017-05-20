.class public Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;
.source "RateAndReviewCommentDisplayable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo",
        "<",
        "Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;",
        ">;"
    }
.end annotation


# instance fields
.field private commentAdder:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

.field private numberComments:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>(Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>(Ljava/lang/Object;)V

    .line 27
    iput-object p2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;->commentAdder:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

    .line 28
    iput p3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;->numberComments:I

    .line 29
    return-void
.end method


# virtual methods
.method public getCommentAdder()Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;->commentAdder:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

    return-object v0
.end method

.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getNumberComments()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;->numberComments:I

    return v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_rate_and_review:I

    return v0
.end method
