.class final synthetic Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;

.field private final arg$2:Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;

    check-cast p1, Lcm/aptoide/pt/model/v3/PaidApp;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;->lambda$getPurchase$0(Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;Lcm/aptoide/pt/model/v3/PaidApp;)Lrx/h;

    move-result-object v0

    return-object v0
.end method
