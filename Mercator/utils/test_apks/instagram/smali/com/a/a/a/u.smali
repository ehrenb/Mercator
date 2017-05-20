.class Lcom/a/a/a/u;
.super Ljava/lang/Object;
.source "SessionAnalyticsManager.java"

# interfaces
.implements Lcom/a/a/a/j$a;


# instance fields
.field final a:Lcom/a/a/a/e;

.field final b:Lio/fabric/sdk/android/a;

.field final c:Lcom/a/a/a/j;

.field final d:Lcom/a/a/a/h;

.field private final e:J


# direct methods
.method constructor <init>(Lcom/a/a/a/e;Lio/fabric/sdk/android/a;Lcom/a/a/a/j;Lcom/a/a/a/h;J)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/a/a/a/u;->a:Lcom/a/a/a/e;

    .line 60
    iput-object p2, p0, Lcom/a/a/a/u;->b:Lio/fabric/sdk/android/a;

    .line 61
    iput-object p3, p0, Lcom/a/a/a/u;->c:Lcom/a/a/a/j;

    .line 62
    iput-object p4, p0, Lcom/a/a/a/u;->d:Lcom/a/a/a/h;

    .line 63
    iput-wide p5, p0, Lcom/a/a/a/u;->e:J

    .line 64
    return-void
.end method

.method public static a(Lio/fabric/sdk/android/h;Landroid/content/Context;Lio/fabric/sdk/android/services/b/o;Ljava/lang/String;Ljava/lang/String;J)Lcom/a/a/a/u;
    .locals 9

    .prologue
    .line 37
    new-instance v4, Lcom/a/a/a/z;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/a/a/a/z;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/b/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v3, Lcom/a/a/a/f;

    new-instance v0, Lio/fabric/sdk/android/services/d/b;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/d/b;-><init>(Lio/fabric/sdk/android/h;)V

    invoke-direct {v3, p1, v0}, Lcom/a/a/a/f;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/d/a;)V

    .line 41
    new-instance v5, Lio/fabric/sdk/android/services/network/b;

    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    invoke-direct {v5, v0}, Lio/fabric/sdk/android/services/network/b;-><init>(Lio/fabric/sdk/android/k;)V

    .line 43
    new-instance v7, Lio/fabric/sdk/android/a;

    invoke-direct {v7, p1}, Lio/fabric/sdk/android/a;-><init>(Landroid/content/Context;)V

    .line 44
    const-string v0, "Answers Events Handler"

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/n;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 46
    new-instance v8, Lcom/a/a/a/j;

    invoke-direct {v8, v6}, Lcom/a/a/a/j;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 47
    new-instance v0, Lcom/a/a/a/e;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/a/a/a/e;-><init>(Lio/fabric/sdk/android/h;Landroid/content/Context;Lcom/a/a/a/f;Lcom/a/a/a/z;Lio/fabric/sdk/android/services/network/d;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 49
    invoke-static {p1}, Lcom/a/a/a/h;->a(Landroid/content/Context;)Lcom/a/a/a/h;

    move-result-object v5

    .line 50
    new-instance v1, Lcom/a/a/a/u;

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/a/a/a/u;-><init>(Lcom/a/a/a/e;Lio/fabric/sdk/android/a;Lcom/a/a/a/j;Lcom/a/a/a/h;J)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 132
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Flush events when app is backgrounded"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/a/a/a/u;->a:Lcom/a/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/a/e;->c()V

    .line 134
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 121
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Logged install"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/a/a/a/u;->a:Lcom/a/a/a/e;

    invoke-static {p1, p2}, Lcom/a/a/a/w;->a(J)Lcom/a/a/a/w$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/e;->b(Lcom/a/a/a/w$a;)V

    .line 123
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/a/a/a/w$b;)V
    .locals 4

    .prologue
    .line 126
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Answers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logged lifecycle event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/a/a/a/w$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/a/a/a/u;->a:Lcom/a/a/a/e;

    invoke-static {p2, p1}, Lcom/a/a/a/w;->a(Lcom/a/a/a/w$b;Landroid/app/Activity;)Lcom/a/a/a/w$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/e;->a(Lcom/a/a/a/w$a;)V

    .line 128
    return-void
.end method

.method public a(Lcom/a/a/a/k;)V
    .locals 4

    .prologue
    .line 89
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Answers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logged custom event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/a/a/a/u;->a:Lcom/a/a/a/e;

    invoke-static {p1}, Lcom/a/a/a/w;->a(Lcom/a/a/a/k;)Lcom/a/a/a/w$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/e;->a(Lcom/a/a/a/w$a;)V

    .line 91
    return-void
.end method

.method public a(Lio/fabric/sdk/android/services/e/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/a/a/a/u;->c:Lcom/a/a/a/j;

    iget-boolean v1, p1, Lio/fabric/sdk/android/services/e/b;->h:Z

    invoke-virtual {v0, v1}, Lcom/a/a/a/j;->a(Z)V

    .line 139
    iget-object v0, p0, Lcom/a/a/a/u;->a:Lcom/a/a/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/a/e;->a(Lio/fabric/sdk/android/services/e/b;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 105
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onCrash called from main thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Logged crash"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/a/a/a/u;->a:Lcom/a/a/a/e;

    invoke-static {p1, p2}, Lcom/a/a/a/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/w$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/e;->c(Lcom/a/a/a/w$a;)V

    .line 114
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/a/a/a/u;->a:Lcom/a/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/a/e;->b()V

    .line 71
    iget-object v0, p0, Lcom/a/a/a/u;->b:Lio/fabric/sdk/android/a;

    new-instance v1, Lcom/a/a/a/g;

    iget-object v2, p0, Lcom/a/a/a/u;->c:Lcom/a/a/a/j;

    invoke-direct {v1, p0, v2}, Lcom/a/a/a/g;-><init>(Lcom/a/a/a/u;Lcom/a/a/a/j;)V

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/a;->a(Lio/fabric/sdk/android/a$b;)Z

    .line 72
    iget-object v0, p0, Lcom/a/a/a/u;->c:Lcom/a/a/a/j;

    invoke-virtual {v0, p0}, Lcom/a/a/a/j;->a(Lcom/a/a/a/j$a;)V

    .line 74
    invoke-virtual {p0}, Lcom/a/a/a/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-wide v0, p0, Lcom/a/a/a/u;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/u;->a(J)V

    .line 76
    iget-object v0, p0, Lcom/a/a/a/u;->d:Lcom/a/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/a/h;->a()V

    .line 78
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/a/a/a/u;->b:Lio/fabric/sdk/android/a;

    invoke-virtual {v0}, Lio/fabric/sdk/android/a;->a()V

    .line 85
    iget-object v0, p0, Lcom/a/a/a/u;->a:Lcom/a/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/a/e;->a()V

    .line 86
    return-void
.end method

.method d()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/a/a/a/u;->d:Lcom/a/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/a/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
