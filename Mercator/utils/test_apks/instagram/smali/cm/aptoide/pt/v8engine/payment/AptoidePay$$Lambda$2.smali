.class final synthetic Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/payment/AptoidePay;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/payment/AptoidePay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/payment/AptoidePay;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$2;->arg$2:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/payment/AptoidePay;Ljava/lang/String;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$2;-><init>(Lcm/aptoide/pt/v8engine/payment/AptoidePay;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/payment/AptoidePay;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$2;->arg$2:Ljava/lang/String;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->lambda$getPaymentsWithAuthorizations$1(Ljava/lang/String;Ljava/util/List;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
