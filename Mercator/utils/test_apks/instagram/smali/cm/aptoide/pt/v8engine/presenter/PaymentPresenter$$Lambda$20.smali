.class final synthetic Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$20;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;

.field private final arg$2:Lcm/aptoide/pt/v8engine/payment/Payment;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;Lcm/aptoide/pt/v8engine/payment/Payment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$20;->arg$1:Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$20;->arg$2:Lcm/aptoide/pt/v8engine/payment/Payment;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/b/a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$20;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$20;-><init>(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;Lcm/aptoide/pt/v8engine/payment/Payment;)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$20;->arg$1:Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$20;->arg$2:Lcm/aptoide/pt/v8engine/payment/Payment;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->lambda$showPayments$21(Lcm/aptoide/pt/v8engine/payment/Payment;)V

    return-void
.end method
