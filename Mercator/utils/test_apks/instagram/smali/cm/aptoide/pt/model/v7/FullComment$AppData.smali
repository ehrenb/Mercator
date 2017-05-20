.class public Lcm/aptoide/pt/model/v7/FullComment$AppData;
.super Ljava/lang/Object;
.source "FullComment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/FullComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppData"
.end annotation


# instance fields
.field private app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 18
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/FullComment$AppData;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 18
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/FullComment$AppData;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/FullComment$AppData;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/FullComment$AppData;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/FullComment$AppData;->getApp()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/FullComment$AppData;->getApp()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v3

    if-nez v2, :cond_4

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getApp()Lcm/aptoide/pt/model/v7/GetAppMeta$App;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/FullComment$AppData;->app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/FullComment$AppData;->getApp()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setApp(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/FullComment$AppData;->app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FullComment.AppData(app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/FullComment$AppData;->getApp()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

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
