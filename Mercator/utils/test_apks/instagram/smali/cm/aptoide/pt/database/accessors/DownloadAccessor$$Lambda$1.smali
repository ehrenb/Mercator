.class final synthetic Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

.field private final arg$2:J


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/database/accessors/DownloadAccessor;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$1;->arg$1:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    iput-wide p2, p0, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$1;->arg$2:J

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/database/accessors/DownloadAccessor;J)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$1;-><init>(Lcm/aptoide/pt/database/accessors/DownloadAccessor;J)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$1;->arg$1:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    iget-wide v2, p0, Lcm/aptoide/pt/database/accessors/DownloadAccessor$$Lambda$1;->arg$2:J

    invoke-virtual {v0, v2, v3}, Lcm/aptoide/pt/database/accessors/DownloadAccessor;->lambda$delete$0(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
