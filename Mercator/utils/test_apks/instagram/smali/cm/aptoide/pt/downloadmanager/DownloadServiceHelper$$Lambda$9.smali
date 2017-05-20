.class final synthetic Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;

.field private final arg$2:Lcm/aptoide/pt/database/realm/Download;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;Lcm/aptoide/pt/database/realm/Download;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$9;->arg$1:Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;

    iput-object p2, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$9;->arg$2:Lcm/aptoide/pt/database/realm/Download;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$9;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$9;-><init>(Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;Lcm/aptoide/pt/database/realm/Download;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$9;->arg$1:Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper$$Lambda$9;->arg$2:Lcm/aptoide/pt/database/realm/Download;

    check-cast p1, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/downloadmanager/DownloadServiceHelper;->lambda$null$5(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/realm/Download;)V

    return-void
.end method
