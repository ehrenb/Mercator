.class final synthetic Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$39;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;

.field private final arg$2:Lcm/aptoide/pt/v8engine/payment/Authorization;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;Lcm/aptoide/pt/v8engine/payment/Authorization;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$39;->arg$1:Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$39;->arg$2:Lcm/aptoide/pt/v8engine/payment/Authorization;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;Lcm/aptoide/pt/v8engine/payment/Authorization;)Lrx/b/a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$39;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$39;-><init>(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;Lcm/aptoide/pt/v8engine/payment/Authorization;)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$39;->arg$1:Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$39;->arg$2:Lcm/aptoide/pt/v8engine/payment/Authorization;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->lambda$null$30(Lcm/aptoide/pt/v8engine/payment/Authorization;)V

    return-void
.end method
