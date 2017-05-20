.class final synthetic Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:I

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor$$Lambda$1;->arg$1:I

    iput-object p2, p0, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor$$Lambda$1;->arg$2:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(ILjava/lang/String;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor$$Lambda$1;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget v0, p0, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor$$Lambda$1;->arg$1:I

    iget-object v1, p0, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor$$Lambda$1;->arg$2:Ljava/lang/String;

    check-cast p1, Lio/realm/u;

    invoke-static {v0, v1, p1}, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;->lambda$getPaymentConfirmations$0(ILjava/lang/String;Lio/realm/u;)Lio/realm/af;

    move-result-object v0

    return-object v0
.end method
