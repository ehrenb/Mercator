.class public Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;
.super Ljava/lang/Object;
.source "GetAppMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vote"
.end annotation


# instance fields
.field private count:I

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 182
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 182
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->getCount()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->count:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->count:I

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAppMeta.Stats.Rating.Vote(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
