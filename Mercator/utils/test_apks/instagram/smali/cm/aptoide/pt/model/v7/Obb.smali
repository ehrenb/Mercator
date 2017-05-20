.class public Lcm/aptoide/pt/model/v7/Obb;
.super Ljava/lang/Object;
.source "Obb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v7/Obb$ObbItem;
    }
.end annotation


# instance fields
.field private main:Lcm/aptoide/pt/model/v7/Obb$ObbItem;

.field private patch:Lcm/aptoide/pt/model/v7/Obb$ObbItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/Obb;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/Obb;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/Obb;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/Obb;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Obb;->getPatch()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Obb;->getPatch()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v3

    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Obb;->getMain()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Obb;->getMain()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v3

    if-nez v2, :cond_7

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getMain()Lcm/aptoide/pt/model/v7/Obb$ObbItem;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Obb;->main:Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    return-object v0
.end method

.method public getPatch()Lcm/aptoide/pt/model/v7/Obb$ObbItem;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Obb;->patch:Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/16 v1, 0x2b

    .line 13
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Obb;->getPatch()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Obb;->getMain()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

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

.method public setMain(Lcm/aptoide/pt/model/v7/Obb$ObbItem;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Obb;->main:Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    return-void
.end method

.method public setPatch(Lcm/aptoide/pt/model/v7/Obb$ObbItem;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Obb;->patch:Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Obb(patch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Obb;->getPatch()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", main="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Obb;->getMain()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

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
