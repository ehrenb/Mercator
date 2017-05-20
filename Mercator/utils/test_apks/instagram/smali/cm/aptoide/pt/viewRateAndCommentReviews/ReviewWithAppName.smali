.class final Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;
.super Ljava/lang/Object;
.source "ReviewWithAppName.java"


# instance fields
.field private final appName:Ljava/lang/String;

.field private final review:Lcm/aptoide/pt/model/v7/Review;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/model/v7/Review;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;->appName:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;->review:Lcm/aptoide/pt/model/v7/Review;

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;

    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;->getAppName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_4

    if-eqz v3, :cond_5

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_5
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;->getReview()Lcm/aptoide/pt/model/v7/Review;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;->getReview()Lcm/aptoide/pt/model/v7/Review;

    move-result-object v3

    if-nez v2, :cond_6

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getReview()Lcm/aptoide/pt/model/v7/Review;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;->review:Lcm/aptoide/pt/model/v7/Review;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/16 v1, 0x2b

    .line 6
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;->getAppName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;->getReview()Lcm/aptoide/pt/model/v7/Review;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReviewWithAppName(appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", review="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;->getReview()Lcm/aptoide/pt/model/v7/Review;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
