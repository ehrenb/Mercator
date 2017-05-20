.class public Lcm/aptoide/pt/iab/ErrorCodeFactory;
.super Ljava/lang/Object;
.source "ErrorCodeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 20
    const/4 v0, 0x6

    .line 22
    instance-of v1, p1, Lcm/aptoide/pt/v8engine/payment/exception/PaymentCancellationException;

    if-eqz v1, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 26
    :cond_0
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 27
    const/4 v0, 0x2

    .line 30
    :cond_1
    instance-of v1, p1, Ljavax/security/auth/login/LoginException;

    if-eqz v1, :cond_2

    .line 31
    const/4 v0, 0x3

    .line 34
    :cond_2
    instance-of v1, p1, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;

    if-eqz v1, :cond_3

    .line 35
    const/4 v0, 0x4

    .line 38
    :cond_3
    instance-of v1, p1, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryIllegalArgumentException;

    if-eqz v1, :cond_4

    .line 39
    const/4 v0, 0x5

    .line 42
    :cond_4
    return v0
.end method
