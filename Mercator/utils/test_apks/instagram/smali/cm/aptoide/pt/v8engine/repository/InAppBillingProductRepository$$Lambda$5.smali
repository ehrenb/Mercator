.class final synthetic Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/f;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$5;->arg$2:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;Ljava/lang/String;)Lrx/b/f;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$5;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$5;-><init>(Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$5;->arg$2:Ljava/lang/String;

    check-cast p1, Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$InAppBillingPurchase;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;->lambda$convertToPurchase$4(Ljava/lang/String;Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$InAppBillingPurchase;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Purchase;

    move-result-object v0

    return-object v0
.end method
