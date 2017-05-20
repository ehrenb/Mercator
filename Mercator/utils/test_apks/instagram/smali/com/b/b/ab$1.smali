.class final Lcom/b/b/ab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/bp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/ab;
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
.field final synthetic a:Lcom/b/b/ab;


# direct methods
.method constructor <init>(Lcom/b/b/ab;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/b/b/ab$1;->a:Lcom/b/b/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/b/b/bo;)V
    .locals 4

    .prologue
    .line 50
    check-cast p1, Lcom/b/b/ay;

    .line 1053
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/b/b/ab$1;->a:Lcom/b/b/ab;

    invoke-static {v1}, Lcom/b/b/ab;->a(Lcom/b/b/ab;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNetworkStateChanged : isNetworkEnable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p1, Lcom/b/b/ay;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-boolean v0, p1, Lcom/b/b/ay;->a:Z

    if-eqz v0, :cond_0

    .line 1056
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v1, Lcom/b/b/ab$1$1;

    invoke-direct {v1, p0}, Lcom/b/b/ab$1$1;-><init>(Lcom/b/b/ab$1;)V

    invoke-virtual {v0, v1}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 50
    :cond_0
    return-void
.end method
