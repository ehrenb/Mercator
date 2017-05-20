.class Lcom/facebook/r;
.super Ljava/io/FilterOutputStream;
.source "ProgressOutputStream.java"

# interfaces
.implements Lcom/facebook/t;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/u;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/j;

.field private final c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:Lcom/facebook/u;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/facebook/j;Ljava/util/Map;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lcom/facebook/j;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/u;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    iput-object p2, p0, Lcom/facebook/r;->b:Lcom/facebook/j;

    .line 45
    iput-object p3, p0, Lcom/facebook/r;->a:Ljava/util/Map;

    .line 46
    iput-wide p4, p0, Lcom/facebook/r;->f:J

    .line 48
    invoke-static {}, Lcom/facebook/h;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/r;->c:J

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/facebook/r;)Lcom/facebook/j;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/r;->b:Lcom/facebook/j;

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/facebook/r;->d:J

    iget-wide v2, p0, Lcom/facebook/r;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/facebook/r;->b:Lcom/facebook/j;

    invoke-virtual {v0}, Lcom/facebook/j;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/j$a;

    .line 66
    instance-of v1, v0, Lcom/facebook/j$b;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/facebook/r;->b:Lcom/facebook/j;

    invoke-virtual {v1}, Lcom/facebook/j;->c()Landroid/os/Handler;

    move-result-object v1

    .line 70
    check-cast v0, Lcom/facebook/j$b;

    .line 72
    if-nez v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/facebook/r;->b:Lcom/facebook/j;

    iget-wide v2, p0, Lcom/facebook/r;->d:J

    iget-wide v4, p0, Lcom/facebook/r;->f:J

    invoke-interface/range {v0 .. v5}, Lcom/facebook/j$b;->a(Lcom/facebook/j;JJ)V

    goto :goto_0

    .line 76
    :cond_1
    new-instance v2, Lcom/facebook/r$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/r$1;-><init>(Lcom/facebook/r;Lcom/facebook/j$b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 89
    :cond_2
    iget-wide v0, p0, Lcom/facebook/r;->d:J

    iput-wide v0, p0, Lcom/facebook/r;->e:J

    .line 91
    :cond_3
    return-void
.end method

.method private a(J)V
    .locals 7

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/r;->g:Lcom/facebook/u;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/facebook/r;->g:Lcom/facebook/u;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/u;->a(J)V

    .line 56
    :cond_0
    iget-wide v0, p0, Lcom/facebook/r;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/r;->d:J

    .line 58
    iget-wide v0, p0, Lcom/facebook/r;->d:J

    iget-wide v2, p0, Lcom/facebook/r;->e:J

    iget-wide v4, p0, Lcom/facebook/r;->c:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcom/facebook/r;->d:J

    iget-wide v2, p0, Lcom/facebook/r;->f:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 59
    :cond_1
    invoke-direct {p0}, Lcom/facebook/r;->a()V

    .line 61
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/facebook/r;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/facebook/r;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/facebook/r;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/facebook/r;->f:J

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/facebook/GraphRequest;)V
    .locals 1

    .prologue
    .line 94
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/r;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/u;

    :goto_0
    iput-object v0, p0, Lcom/facebook/r;->g:Lcom/facebook/u;

    .line 95
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 127
    iget-object v0, p0, Lcom/facebook/r;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/u;

    .line 128
    invoke-virtual {v0}, Lcom/facebook/u;->a()V

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/facebook/r;->a()V

    .line 132
    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/r;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 120
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/r;->a(J)V

    .line 121
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/r;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 108
    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/r;->a(J)V

    .line 109
    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/r;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 114
    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, Lcom/facebook/r;->a(J)V

    .line 115
    return-void
.end method
