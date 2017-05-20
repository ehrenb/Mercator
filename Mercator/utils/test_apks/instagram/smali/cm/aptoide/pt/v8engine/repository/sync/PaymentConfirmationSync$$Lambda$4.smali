.class final synthetic Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;

.field private final arg$2:Lcm/aptoide/pt/v8engine/payment/Product;

.field private final arg$3:I

.field private final arg$4:Ljava/lang/String;

.field private final arg$5:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;Lcm/aptoide/pt/v8engine/payment/Product;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$4;->arg$2:Lcm/aptoide/pt/v8engine/payment/Product;

    iput p3, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$4;->arg$3:I

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$4;->arg$4:Ljava/lang/String;

    iput-object p5, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$4;->arg$5:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;Lcm/aptoide/pt/v8engine/payment/Product;ILjava/lang/String;Ljava/lang/String;)Lrx/b/e;
    .locals 6

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$4;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;Lcm/aptoide/pt/v8engine/payment/Product;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$4;->arg$2:Lcm/aptoide/pt/v8engine/payment/Product;

    iget v2, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$4;->arg$3:I

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$4;->arg$4:Ljava/lang/String;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$4;->arg$5:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->lambda$createServerPaymentConfirmation$3(Lcm/aptoide/pt/v8engine/payment/Product;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lrx/h;

    move-result-object v0

    return-object v0
.end method
