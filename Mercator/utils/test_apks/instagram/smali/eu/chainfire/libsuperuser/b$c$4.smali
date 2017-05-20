.class Leu/chainfire/libsuperuser/b$c$4;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/b$c;->a(Leu/chainfire/libsuperuser/b$b;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/libsuperuser/b$b;

.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Leu/chainfire/libsuperuser/b$c;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/b$c;Leu/chainfire/libsuperuser/b$b;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 1440
    iput-object p1, p0, Leu/chainfire/libsuperuser/b$c$4;->d:Leu/chainfire/libsuperuser/b$c;

    iput-object p2, p0, Leu/chainfire/libsuperuser/b$c$4;->a:Leu/chainfire/libsuperuser/b$b;

    iput p3, p0, Leu/chainfire/libsuperuser/b$c$4;->b:I

    iput-object p4, p0, Leu/chainfire/libsuperuser/b$c$4;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1444
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$4;->a:Leu/chainfire/libsuperuser/b$b;

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$b;->b(Leu/chainfire/libsuperuser/b$b;)Leu/chainfire/libsuperuser/b$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$4;->a:Leu/chainfire/libsuperuser/b$b;

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$b;->b(Leu/chainfire/libsuperuser/b$b;)Leu/chainfire/libsuperuser/b$e;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c$4;->a:Leu/chainfire/libsuperuser/b$b;

    invoke-static {v1}, Leu/chainfire/libsuperuser/b$b;->e(Leu/chainfire/libsuperuser/b$b;)I

    move-result v1

    iget v2, p0, Leu/chainfire/libsuperuser/b$c$4;->b:I

    iget-object v3, p0, Leu/chainfire/libsuperuser/b$c$4;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Leu/chainfire/libsuperuser/b$e;->onCommandResult(IILjava/util/List;)V

    .line 1447
    :cond_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$4;->a:Leu/chainfire/libsuperuser/b$b;

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$b;->d(Leu/chainfire/libsuperuser/b$b;)Leu/chainfire/libsuperuser/b$d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1448
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$4;->a:Leu/chainfire/libsuperuser/b$b;

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$b;->d(Leu/chainfire/libsuperuser/b$b;)Leu/chainfire/libsuperuser/b$d;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c$4;->a:Leu/chainfire/libsuperuser/b$b;

    .line 1449
    invoke-static {v1}, Leu/chainfire/libsuperuser/b$b;->e(Leu/chainfire/libsuperuser/b$b;)I

    move-result v1

    iget v2, p0, Leu/chainfire/libsuperuser/b$c$4;->b:I

    invoke-interface {v0, v1, v2}, Leu/chainfire/libsuperuser/b$d;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1451
    :cond_1
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$4;->d:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$c;->c(Leu/chainfire/libsuperuser/b$c;)V

    .line 1453
    return-void

    .line 1451
    :catchall_0
    move-exception v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c$4;->d:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v1}, Leu/chainfire/libsuperuser/b$c;->c(Leu/chainfire/libsuperuser/b$c;)V

    throw v0
.end method
