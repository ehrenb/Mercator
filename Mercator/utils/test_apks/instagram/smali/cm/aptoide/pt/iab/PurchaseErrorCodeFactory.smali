.class public Lcm/aptoide/pt/iab/PurchaseErrorCodeFactory;
.super Lcm/aptoide/pt/iab/ErrorCodeFactory;
.source "PurchaseErrorCodeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcm/aptoide/pt/iab/ErrorCodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Throwable;)I
    .locals 1

    .prologue
    .line 16
    instance-of v0, p1, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;

    if-eqz v0, :cond_0

    .line 17
    const/16 v0, 0x8

    .line 19
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcm/aptoide/pt/iab/ErrorCodeFactory;->create(Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method
