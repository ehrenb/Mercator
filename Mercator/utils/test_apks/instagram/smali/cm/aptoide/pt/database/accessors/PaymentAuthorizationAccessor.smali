.class public Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;
.super Lcm/aptoide/pt/database/accessors/SimpleAccessor;
.source "PaymentAuthorizationAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/database/accessors/SimpleAccessor",
        "<",
        "Lcm/aptoide/pt/database/realm/PaymentAuthorization;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/database/accessors/Database;)V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/database/accessors/SimpleAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;Ljava/lang/Class;)V

    .line 20
    return-void
.end method

.method static synthetic lambda$getPaymentAuthorizations$0(Ljava/lang/String;Lio/realm/u;)Lio/realm/af;
    .locals 2

    .prologue
    .line 24
    const-class v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {p1, v0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    const-string v1, "payerId"

    .line 25
    invoke-virtual {v0, v1, p0}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/af;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPaymentAuthorizations(Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/PaymentAuthorization;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/Database;->getRealm()Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor$$Lambda$1;->lambdaFactory$(Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;)Lrx/b/e;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getPaymentAuthorizations$1(Lio/realm/af;)Lrx/d;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-string v1, "paymentId"

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/database/accessors/Database;->findAsSortedList(Lio/realm/af;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcm/aptoide/pt/database/realm/PaymentAuthorization;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->insert(Lio/realm/ad;)V

    .line 35
    return-void
.end method

.method public updateAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/PaymentAuthorization;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/database/accessors/Database;->updateAll(Ljava/lang/Class;Ljava/util/List;)V

    .line 31
    return-void
.end method
