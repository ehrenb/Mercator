.class public Lcm/aptoide/pt/model/v7/GetFollowers;
.super Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;
.source "GetFollowers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse",
        "<",
        "Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 10
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/GetFollowers;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/GetFollowers;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/GetFollowers;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/GetFollowers;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string v0, "GetFollowers()"

    return-object v0
.end method
