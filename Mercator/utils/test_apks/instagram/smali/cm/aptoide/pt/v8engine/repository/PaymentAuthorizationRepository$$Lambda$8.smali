.class final synthetic Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$8;->arg$1:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$8;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$8;-><init>(Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$8;->arg$1:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;

    check-cast p1, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->lambda$null$3(Lcm/aptoide/pt/database/realm/PaymentAuthorization;)Lcm/aptoide/pt/v8engine/payment/Authorization;

    move-result-object v0

    return-object v0
.end method
