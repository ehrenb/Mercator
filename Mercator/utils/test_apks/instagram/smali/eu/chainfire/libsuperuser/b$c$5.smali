.class Leu/chainfire/libsuperuser/b$c$5;
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
    .line 1499
    iput-object p1, p0, Leu/chainfire/libsuperuser/b$c$5;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1502
    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c$5;->a:Leu/chainfire/libsuperuser/b$c;

    monitor-enter v1

    .line 1503
    :try_start_0
    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c$5;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v2}, Leu/chainfire/libsuperuser/b$c;->d(Leu/chainfire/libsuperuser/b$c;)Leu/chainfire/libsuperuser/b$b;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1504
    monitor-exit v1

    .line 1537
    :goto_0
    return-void

    .line 1510
    :cond_0
    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c$5;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v2}, Leu/chainfire/libsuperuser/b$c;->d(Leu/chainfire/libsuperuser/b$c;)Leu/chainfire/libsuperuser/b$b;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/libsuperuser/b$b;->c(Leu/chainfire/libsuperuser/b$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1511
    if-nez v2, :cond_3

    .line 1519
    :goto_1
    if-eqz v0, :cond_1

    .line 1520
    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c$5;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v2, v0}, Leu/chainfire/libsuperuser/b$c;->a(Leu/chainfire/libsuperuser/b$c;Ljava/lang/String;)V

    .line 1521
    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c$5;->a:Leu/chainfire/libsuperuser/b$c;

    iget-object v3, p0, Leu/chainfire/libsuperuser/b$c$5;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v3}, Leu/chainfire/libsuperuser/b$c;->e(Leu/chainfire/libsuperuser/b$c;)Leu/chainfire/libsuperuser/c$a;

    move-result-object v3

    invoke-static {v2, v0, v3}, Leu/chainfire/libsuperuser/b$c;->a(Leu/chainfire/libsuperuser/b$c;Ljava/lang/String;Leu/chainfire/libsuperuser/c$a;)V

    .line 1522
    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c$5;->a:Leu/chainfire/libsuperuser/b$c;

    iget-object v3, p0, Leu/chainfire/libsuperuser/b$c$5;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v3}, Leu/chainfire/libsuperuser/b$c;->d(Leu/chainfire/libsuperuser/b$c;)Leu/chainfire/libsuperuser/b$b;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/libsuperuser/b$b;->d(Leu/chainfire/libsuperuser/b$b;)Leu/chainfire/libsuperuser/b$d;

    move-result-object v3

    invoke-static {v2, v0, v3}, Leu/chainfire/libsuperuser/b$c;->a(Leu/chainfire/libsuperuser/b$c;Ljava/lang/String;Leu/chainfire/libsuperuser/c$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1525
    :cond_1
    if-eqz p1, :cond_2

    .line 1527
    :try_start_1
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$5;->a:Leu/chainfire/libsuperuser/b$c;

    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c$5;->a:Leu/chainfire/libsuperuser/b$c;

    .line 1528
    invoke-static {v2}, Leu/chainfire/libsuperuser/b$c;->d(Leu/chainfire/libsuperuser/b$c;)Leu/chainfire/libsuperuser/b$b;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/libsuperuser/b$b;->c(Leu/chainfire/libsuperuser/b$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    .line 1527
    invoke-static {v2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Leu/chainfire/libsuperuser/b$c;->b(Leu/chainfire/libsuperuser/b$c;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1533
    :goto_2
    :try_start_2
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$5;->a:Leu/chainfire/libsuperuser/b$c;

    iget-object v2, p0, Leu/chainfire/libsuperuser/b$c$5;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v2}, Leu/chainfire/libsuperuser/b$c;->d(Leu/chainfire/libsuperuser/b$c;)Leu/chainfire/libsuperuser/b$b;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/libsuperuser/b$b;->c(Leu/chainfire/libsuperuser/b$b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Leu/chainfire/libsuperuser/b$c;->b(Leu/chainfire/libsuperuser/b$c;Ljava/lang/String;)Ljava/lang/String;

    .line 1534
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$5;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$c;->f(Leu/chainfire/libsuperuser/b$c;)V

    .line 1536
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1514
    :cond_3
    if-lez v2, :cond_4

    .line 1515
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1516
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1529
    :catch_0
    move-exception v0

    .line 1531
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_4
    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_1
.end method
