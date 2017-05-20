.class final synthetic Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/dataprovider/ws/v7/V7;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/V7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$3;->arg$1:Lcm/aptoide/pt/dataprovider/ws/v7/V7;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/dataprovider/ws/v7/V7;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$3;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$3;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/V7;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$3;->arg$1:Lcm/aptoide/pt/dataprovider/ws/v7/V7;

    check-cast p1, Lrx/d;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->lambda$retryOnTicket$3(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
