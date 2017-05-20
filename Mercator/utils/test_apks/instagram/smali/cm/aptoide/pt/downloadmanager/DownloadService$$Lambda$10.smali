.class final synthetic Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$10;->arg$1:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/String;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$10;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$10;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadService$$Lambda$10;->arg$1:Ljava/lang/String;

    check-cast p1, Lcm/aptoide/pt/database/realm/Download;

    invoke-static {v0, p1}, Lcm/aptoide/pt/downloadmanager/DownloadService;->lambda$null$2(Ljava/lang/String;Lcm/aptoide/pt/database/realm/Download;)V

    return-void
.end method
