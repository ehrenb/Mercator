.class final Lcom/b/b/cg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/bp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/b/bp",
        "<",
        "Lcom/b/b/ay;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/cg;


# direct methods
.method constructor <init>(Lcom/b/b/cg;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/b/b/cg$1;->a:Lcom/b/b/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/b/b/bo;)V
    .locals 4

    .prologue
    .line 40
    check-cast p1, Lcom/b/b/ay;

    .line 1043
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/b/b/cg$1;->a:Lcom/b/b/cg;

    iget-object v1, v1, Lcom/b/b/cg;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNetworkStateChanged : isNetworkEnable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p1, Lcom/b/b/ay;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-boolean v0, p1, Lcom/b/b/ay;->a:Z

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/b/b/cg$1;->a:Lcom/b/b/cg;

    .line 1120
    invoke-virtual {v0}, Lcom/b/b/cg;->b()V

    .line 40
    :cond_0
    return-void
.end method
