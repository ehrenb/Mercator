.class Leu/chainfire/libsuperuser/b$c$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/b$c;-><init>(Leu/chainfire/libsuperuser/b$a;Leu/chainfire/libsuperuser/b$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/libsuperuser/b$a;

.field final synthetic b:Leu/chainfire/libsuperuser/b$e;

.field final synthetic c:Leu/chainfire/libsuperuser/b$c;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/b$c;Leu/chainfire/libsuperuser/b$a;Leu/chainfire/libsuperuser/b$e;)V
    .locals 0

    .prologue
    .line 1049
    iput-object p1, p0, Leu/chainfire/libsuperuser/b$c$1;->c:Leu/chainfire/libsuperuser/b$c;

    iput-object p2, p0, Leu/chainfire/libsuperuser/b$c$1;->a:Leu/chainfire/libsuperuser/b$a;

    iput-object p3, p0, Leu/chainfire/libsuperuser/b$c$1;->b:Leu/chainfire/libsuperuser/b$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandResult(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1051
    if-nez p2, :cond_0

    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$1;->c:Leu/chainfire/libsuperuser/b$c;

    .line 1052
    invoke-static {v0}, Leu/chainfire/libsuperuser/b$c;->a(Leu/chainfire/libsuperuser/b$c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$f;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p3, v0}, Leu/chainfire/libsuperuser/b;->a(Ljava/util/List;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    const/4 p2, -0x4

    .line 1056
    :cond_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$1;->c:Leu/chainfire/libsuperuser/b$c;

    iget-object v1, p0, Leu/chainfire/libsuperuser/b$c$1;->a:Leu/chainfire/libsuperuser/b$a;

    invoke-static {v1}, Leu/chainfire/libsuperuser/b$a;->h(Leu/chainfire/libsuperuser/b$a;)I

    move-result v1

    invoke-static {v0, v1}, Leu/chainfire/libsuperuser/b$c;->a(Leu/chainfire/libsuperuser/b$c;I)I

    .line 1057
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$1;->b:Leu/chainfire/libsuperuser/b$e;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, p3}, Leu/chainfire/libsuperuser/b$e;->onCommandResult(IILjava/util/List;)V

    .line 1058
    return-void
.end method
