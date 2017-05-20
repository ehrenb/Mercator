.class final synthetic Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$4;->arg$1:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/List;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$4;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$4;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$4;->arg$1:Ljava/util/List;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->lambda$getPaymentsWithAuthorizations$3(Ljava/util/List;Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
