.class public Lcm/aptoide/pt/model/v7/store/Store$Stats;
.super Ljava/lang/Object;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/store/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field private apps:I

.field private downloads:I

.field private subscribers:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/store/Store$Stats;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/store/Store$Stats;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/store/Store$Stats;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getApps()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getApps()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getSubscribers()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getSubscribers()I

    move-result v3

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getDownloads()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getDownloads()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getApps()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcm/aptoide/pt/model/v7/store/Store$Stats;->apps:I

    return v0
.end method

.method public getDownloads()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcm/aptoide/pt/model/v7/store/Store$Stats;->downloads:I

    return v0
.end method

.method public getSubscribers()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcm/aptoide/pt/model/v7/store/Store$Stats;->subscribers:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getApps()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getSubscribers()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getDownloads()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setApps(I)Lcm/aptoide/pt/model/v7/store/Store$Stats;
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcm/aptoide/pt/model/v7/store/Store$Stats;->apps:I

    return-object p0
.end method

.method public setDownloads(I)Lcm/aptoide/pt/model/v7/store/Store$Stats;
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcm/aptoide/pt/model/v7/store/Store$Stats;->downloads:I

    return-object p0
.end method

.method public setSubscribers(I)Lcm/aptoide/pt/model/v7/store/Store$Stats;
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcm/aptoide/pt/model/v7/store/Store$Stats;->subscribers:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Store.Stats(apps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getApps()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscribers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getSubscribers()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getDownloads()I

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
