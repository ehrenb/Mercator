.class final synthetic Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$25;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$25;->arg$1:Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$25;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$25;-><init>(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$25;->arg$1:Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;

    check-cast p1, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->lambda$paymentRegisterSelection$27(Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;)V

    return-void
.end method
