.class final synthetic Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor$$Lambda$2;->arg$1:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor$$Lambda$2;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor$$Lambda$2;-><init>(Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor$$Lambda$2;->arg$1:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    check-cast p1, Lio/realm/af;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;->lambda$getPaymentConfirmations$1(Lio/realm/af;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
