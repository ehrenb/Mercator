.class public Lcm/aptoide/pt/model/v7/FullReview;
.super Lcm/aptoide/pt/model/v7/Review;
.source "FullReview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v7/FullReview$AppData;
    }
.end annotation


# instance fields
.field private data:Lcm/aptoide/pt/model/v7/FullReview$AppData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcm/aptoide/pt/model/v7/Review;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/FullReview;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/FullReview;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/model/v7/FullReview;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/model/v7/FullReview;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/model/v7/Review;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/FullReview;->getData()Lcm/aptoide/pt/model/v7/FullReview$AppData;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/FullReview;->getData()Lcm/aptoide/pt/model/v7/FullReview$AppData;

    move-result-object v0

    if-nez v3, :cond_5

    if-eqz v0, :cond_6

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public getData()Lcm/aptoide/pt/model/v7/FullReview$AppData;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/FullReview;->data:Lcm/aptoide/pt/model/v7/FullReview$AppData;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 14
    invoke-super {p0}, Lcm/aptoide/pt/model/v7/Review;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/FullReview;->getData()Lcm/aptoide/pt/model/v7/FullReview$AppData;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x3b

    if-nez v1, :cond_0

    const/16 v0, 0x2b

    :goto_0
    add-int/2addr v0, v2

    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setData(Lcm/aptoide/pt/model/v7/FullReview$AppData;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/FullReview;->data:Lcm/aptoide/pt/model/v7/FullReview$AppData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FullReview(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/FullReview;->getData()Lcm/aptoide/pt/model/v7/FullReview$AppData;

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
