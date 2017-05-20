.class public Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;
.super Ljava/lang/Object;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/listapp/App$Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rating"
.end annotation


# instance fields
.field private avg:F

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 43
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->getAvg()F

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->getAvg()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->getTotal()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->getTotal()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAvg()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->avg:F

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->total:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->getAvg()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->getTotal()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setAvg(F)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->avg:F

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App.Stats.Rating(avg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->getAvg()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;->getTotal()I

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
