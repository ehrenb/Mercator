.class final synthetic Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/downloadmanager/DownloadService;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/downloadmanager/DownloadService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$1;->arg$1:Lcm/aptoide/pt/downloadmanager/DownloadService;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadService;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$1;-><init>(Lcm/aptoide/pt/downloadmanager/DownloadService;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$1;->arg$1:Lcm/aptoide/pt/downloadmanager/DownloadService;

    check-cast p1, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/downloadmanager/DownloadService;->lambda$onStartCommand$0(Lcm/aptoide/pt/database/realm/Download;)V

    return-void
.end method
