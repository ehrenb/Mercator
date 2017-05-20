.class public Lcm/aptoide/pt/model/v7/BaseV7Response;
.super Ljava/lang/Object;
.source "BaseV7Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v7/BaseV7Response$Error;,
        Lcm/aptoide/pt/model/v7/BaseV7Response$Info;
    }
.end annotation


# instance fields
.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response$Error;",
            ">;"
        }
    .end annotation
.end field

.field private info:Lcm/aptoide/pt/model/v7/BaseV7Response$Info;


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
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/BaseV7Response;

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
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/BaseV7Response;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/BaseV7Response;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getInfo()Lcm/aptoide/pt/model/v7/BaseV7Response$Info;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getInfo()Lcm/aptoide/pt/model/v7/BaseV7Response$Info;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getErrors()Ljava/util/List;

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

.method public getError()Lcm/aptoide/pt/model/v7/BaseV7Response$Error;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/BaseV7Response;->errors:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v7/BaseV7Response;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/BaseV7Response;->errors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response$Error;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/BaseV7Response;->errors:Ljava/util/List;

    return-object v0
.end method

.method public getInfo()Lcm/aptoide/pt/model/v7/BaseV7Response$Info;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/BaseV7Response;->info:Lcm/aptoide/pt/model/v7/BaseV7Response$Info;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/16 v1, 0x2b

    .line 14
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getInfo()Lcm/aptoide/pt/model/v7/BaseV7Response$Info;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getErrors()Ljava/util/List;

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

.method public isOk()Z
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/BaseV7Response;->info:Lcm/aptoide/pt/model/v7/BaseV7Response$Info;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v7/BaseV7Response;->info:Lcm/aptoide/pt/model/v7/BaseV7Response$Info;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->getStatus()Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;->OK:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setErrors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response$Error;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/BaseV7Response;->errors:Ljava/util/List;

    return-void
.end method

.method public setInfo(Lcm/aptoide/pt/model/v7/BaseV7Response$Info;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/BaseV7Response;->info:Lcm/aptoide/pt/model/v7/BaseV7Response$Info;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseV7Response(info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getInfo()Lcm/aptoide/pt/model/v7/BaseV7Response$Info;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getErrors()Ljava/util/List;

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
