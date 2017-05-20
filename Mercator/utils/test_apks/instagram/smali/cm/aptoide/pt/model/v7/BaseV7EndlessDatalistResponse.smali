.class public Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;
.super Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;
.source "BaseV7EndlessDatalistResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;"
    }
.end annotation


# instance fields
.field private datalist:Lcm/aptoide/pt/model/v7/Datalist;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm/aptoide/pt/model/v7/Datalist",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;

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
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

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

.method public getDatalist()Lcm/aptoide/pt/model/v7/Datalist;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcm/aptoide/pt/model/v7/Datalist",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->datalist:Lcm/aptoide/pt/model/v7/Datalist;

    return-object v0
.end method

.method public getNextSize()I
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->datalist:Lcm/aptoide/pt/model/v7/Datalist;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getNext()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->datalist:Lcm/aptoide/pt/model/v7/Datalist;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getTotal()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->datalist:Lcm/aptoide/pt/model/v7/Datalist;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->datalist:Lcm/aptoide/pt/model/v7/Datalist;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 14
    invoke-super {p0}, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

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

.method public setDatalist(Lcm/aptoide/pt/model/v7/Datalist;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/Datalist",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->datalist:Lcm/aptoide/pt/model/v7/Datalist;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseV7EndlessDatalistResponse(datalist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

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
