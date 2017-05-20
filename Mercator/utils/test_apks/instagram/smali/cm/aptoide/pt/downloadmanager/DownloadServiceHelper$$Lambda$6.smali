.class final synthetic Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;

.field private final arg$2:Lcm/aptoide/pt/database/realm/Download;

.field private final arg$3:Lcm/aptoide/pt/database/accessors/DownloadAccessor;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/accessors/DownloadAccessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$6;->arg$1:Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;

    iput-object p2, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$6;->arg$2:Lcm/aptoide/pt/database/realm/Download;

    iput-object p3, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$6;->arg$3:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/accessors/DownloadAccessor;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$6;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$6;-><init>(Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/accessors/DownloadAccessor;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$6;->arg$1:Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$6;->arg$2:Lcm/aptoide/pt/database/realm/Download;

    iget-object v2, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$6;->arg$3:Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->lambda$startDownload$9(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/accessors/DownloadAccessor;Ljava/lang/Void;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
