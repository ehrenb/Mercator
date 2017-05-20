.class public Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;
.super Lcm/aptoide/pt/model/v7/listapp/App;
.source "ListSearchApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/ListSearchApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAppsApp"
.end annotation


# instance fields
.field private hasVersions:Z

.field private obb:Lcm/aptoide/pt/model/v7/Obb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcm/aptoide/pt/model/v7/listapp/App;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 18
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/model/v7/listapp/App;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->isHasVersions()Z

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->isHasVersions()Z

    move-result v4

    if-eq v3, v4, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v0

    if-nez v3, :cond_6

    if-eqz v0, :cond_7

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public getObb()Lcm/aptoide/pt/model/v7/Obb;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->obb:Lcm/aptoide/pt/model/v7/Obb;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 18
    invoke-super {p0}, Lcm/aptoide/pt/model/v7/listapp/App;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    mul-int/lit8 v1, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->isHasVersions()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    :goto_0
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x3b

    if-nez v1, :cond_1

    const/16 v0, 0x2b

    :goto_1
    add-int/2addr v0, v2

    return v0

    :cond_0
    const/16 v0, 0x61

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public isHasVersions()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->hasVersions:Z

    return v0
.end method

.method public setHasVersions(Z)V
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->hasVersions:Z

    return-void
.end method

.method public setObb(Lcm/aptoide/pt/model/v7/Obb;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->obb:Lcm/aptoide/pt/model/v7/Obb;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListSearchApps.SearchAppsApp(hasVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->isHasVersions()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", obb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;->getObb()Lcm/aptoide/pt/model/v7/Obb;

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
