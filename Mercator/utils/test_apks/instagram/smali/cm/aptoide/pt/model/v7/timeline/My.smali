.class public Lcm/aptoide/pt/model/v7/timeline/My;
.super Ljava/lang/Object;
.source "My.java"


# instance fields
.field private liked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 9
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/My;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/timeline/My;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/My;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/timeline/My;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/My;->isLiked()Z

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/timeline/My;->isLiked()Z

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/My;->isLiked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    return v0

    :cond_0
    const/16 v0, 0x61

    goto :goto_0
.end method

.method public isLiked()Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcm/aptoide/pt/model/v7/timeline/My;->liked:Z

    return v0
.end method

.method public setLiked(Z)V
    .locals 0

    .prologue
    .line 9
    iput-boolean p1, p0, Lcm/aptoide/pt/model/v7/timeline/My;->liked:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "My(liked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/My;->isLiked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
