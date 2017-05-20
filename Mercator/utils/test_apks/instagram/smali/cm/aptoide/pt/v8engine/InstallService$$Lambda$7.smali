.class final synthetic Lcm/aptoide/pt/v8engine/InstallService$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/InstallService;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/InstallService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/InstallService;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$7;->arg$2:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;Ljava/lang/String;)Lrx/b/a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$7;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$7;-><init>(Lcm/aptoide/pt/v8engine/InstallService;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/InstallService;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$7;->arg$2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/InstallService;->lambda$stopDownload$6(Ljava/lang/String;)V

    return-void
.end method
