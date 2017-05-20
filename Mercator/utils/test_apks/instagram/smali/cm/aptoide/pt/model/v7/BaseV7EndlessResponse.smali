.class public abstract Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;
.super Lcm/aptoide/pt/model/v7/BaseV7Response;
.source "BaseV7EndlessResponse.java"


# static fields
.field protected static final NEXT_STEP:I = 0xa


# instance fields
.field private final stableTotal:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;-><init>(Z)V

    .line 23
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcm/aptoide/pt/model/v7/BaseV7Response;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;->stableTotal:Z

    .line 27
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/model/v7/BaseV7Response;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;->stableTotal:Z

    iget-boolean v0, v0, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;->stableTotal:Z

    if-eq v3, v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public abstract getNextSize()I
.end method

.method public abstract getTotal()I
.end method

.method public abstract hasData()Z
.end method

.method public hasStableTotal()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;->stableTotal:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 14
    invoke-super {p0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    mul-int/lit8 v1, v0, 0x3b

    iget-boolean v0, p0, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;->stableTotal:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x61

    goto :goto_0
.end method
