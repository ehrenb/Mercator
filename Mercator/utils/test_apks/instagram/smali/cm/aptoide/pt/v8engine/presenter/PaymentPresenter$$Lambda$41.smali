.class final synthetic Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$41;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;

.field private final arg$2:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$41;->arg$1:Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$41;->arg$2:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;Ljava/util/List;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$41;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$41;-><init>(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$41;->arg$1:Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$41;->arg$2:Ljava/util/List;

    check-cast p1, Lcm/aptoide/pt/v8engine/payment/Payment;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->lambda$null$19(Ljava/util/List;Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/a;

    move-result-object v0

    return-object v0
.end method
