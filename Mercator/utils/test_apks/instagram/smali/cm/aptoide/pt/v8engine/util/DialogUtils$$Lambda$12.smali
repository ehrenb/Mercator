.class final synthetic Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;


# instance fields
.field private final arg$1:Landroid/app/Activity;

.field private final arg$2:Lrx/j;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lrx/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$12;->arg$1:Landroid/app/Activity;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$12;->arg$2:Lrx/j;

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/Activity;Lrx/j;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$12;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$12;-><init>(Landroid/app/Activity;Lrx/j;)V

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$12;->arg$1:Landroid/app/Activity;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$12;->arg$2:Lrx/j;

    invoke-static {v0, v1, p1}, Lcm/aptoide/pt/v8engine/util/DialogUtils;->lambda$null$4(Landroid/app/Activity;Lrx/j;Ljava/lang/Throwable;)V

    return-void
.end method
