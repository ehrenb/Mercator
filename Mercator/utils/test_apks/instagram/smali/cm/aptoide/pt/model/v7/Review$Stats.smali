.class public Lcm/aptoide/pt/model/v7/Review$Stats;
.super Ljava/lang/Object;
.source "Review.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/Review;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field private comments:J

.field private likes:J

.field private points:J

.field private rating:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 41
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/Review$Stats;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/Review$Stats;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/Review$Stats;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/Review$Stats;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review$Stats;->getRating()F

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review$Stats;->getRating()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review$Stats;->getPoints()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review$Stats;->getPoints()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review$Stats;->getLikes()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review$Stats;->getLikes()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review$Stats;->getComments()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review$Stats;->getComments()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getComments()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcm/aptoide/pt/model/v7/Review$Stats;->comments:J

    return-wide v0
.end method

.method public getLikes()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcm/aptoide/pt/model/v7/Review$Stats;->likes:J

    return-wide v0
.end method

.method public getPoints()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcm/aptoide/pt/model/v7/Review$Stats;->points:J

    return-wide v0
.end method

.method public getRating()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcm/aptoide/pt/model/v7/Review$Stats;->rating:F

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 41
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review$Stats;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review$Stats;->getPoints()J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x3b

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review$Stats;->getLikes()J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x3b

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review$Stats;->getComments()J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x3b

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public setComments(J)V
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcm/aptoide/pt/model/v7/Review$Stats;->comments:J

    return-void
.end method

.method public setLikes(J)V
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcm/aptoide/pt/model/v7/Review$Stats;->likes:J

    return-void
.end method

.method public setPoints(J)V
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcm/aptoide/pt/model/v7/Review$Stats;->points:J

    return-void
.end method

.method public setRating(F)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcm/aptoide/pt/model/v7/Review$Stats;->rating:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Review.Stats(rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review$Stats;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", points="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review$Stats;->getPoints()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", likes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review$Stats;->getLikes()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", comments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review$Stats;->getComments()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
