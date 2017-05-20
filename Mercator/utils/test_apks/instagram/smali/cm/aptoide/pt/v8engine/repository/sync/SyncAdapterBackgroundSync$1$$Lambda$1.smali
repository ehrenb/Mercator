.class final synthetic Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1$$Lambda$1;->arg$1:Ljava/lang/Object;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/Object;)Lrx/b/a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1$$Lambda$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1$$Lambda$1;->arg$1:Ljava/lang/Object;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;->lambda$call$0(Ljava/lang/Object;)V

    return-void
.end method
