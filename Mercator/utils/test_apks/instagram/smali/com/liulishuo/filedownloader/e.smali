.class public abstract Lcom/liulishuo/filedownloader/e;
.super Lcom/liulishuo/filedownloader/b/d;
.source "FileDownloadConnectListener.java"


# instance fields
.field private a:Lcom/liulishuo/filedownloader/b/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/b/d;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lcom/liulishuo/filedownloader/b/c;)Z
    .locals 2

    .prologue
    .line 37
    instance-of v0, p1, Lcom/liulishuo/filedownloader/b/b;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lcom/liulishuo/filedownloader/b/b;

    .line 40
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/b/b;->a()Lcom/liulishuo/filedownloader/b/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/e;->a:Lcom/liulishuo/filedownloader/b/b$a;

    .line 42
    iget-object v0, p0, Lcom/liulishuo/filedownloader/e;->a:Lcom/liulishuo/filedownloader/b/b$a;

    sget-object v1, Lcom/liulishuo/filedownloader/b/b$a;->a:Lcom/liulishuo/filedownloader/b/b$a;

    if-ne v0, v1, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/e;->a()V

    .line 48
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/e;->b()V

    goto :goto_0
.end method

.method public abstract b()V
.end method

.method public c()Lcom/liulishuo/filedownloader/b/b$a;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liulishuo/filedownloader/e;->a:Lcom/liulishuo/filedownloader/b/b$a;

    return-object v0
.end method
