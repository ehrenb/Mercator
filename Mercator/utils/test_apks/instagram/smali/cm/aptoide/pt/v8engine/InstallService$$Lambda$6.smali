.class final synthetic Lcm/aptoide/pt/v8engine/InstallService$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/InstallService;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/InstallService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/InstallService;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$6;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$6;-><init>(Lcm/aptoide/pt/v8engine/InstallService;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/InstallService;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/InstallService;->lambda$onStartCommand$5(Ljava/lang/Throwable;)V

    return-void
.end method
