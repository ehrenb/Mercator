.class final synthetic Lcm/aptoide/pt/networkclient/WebService$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/networkclient/WebService;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/networkclient/WebService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/networkclient/WebService$$Lambda$4;->arg$1:Lcm/aptoide/pt/networkclient/WebService;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/networkclient/WebService;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/networkclient/WebService$$Lambda$4;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/networkclient/WebService$$Lambda$4;-><init>(Lcm/aptoide/pt/networkclient/WebService;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/networkclient/WebService$$Lambda$4;->arg$1:Lcm/aptoide/pt/networkclient/WebService;

    invoke-virtual {v0}, Lcm/aptoide/pt/networkclient/WebService;->lambda$createServiceObservable$1()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
