.class final synthetic Lcm/aptoide/pt/iab/BillingBinder$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/iab/BillingBinder;

.field private final arg$2:I

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/iab/BillingBinder;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/iab/BillingBinder$$Lambda$3;->arg$1:Lcm/aptoide/pt/iab/BillingBinder;

    iput p2, p0, Lcm/aptoide/pt/iab/BillingBinder$$Lambda$3;->arg$2:I

    iput-object p3, p0, Lcm/aptoide/pt/iab/BillingBinder$$Lambda$3;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcm/aptoide/pt/iab/BillingBinder$$Lambda$3;->arg$4:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/iab/BillingBinder;ILjava/lang/String;Ljava/lang/String;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/iab/BillingBinder$$Lambda$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/iab/BillingBinder$$Lambda$3;-><init>(Lcm/aptoide/pt/iab/BillingBinder;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/iab/BillingBinder$$Lambda$3;->arg$1:Lcm/aptoide/pt/iab/BillingBinder;

    iget v1, p0, Lcm/aptoide/pt/iab/BillingBinder$$Lambda$3;->arg$2:I

    iget-object v2, p0, Lcm/aptoide/pt/iab/BillingBinder$$Lambda$3;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/iab/BillingBinder$$Lambda$3;->arg$4:Ljava/lang/String;

    check-cast p1, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcm/aptoide/pt/iab/BillingBinder;->lambda$getBuyIntent$2(ILjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;)Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

    move-result-object v0

    return-object v0
.end method
