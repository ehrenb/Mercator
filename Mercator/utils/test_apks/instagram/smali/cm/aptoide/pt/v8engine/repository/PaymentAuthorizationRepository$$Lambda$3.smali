.class final synthetic Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$3;->arg$1:I

    return-void
.end method

.method public static lambdaFactory$(I)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$3;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$3;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget v0, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$3;->arg$1:I

    check-cast p1, Lcm/aptoide/pt/v8engine/payment/Authorization;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->lambda$getPaymentAuthorization$2(ILcm/aptoide/pt/v8engine/payment/Authorization;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
