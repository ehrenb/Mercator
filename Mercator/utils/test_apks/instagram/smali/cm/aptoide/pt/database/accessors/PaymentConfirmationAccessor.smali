.class public Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;
.super Lcm/aptoide/pt/database/accessors/SimpleAccessor;
.source "PaymentConfirmationAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/database/accessors/SimpleAccessor",
        "<",
        "Lcm/aptoide/pt/database/realm/PaymentConfirmation;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcm/aptoide/pt/database/accessors/Database;)V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/database/accessors/SimpleAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;Ljava/lang/Class;)V

    .line 19
    return-void
.end method

.method static synthetic lambda$getPaymentConfirmations$0(ILjava/lang/String;Lio/realm/u;)Lio/realm/af;
    .locals 3

    .prologue
    .line 24
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {p2, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    const-string v1, "productId"

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/af;

    move-result-object v0

    const-string v1, "payerId"

    .line 26
    invoke-virtual {v0, v1, p1}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/af;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPaymentConfirmations(ILjava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/PaymentConfirmation;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/Database;->getRealm()Lrx/d;

    move-result-object v0

    invoke-static {p1, p2}, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor$$Lambda$1;->lambdaFactory$(ILjava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;)Lrx/b/e;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getPaymentConfirmations$1(Lio/realm/af;)Lrx/d;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->findAsList(Lio/realm/af;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcm/aptoide/pt/database/realm/PaymentConfirmation;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->insert(Lio/realm/ad;)V

    .line 32
    return-void
.end method
