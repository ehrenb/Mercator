.class public Lcom/b/b/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/bx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static declared-synchronized a()Lcom/b/b/as;
    .locals 3

    .prologue
    .line 30
    const-class v1, Lcom/b/b/as;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    const-class v2, Lcom/b/b/as;

    invoke-virtual {v0, v2}, Lcom/b/b/bg;->a(Ljava/lang/Class;)Lcom/b/b/bx;

    move-result-object v0

    check-cast v0, Lcom/b/b/as;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()J
    .locals 3

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    .line 89
    invoke-static {}, Lcom/b/b/as;->g()Lcom/b/b/bf;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_0

    .line 1137
    iget-wide v0, v2, Lcom/b/b/bf;->c:J

    .line 94
    :cond_0
    return-wide v0
.end method

.method public static c()J
    .locals 3

    .prologue
    .line 98
    const-wide/16 v0, 0x0

    .line 100
    invoke-static {}, Lcom/b/b/as;->g()Lcom/b/b/bf;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_0

    .line 1141
    iget-wide v0, v2, Lcom/b/b/bf;->d:J

    .line 105
    :cond_0
    return-wide v0
.end method

.method public static d()J
    .locals 3

    .prologue
    .line 109
    const-wide/16 v0, -0x1

    .line 111
    invoke-static {}, Lcom/b/b/as;->g()Lcom/b/b/bf;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_0

    .line 1145
    iget-wide v0, v2, Lcom/b/b/bf;->e:J

    .line 116
    :cond_0
    return-wide v0
.end method

.method public static e()J
    .locals 3

    .prologue
    .line 120
    const-wide/16 v0, 0x0

    .line 122
    invoke-static {}, Lcom/b/b/as;->g()Lcom/b/b/bf;

    move-result-object v2

    .line 123
    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v2}, Lcom/b/b/bf;->c()J

    move-result-wide v0

    .line 127
    :cond_0
    return-wide v0
.end method

.method public static f()Lcom/b/b/az$a;
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/b/b/az;->a()Lcom/b/b/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/az;->b()Lcom/b/b/az$a;

    move-result-object v0

    return-object v0
.end method

.method public static g()Lcom/b/b/bf;
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Lcom/b/b/ct;->a()Lcom/b/b/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/ct;->b()Lcom/b/b/cr;

    move-result-object v0

    .line 1199
    if-nez v0, :cond_0

    .line 1200
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1203
    :cond_0
    const-class v1, Lcom/b/b/bf;

    invoke-virtual {v0, v1}, Lcom/b/b/cr;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/bf;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/b/b/bf;

    invoke-static {v0}, Lcom/b/b/cr;->a(Ljava/lang/Class;)V

    .line 42
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    .line 43
    invoke-static {}, Lcom/b/b/da;->a()Lcom/b/b/da;

    .line 44
    invoke-static {}, Lcom/b/b/cw;->a()Lcom/b/b/cw;

    .line 45
    invoke-static {}, Lcom/b/b/bi;->a()Lcom/b/b/bi;

    .line 46
    invoke-static {}, Lcom/b/b/az;->a()Lcom/b/b/az;

    .line 47
    invoke-static {}, Lcom/b/b/at;->a()Lcom/b/b/at;

    .line 48
    invoke-static {}, Lcom/b/b/ba;->a()Lcom/b/b/ba;

    .line 49
    invoke-static {}, Lcom/b/b/ax;->a()Lcom/b/b/ax;

    .line 50
    invoke-static {}, Lcom/b/b/at;->a()Lcom/b/b/at;

    .line 51
    invoke-static {}, Lcom/b/b/bc;->a()Lcom/b/b/bc;

    .line 52
    invoke-static {}, Lcom/b/b/aw;->a()Lcom/b/b/aw;

    .line 53
    invoke-static {}, Lcom/b/b/be;->a()Lcom/b/b/be;

    .line 54
    return-void
.end method
