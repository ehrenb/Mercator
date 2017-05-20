.class Leu/chainfire/libsuperuser/b$c$3;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/b$c;->a(Ljava/lang/String;Leu/chainfire/libsuperuser/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/libsuperuser/c$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Leu/chainfire/libsuperuser/b$c;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/b$c;Leu/chainfire/libsuperuser/c$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1387
    iput-object p1, p0, Leu/chainfire/libsuperuser/b$c$3;->c:Leu/chainfire/libsuperuser/b$c;

    iput-object p2, p0, Leu/chainfire/libsuperuser/b$c$3;->a:Leu/chainfire/libsuperuser/c$a;

    iput-object p3, p0, Leu/chainfire/libsuperuser/b$c$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1391
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$3;->a:Leu/chainfire/libsuperuser/c$a;

    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c$3;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Leu/chainfire/libsuperuser/c$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1393
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$3;->c:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$c;->c(Leu/chainfire/libsuperuser/b$c;)V

    .line 1395
    return-void

    .line 1393
    :catchall_0
    move-exception v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c$3;->c:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v1}, Leu/chainfire/libsuperuser/b$c;->c(Leu/chainfire/libsuperuser/b$c;)V

    throw v0
.end method
