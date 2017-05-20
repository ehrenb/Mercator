.class public Lcom/liulishuo/filedownloader/services/d;
.super Ljava/lang/Object;
.source "DownloadMgrInitialParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/services/d$a;


# direct methods
.method public constructor <init>(Lcom/liulishuo/filedownloader/services/d$a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/d;->a:Lcom/liulishuo/filedownloader/services/d$a;

    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-static {p1}, Lcom/liulishuo/filedownloader/services/d$a;->a(Lcom/liulishuo/filedownloader/services/d$a;)V

    .line 40
    :cond_0
    return-void
.end method

.method private e()I
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/liulishuo/filedownloader/e/e;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v0

    iget v0, v0, Lcom/liulishuo/filedownloader/e/e;->e:I

    return v0
.end method

.method private f()Lcom/liulishuo/filedownloader/services/g;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/liulishuo/filedownloader/services/b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/b;-><init>()V

    return-object v0
.end method

.method private g()Lcom/liulishuo/filedownloader/e/c$c;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/liulishuo/filedownloader/d/b$a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/d/b$a;-><init>()V

    return-object v0
.end method

.method private h()Lcom/liulishuo/filedownloader/e/c$a;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/liulishuo/filedownloader/a/b$b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/a/b$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Lcom/liulishuo/filedownloader/services/d$a;

    if-nez v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/d;->e()I

    move-result v0

    .line 57
    :goto_0
    return v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Lcom/liulishuo/filedownloader/services/d$a;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/d$a;->b:Ljava/lang/Integer;

    .line 49
    if-eqz v0, :cond_2

    .line 50
    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_1

    .line 51
    const-string v1, "initial FileDownloader manager with the customize maxNetworkThreadCount: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/e;->a(I)I

    move-result v0

    goto :goto_0

    .line 57
    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/d;->e()I

    move-result v0

    goto :goto_0
.end method

.method b()Lcom/liulishuo/filedownloader/services/g;
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Lcom/liulishuo/filedownloader/services/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Lcom/liulishuo/filedownloader/services/d$a;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/d$a;->a:Lcom/liulishuo/filedownloader/e/c$b;

    if-nez v0, :cond_2

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/d;->f()Lcom/liulishuo/filedownloader/services/g;

    move-result-object v0

    .line 75
    :cond_1
    :goto_0
    return-object v0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Lcom/liulishuo/filedownloader/services/d$a;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/d$a;->a:Lcom/liulishuo/filedownloader/e/c$b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/e/c$b;->a()Lcom/liulishuo/filedownloader/services/g;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_1

    .line 70
    const-string v1, "initial FileDownloader manager with the customize database: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_3
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/d;->f()Lcom/liulishuo/filedownloader/services/g;

    move-result-object v0

    goto :goto_0
.end method

.method c()Lcom/liulishuo/filedownloader/e/c$c;
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Lcom/liulishuo/filedownloader/services/d$a;

    if-nez v0, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/d;->g()Lcom/liulishuo/filedownloader/e/c$c;

    move-result-object v0

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Lcom/liulishuo/filedownloader/services/d$a;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/d$a;->c:Lcom/liulishuo/filedownloader/e/c$c;

    .line 86
    if-eqz v0, :cond_2

    .line 87
    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "initial FileDownloader manager with the customize output stream: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/d;->g()Lcom/liulishuo/filedownloader/e/c$c;

    move-result-object v0

    goto :goto_0
.end method

.method d()Lcom/liulishuo/filedownloader/e/c$a;
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Lcom/liulishuo/filedownloader/services/d$a;

    if-nez v0, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/d;->h()Lcom/liulishuo/filedownloader/e/c$a;

    move-result-object v0

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Lcom/liulishuo/filedownloader/services/d$a;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/d$a;->d:Lcom/liulishuo/filedownloader/e/c$a;

    .line 104
    if-eqz v0, :cond_2

    .line 105
    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "initial FileDownloader manager with the customize connection creator: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/d;->h()Lcom/liulishuo/filedownloader/e/c$a;

    move-result-object v0

    goto :goto_0
.end method
