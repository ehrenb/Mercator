.class final synthetic Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;

.field private final arg$2:Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$3;->arg$2:Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$3;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$3;->arg$2:Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

    check-cast p1, Lcm/aptoide/pt/model/v3/PaymentServiceResponse;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;->lambda$getPayments$2(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;Lcm/aptoide/pt/model/v3/PaymentServiceResponse;)Lcm/aptoide/pt/v8engine/payment/Payment;

    move-result-object v0

    return-object v0
.end method
