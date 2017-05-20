.class final synthetic Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

.field private final arg$2:Lcm/aptoide/pt/database/realm/Download;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/database/realm/Download;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$1;->arg$1:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    iput-object p2, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$1;->arg$2:Lcm/aptoide/pt/database/realm/Download;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$1;-><init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/database/realm/Download;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$1;->arg$1:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager$$Lambda$1;->arg$2:Lcm/aptoide/pt/database/realm/Download;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->lambda$startDownload$3(Lcm/aptoide/pt/database/realm/Download;Ljava/lang/Integer;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
