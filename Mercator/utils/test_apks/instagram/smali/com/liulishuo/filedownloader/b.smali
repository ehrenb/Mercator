.class public Lcom/liulishuo/filedownloader/b;
.super Ljava/lang/Object;
.source "DownloadSpeedMonitor.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/r$a;
.implements Lcom/liulishuo/filedownloader/r$b;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:I

.field private f:J

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/liulishuo/filedownloader/b;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/b;->d:J

    .line 43
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/b;->f:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/b;->c:J

    .line 44
    return-void
.end method

.method public a(J)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 48
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/b;->d:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/liulishuo/filedownloader/b;->c:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/b;->c:J

    sub-long v0, p1, v0

    .line 53
    iput-wide v6, p0, Lcom/liulishuo/filedownloader/b;->a:J

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/b;->d:J

    sub-long/2addr v2, v4

    .line 55
    cmp-long v4, v2, v6

    if-gez v4, :cond_2

    .line 56
    long-to-int v0, v0

    iput v0, p0, Lcom/liulishuo/filedownloader/b;->e:I

    goto :goto_0

    .line 58
    :cond_2
    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/liulishuo/filedownloader/b;->e:I

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/liulishuo/filedownloader/b;->e:I

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/b;->a:J

    .line 95
    return-void
.end method

.method public b(J)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    iget v2, p0, Lcom/liulishuo/filedownloader/b;->g:I

    if-gtz v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-wide v2, p0, Lcom/liulishuo/filedownloader/b;->a:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 84
    :goto_1
    if-eqz v0, :cond_0

    .line 85
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/b;->b:J

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/b;->a:J

    goto :goto_0

    .line 75
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/b;->a:J

    sub-long/2addr v2, v4

    .line 76
    iget v4, p0, Lcom/liulishuo/filedownloader/b;->g:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    iget v4, p0, Lcom/liulishuo/filedownloader/b;->e:I

    if-nez v4, :cond_4

    cmp-long v4, v2, v6

    if-lez v4, :cond_4

    .line 77
    :cond_3
    iget-wide v4, p0, Lcom/liulishuo/filedownloader/b;->b:J

    sub-long v4, p1, v4

    div-long v2, v4, v2

    long-to-int v2, v2

    iput v2, p0, Lcom/liulishuo/filedownloader/b;->e:I

    .line 78
    iget v2, p0, Lcom/liulishuo/filedownloader/b;->e:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/liulishuo/filedownloader/b;->e:I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public c()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/liulishuo/filedownloader/b;->e:I

    return v0
.end method
