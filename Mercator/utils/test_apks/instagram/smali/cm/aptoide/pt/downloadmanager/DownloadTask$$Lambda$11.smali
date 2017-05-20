.class final synthetic Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/downloadmanager/DownloadTask;

.field private final arg$2:Lcm/aptoide/pt/database/realm/Download;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/downloadmanager/DownloadTask;Lcm/aptoide/pt/database/realm/Download;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$11;->arg$1:Lcm/aptoide/pt/downloadmanager/DownloadTask;

    iput-object p2, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$11;->arg$2:Lcm/aptoide/pt/database/realm/Download;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadTask;Lcm/aptoide/pt/database/realm/Download;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$11;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$11;-><init>(Lcm/aptoide/pt/downloadmanager/DownloadTask;Lcm/aptoide/pt/database/realm/Download;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$11;->arg$1:Lcm/aptoide/pt/downloadmanager/DownloadTask;

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$11;->arg$2:Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->lambda$CheckMd5AndMoveFileToRightPlace$11(Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
