.class public Lcm/aptoide/pt/model/v7/GetStoreWidgets;
.super Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;
.source "GetStoreWidgets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse",
        "<",
        "Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 16
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/GetStoreWidgets;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/GetStoreWidgets;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/model/v7/GetStoreWidgets;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "GetStoreWidgets()"

    return-object v0
.end method
