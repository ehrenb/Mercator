.class final Lrx/c/c/f$1;
.super Ljava/lang/Object;
.source "SchedulePeriodicHelper.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/c/f;->a(Lrx/g$a;Lrx/b/a;JJLjava/util/concurrent/TimeUnit;Lrx/c/c/f$a;)Lrx/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Lrx/b/a;

.field final synthetic g:Lrx/c/d/a;

.field final synthetic h:Lrx/c/c/f$a;

.field final synthetic i:Lrx/g$a;

.field final synthetic j:J


# direct methods
.method constructor <init>(JJLrx/b/a;Lrx/c/d/a;Lrx/c/c/f$a;Lrx/g$a;J)V
    .locals 3

    .prologue
    .line 66
    iput-wide p1, p0, Lrx/c/c/f$1;->d:J

    iput-wide p3, p0, Lrx/c/c/f$1;->e:J

    iput-object p5, p0, Lrx/c/c/f$1;->f:Lrx/b/a;

    iput-object p6, p0, Lrx/c/c/f$1;->g:Lrx/c/d/a;

    iput-object p7, p0, Lrx/c/c/f$1;->h:Lrx/c/c/f$a;

    iput-object p8, p0, Lrx/c/c/f$1;->i:Lrx/g$a;

    iput-wide p9, p0, Lrx/c/c/f$1;->j:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iget-wide v0, p0, Lrx/c/c/f$1;->d:J

    iput-wide v0, p0, Lrx/c/c/f$1;->b:J

    .line 69
    iget-wide v0, p0, Lrx/c/c/f$1;->e:J

    iput-wide v0, p0, Lrx/c/c/f$1;->c:J

    return-void
.end method


# virtual methods
.method public call()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    .line 72
    iget-object v0, p0, Lrx/c/c/f$1;->f:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    .line 74
    iget-object v0, p0, Lrx/c/c/f$1;->g:Lrx/c/d/a;

    invoke-virtual {v0}, Lrx/c/d/a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lrx/c/c/f$1;->h:Lrx/c/c/f$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lrx/c/c/f$1;->h:Lrx/c/c/f$a;

    invoke-interface {v0}, Lrx/c/c/f$a;->a()J

    move-result-wide v0

    .line 80
    :goto_0
    sget-wide v2, Lrx/c/c/f;->a:J

    add-long/2addr v2, v0

    iget-wide v4, p0, Lrx/c/c/f$1;->b:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lrx/c/c/f$1;->b:J

    iget-wide v4, p0, Lrx/c/c/f$1;->j:J

    add-long/2addr v2, v4

    sget-wide v4, Lrx/c/c/f;->a:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 82
    :cond_0
    iget-wide v2, p0, Lrx/c/c/f$1;->j:J

    add-long/2addr v2, v0

    .line 87
    iget-wide v4, p0, Lrx/c/c/f$1;->j:J

    iget-wide v6, p0, Lrx/c/c/f$1;->a:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lrx/c/c/f$1;->a:J

    mul-long/2addr v4, v6

    sub-long v4, v2, v4

    iput-wide v4, p0, Lrx/c/c/f$1;->c:J

    .line 91
    :goto_1
    iput-wide v0, p0, Lrx/c/c/f$1;->b:J

    .line 93
    sub-long v0, v2, v0

    .line 94
    iget-object v2, p0, Lrx/c/c/f$1;->g:Lrx/c/d/a;

    iget-object v3, p0, Lrx/c/c/f$1;->i:Lrx/g$a;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p0, v0, v1, v4}, Lrx/g$a;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/k;

    move-result-object v0

    invoke-virtual {v2, v0}, Lrx/c/d/a;->b(Lrx/k;)Z

    .line 96
    :cond_1
    return-void

    .line 78
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lrx/c/c/f$1;->i:Lrx/g$a;

    invoke-virtual {v1}, Lrx/g$a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    goto :goto_0

    .line 89
    :cond_3
    iget-wide v2, p0, Lrx/c/c/f$1;->c:J

    iget-wide v4, p0, Lrx/c/c/f$1;->a:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lrx/c/c/f$1;->a:J

    iget-wide v6, p0, Lrx/c/c/f$1;->j:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    goto :goto_1
.end method
