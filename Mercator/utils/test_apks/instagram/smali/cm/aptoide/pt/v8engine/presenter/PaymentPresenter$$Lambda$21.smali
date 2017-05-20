.class final synthetic Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$21;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/payment/Payment;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/payment/Payment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$21;->arg$1:Lcm/aptoide/pt/v8engine/payment/Payment;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$21;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$21;-><init>(Lcm/aptoide/pt/v8engine/payment/Payment;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$21;->arg$1:Lcm/aptoide/pt/v8engine/payment/Payment;

    check-cast p1, Lcm/aptoide/pt/v8engine/payment/Payment;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->lambda$showPayments$22(Lcm/aptoide/pt/v8engine/payment/Payment;Lcm/aptoide/pt/v8engine/payment/Payment;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
