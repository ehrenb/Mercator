.class final synthetic Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;


# instance fields
.field private final arg$1:Landroid/app/Activity;

.field private final arg$2:Lrx/b/a;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lrx/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$5;->arg$1:Landroid/app/Activity;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$5;->arg$2:Lrx/b/a;

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/Activity;Lrx/b/a;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$5;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$5;-><init>(Landroid/app/Activity;Lrx/b/a;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$5;->arg$1:Landroid/app/Activity;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$5;->arg$2:Lrx/b/a;

    check-cast p1, Lcm/aptoide/pt/model/v7/BaseV7Response;

    invoke-static {v0, v1, p1}, Lcm/aptoide/pt/v8engine/util/DialogUtils;->lambda$null$9(Landroid/app/Activity;Lrx/b/a;Lcm/aptoide/pt/model/v7/BaseV7Response;)V

    return-void
.end method
