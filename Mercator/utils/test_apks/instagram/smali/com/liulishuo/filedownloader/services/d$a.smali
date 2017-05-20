.class public Lcom/liulishuo/filedownloader/services/d$a;
.super Ljava/lang/Object;
.source "DownloadMgrInitialParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/services/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/liulishuo/filedownloader/e/c$b;

.field b:Ljava/lang/Integer;

.field c:Lcom/liulishuo/filedownloader/e/c$c;

.field d:Lcom/liulishuo/filedownloader/e/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d$a;->c:Lcom/liulishuo/filedownloader/e/c$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d$a;->c:Lcom/liulishuo/filedownloader/e/c$c;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/e/c$c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Lcom/liulishuo/filedownloader/e/e;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/liulishuo/filedownloader/e/e;->f:Z

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Since the provided FileDownloadOutputStream does not support the seek function, if FileDownloader pre-allocates file size at the beginning of the download, it will can not be resumed from the breakpoint. If you need to ensure that the resumption is available, please add and set the value of \'file.non-pre-allocation\' field to \'true\' in the \'filedownloader.properties\' file which is in your application assets folder manually for resolving this problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/liulishuo/filedownloader/services/d$a;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/d$a;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/liulishuo/filedownloader/e/c$a;)Lcom/liulishuo/filedownloader/services/d$a;
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/d$a;->d:Lcom/liulishuo/filedownloader/e/c$a;

    .line 205
    return-object p0
.end method
