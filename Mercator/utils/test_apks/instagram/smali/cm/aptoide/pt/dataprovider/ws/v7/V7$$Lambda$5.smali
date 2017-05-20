.class final synthetic Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/dataprovider/ws/v7/V7;

.field private final arg$2:Z


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/V7;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$5;->arg$1:Lcm/aptoide/pt/dataprovider/ws/v7/V7;

    iput-boolean p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$5;->arg$2:Z

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/dataprovider/ws/v7/V7;Z)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$5;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$5;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/V7;Z)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$5;->arg$1:Lcm/aptoide/pt/dataprovider/ws/v7/V7;

    iget-boolean v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7$$Lambda$5;->arg$2:Z

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->lambda$null$4(ZLjava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
