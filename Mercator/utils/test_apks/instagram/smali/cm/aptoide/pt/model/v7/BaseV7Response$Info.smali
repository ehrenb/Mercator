.class public Lcm/aptoide/pt/model/v7/BaseV7Response$Info;
.super Ljava/lang/Object;
.source "BaseV7Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/BaseV7Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Time;,
        Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;
    }
.end annotation


# instance fields
.field private status:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

.field private time:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Time;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->status:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    .line 41
    iput-object p2, p0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->time:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Time;

    .line 42
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->getStatus()Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->getStatus()Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->getTime()Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Time;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->getTime()Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Time;

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

.method public getStatus()Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->status:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    return-object v0
.end method

.method public getTime()Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Time;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->time:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Time;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/16 v1, 0x2b

    .line 31
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->getStatus()Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->getTime()Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Time;

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

.method public setStatus(Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->status:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    return-void
.end method

.method public setTime(Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Time;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->time:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Time;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseV7Response.Info(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->getStatus()Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->getTime()Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Time;

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
