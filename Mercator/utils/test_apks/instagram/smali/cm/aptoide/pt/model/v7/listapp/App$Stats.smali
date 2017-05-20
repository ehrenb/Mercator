.class public Lcm/aptoide/pt/model/v7/listapp/App$Stats;
.super Ljava/lang/Object;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/listapp/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;
    }
.end annotation


# instance fields
.field private apps:I

.field private downloads:I

.field private pdownloads:I

.field private rating:Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;

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
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/listapp/App$Stats;

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
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/listapp/App$Stats;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/listapp/App$Stats;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getApps()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getApps()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getSubscribers()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getSubscribers()I

    move-result v3

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getDownloads()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getDownloads()I

    move-result v3

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getPdownloads()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getPdownloads()I

    move-result v3

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getRating()Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getRating()Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;

    move-result-object v3

    if-nez v2, :cond_8

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getApps()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->apps:I

    return v0
.end method

.method public getDownloads()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->downloads:I

    return v0
.end method

.method public getPdownloads()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->pdownloads:I

    return v0
.end method

.method public getRating()Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->rating:Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;

    return-object v0
.end method

.method public getSubscribers()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->subscribers:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getApps()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getSubscribers()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getDownloads()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getPdownloads()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getRating()Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;

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

.method public setApps(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->apps:I

    return-void
.end method

.method public setDownloads(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->downloads:I

    return-void
.end method

.method public setPdownloads(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->pdownloads:I

    return-void
.end method

.method public setRating(Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->rating:Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;

    return-void
.end method

.method public setSubscribers(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->subscribers:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App.Stats(apps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getApps()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscribers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getSubscribers()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getDownloads()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pdownloads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getPdownloads()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getRating()Lcm/aptoide/pt/model/v7/listapp/App$Stats$Rating;

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
