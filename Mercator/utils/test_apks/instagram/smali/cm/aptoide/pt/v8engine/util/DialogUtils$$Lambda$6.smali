.class final synthetic Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;


# instance fields
.field private final arg$1:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$6;->arg$1:Landroid/app/Activity;

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/Activity;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$6;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$6;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$6;->arg$1:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/util/DialogUtils;->lambda$null$10(Landroid/app/Activity;Ljava/lang/Throwable;)V

    return-void
.end method
