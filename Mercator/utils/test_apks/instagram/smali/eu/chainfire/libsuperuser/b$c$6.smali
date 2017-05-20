.class Leu/chainfire/libsuperuser/b$c$6;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/b$c;->k()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/libsuperuser/b$c;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/b$c;)V
    .locals 0

    .prologue
    .line 1540
    iput-object p1, p0, Leu/chainfire/libsuperuser/b$c$6;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1543
    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c$6;->a:Leu/chainfire/libsuperuser/b$c;

    monitor-enter v1

    .line 1544
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$6;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$c;->d(Leu/chainfire/libsuperuser/b$c;)Leu/chainfire/libsuperuser/b$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1545
    monitor-exit v1

    .line 1568
    :goto_0
    return-void

    .line 1550
    :cond_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$6;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$c;->d(Leu/chainfire/libsuperuser/b$c;)Leu/chainfire/libsuperuser/b$b;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$b;->c(Leu/chainfire/libsuperuser/b$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1551
    if-nez v0, :cond_5

    .line 1552
    const/4 p1, 0x0

    .line 1557
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    .line 1558
    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c$6;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v2}, Leu/chainfire/libsuperuser/b$c;->g(Leu/chainfire/libsuperuser/b$c;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1559
    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c$6;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v2, p1}, Leu/chainfire/libsuperuser/b$c;->a(Leu/chainfire/libsuperuser/b$c;Ljava/lang/String;)V

    .line 1560
    :cond_2
    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c$6;->a:Leu/chainfire/libsuperuser/b$c;

    iget-object v3, p0, Leu/chainfire/libsuperuser/b$c$6;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v3}, Leu/chainfire/libsuperuser/b$c;->h(Leu/chainfire/libsuperuser/b$c;)Leu/chainfire/libsuperuser/c$a;

    move-result-object v3

    invoke-static {v2, p1, v3}, Leu/chainfire/libsuperuser/b$c;->a(Leu/chainfire/libsuperuser/b$c;Ljava/lang/String;Leu/chainfire/libsuperuser/c$a;)V

    .line 1563
    :cond_3
    if-ltz v0, :cond_4

    .line 1564
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$6;->a:Leu/chainfire/libsuperuser/b$c;

    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c$6;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v2}, Leu/chainfire/libsuperuser/b$c;->d(Leu/chainfire/libsuperuser/b$c;)Leu/chainfire/libsuperuser/b$b;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/libsuperuser/b$b;->c(Leu/chainfire/libsuperuser/b$b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Leu/chainfire/libsuperuser/b$c;->c(Leu/chainfire/libsuperuser/b$c;Ljava/lang/String;)Ljava/lang/String;

    .line 1565
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$6;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$c;->f(Leu/chainfire/libsuperuser/b$c;)V

    .line 1567
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1553
    :cond_5
    if-lez v0, :cond_1

    .line 1554
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    goto :goto_1
.end method
