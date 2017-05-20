.class public Lcm/aptoide/pt/model/v7/Datalist;
.super Ljava/lang/Object;
.source "Datalist.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private count:I

.field private hidden:I

.field private limit:Ljava/lang/Integer;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private loaded:Z

.field private next:I

.field private offset:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/Datalist;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 14
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/Datalist;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/Datalist;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/Datalist;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getTotal()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getTotal()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getCount()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getOffset()I

    move-result v3

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    if-nez v2, :cond_8

    if-eqz v3, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_9
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getNext()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getNext()I

    move-result v3

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getHidden()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getHidden()I

    move-result v3

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->isLoaded()Z

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->isLoaded()Z

    move-result v3

    if-eq v2, v3, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v3

    if-nez v2, :cond_d

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcm/aptoide/pt/model/v7/Datalist;->count:I

    return v0
.end method

.method public getHidden()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcm/aptoide/pt/model/v7/Datalist;->hidden:I

    return v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Datalist;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Datalist;->list:Ljava/util/List;

    return-object v0
.end method

.method public getNext()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcm/aptoide/pt/model/v7/Datalist;->next:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcm/aptoide/pt/model/v7/Datalist;->offset:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcm/aptoide/pt/model/v7/Datalist;->total:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 14
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getTotal()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getOffset()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getNext()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getHidden()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4f

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x61

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcm/aptoide/pt/model/v7/Datalist;->loaded:Z

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcm/aptoide/pt/model/v7/Datalist;->count:I

    return-void
.end method

.method public setHidden(I)V
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcm/aptoide/pt/model/v7/Datalist;->hidden:I

    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Datalist;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Datalist;->list:Ljava/util/List;

    return-void
.end method

.method public setLoaded(Z)V
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcm/aptoide/pt/model/v7/Datalist;->loaded:Z

    return-void
.end method

.method public setNext(I)V
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcm/aptoide/pt/model/v7/Datalist;->next:I

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcm/aptoide/pt/model/v7/Datalist;->offset:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcm/aptoide/pt/model/v7/Datalist;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Datalist(total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getNext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getHidden()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->isLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

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
