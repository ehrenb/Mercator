.class final synthetic Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcom/liulishuo/filedownloader/a;


# direct methods
.method private constructor <init>(Lcom/liulishuo/filedownloader/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$6;->arg$1:Lcom/liulishuo/filedownloader/a;

    return-void
.end method

.method public static lambdaFactory$(Lcom/liulishuo/filedownloader/a;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$6;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$6;-><init>(Lcom/liulishuo/filedownloader/a;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/downloadmanager/DownloadTask$$Lambda$6;->arg$1:Lcom/liulishuo/filedownloader/a;

    check-cast p1, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-static {v0, p1}, Lcm/aptoide/pt/downloadmanager/DownloadTask;->lambda$completed$5(Lcom/liulishuo/filedownloader/a;Lcm/aptoide/pt/database/realm/FileToDownload;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
