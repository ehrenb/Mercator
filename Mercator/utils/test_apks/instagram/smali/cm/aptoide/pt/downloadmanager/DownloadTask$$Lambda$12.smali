.class final synthetic Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/downloadmanager/DownloadTask;

.field private final arg$2:Lcm/aptoide/pt/database/realm/FileToDownload;

.field private final arg$3:Lcom/liulishuo/filedownloader/a;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/downloadmanager/DownloadTask;Lcm/aptoide/pt/database/realm/FileToDownload;Lcom/liulishuo/filedownloader/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$12;->arg$1:Lcm/aptoide/pt/downloadmanager/DownloadTask;

    iput-object p2, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$12;->arg$2:Lcm/aptoide/pt/database/realm/FileToDownload;

    iput-object p3, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$12;->arg$3:Lcom/liulishuo/filedownloader/a;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/downloadmanager/DownloadTask;Lcm/aptoide/pt/database/realm/FileToDownload;Lcom/liulishuo/filedownloader/a;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$12;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$12;-><init>(Lcm/aptoide/pt/downloadmanager/DownloadTask;Lcm/aptoide/pt/database/realm/FileToDownload;Lcom/liulishuo/filedownloader/a;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$12;->arg$1:Lcm/aptoide/pt/downloadmanager/DownloadTask;

    iget-object v1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$12;->arg$2:Lcm/aptoide/pt/database/realm/FileToDownload;

    iget-object v2, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$12;->arg$3:Lcom/liulishuo/filedownloader/a;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->lambda$null$6(Lcm/aptoide/pt/database/realm/FileToDownload;Lcom/liulishuo/filedownloader/a;Ljava/lang/Boolean;)V

    return-void
.end method
