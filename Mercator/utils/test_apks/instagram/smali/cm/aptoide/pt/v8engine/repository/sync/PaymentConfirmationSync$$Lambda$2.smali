.class final synthetic Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;

.field private final arg$2:Landroid/content/SyncResult;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;Landroid/content/SyncResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$2;->arg$2:Landroid/content/SyncResult;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;Landroid/content/SyncResult;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$2;-><init>(Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;Landroid/content/SyncResult;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$2;->arg$2:Landroid/content/SyncResult;

    check-cast p1, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->lambda$sync$1(Landroid/content/SyncResult;Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;)V

    return-void
.end method
