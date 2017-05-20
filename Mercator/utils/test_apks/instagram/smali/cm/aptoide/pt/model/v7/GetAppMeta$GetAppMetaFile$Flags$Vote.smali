.class public Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;
.super Ljava/lang/Object;
.source "GetAppMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vote"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;
    }
.end annotation


# instance fields
.field private count:I

.field private type:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 120
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->getType()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->getType()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->getCount()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->count:I

    return v0
.end method

.method public getType()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->type:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->getType()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->count:I

    return-void
.end method

.method public setType(Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->type:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAppMeta.GetAppMetaFile.Flags.Vote(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->getType()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->getCount()I

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
