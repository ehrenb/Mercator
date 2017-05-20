.class public Lcm/aptoide/pt/model/v7/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v7/Event$Name;,
        Lcm/aptoide/pt/model/v7/Event$Type;
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private data:Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

.field private name:Lcm/aptoide/pt/model/v7/Event$Name;

.field private type:Lcm/aptoide/pt/model/v7/Event$Type;


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
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/Event;

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
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/Event;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/Event;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/Event;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getType()Lcm/aptoide/pt/model/v7/Event$Type;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Event;->getType()Lcm/aptoide/pt/model/v7/Event$Type;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Event;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_b

    if-eqz v3, :cond_c

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_c
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Event;->getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

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

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Event;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Event;->data:Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    return-object v0
.end method

.method public getName()Lcm/aptoide/pt/model/v7/Event$Name;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Event;->name:Lcm/aptoide/pt/model/v7/Event$Name;

    return-object v0
.end method

.method public getType()Lcm/aptoide/pt/model/v7/Event$Type;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Event;->type:Lcm/aptoide/pt/model/v7/Event$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 14
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getType()Lcm/aptoide/pt/model/v7/Event$Type;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getAction()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public setAction(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/Event;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Event;->action:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;)Lcm/aptoide/pt/model/v7/Event;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Event;->data:Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    return-object p0
.end method

.method public setName(Lcm/aptoide/pt/model/v7/Event$Name;)Lcm/aptoide/pt/model/v7/Event;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Event;->name:Lcm/aptoide/pt/model/v7/Event$Name;

    return-object p0
.end method

.method public setType(Lcm/aptoide/pt/model/v7/Event$Type;)Lcm/aptoide/pt/model/v7/Event;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Event;->type:Lcm/aptoide/pt/model/v7/Event$Type;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getType()Lcm/aptoide/pt/model/v7/Event$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event;->getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

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
