.class final Lcom/b/b/ca$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/cc$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/ca;


# direct methods
.method constructor <init>(Lcom/b/b/ca;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/b/b/ca$1;->a:Lcom/b/b/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/b/cc;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/b/b/ca$1;->a:Lcom/b/b/ca;

    invoke-static {v0}, Lcom/b/b/ca;->d(Lcom/b/b/ca;)V

    .line 90
    return-void
.end method

.method public final a(Lcom/b/b/cc;Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/b/b/cc;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/b/b/ca$1;->a:Lcom/b/b/ca;

    invoke-static {v0}, Lcom/b/b/ca;->c(Lcom/b/b/ca;)Lcom/b/b/co;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/b/b/ca$1;->a:Lcom/b/b/ca;

    iget-object v1, p0, Lcom/b/b/ca$1;->a:Lcom/b/b/ca;

    invoke-static {v1}, Lcom/b/b/ca;->c(Lcom/b/b/ca;)Lcom/b/b/co;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/b/b/co;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/b/ca;->a(Lcom/b/b/ca;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/b/b/ca$1;->a:Lcom/b/b/ca;

    invoke-static {v0}, Lcom/b/b/ca;->a(Lcom/b/b/ca;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/b/ca$1;->a:Lcom/b/b/ca;

    invoke-static {v0}, Lcom/b/b/ca;->b(Lcom/b/b/ca;)Lcom/b/b/co;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/b/b/ca$1;->a:Lcom/b/b/ca;

    invoke-static {v0}, Lcom/b/b/ca;->b(Lcom/b/b/ca;)Lcom/b/b/co;

    move-result-object v0

    iget-object v1, p0, Lcom/b/b/ca$1;->a:Lcom/b/b/ca;

    invoke-static {v1}, Lcom/b/b/ca;->a(Lcom/b/b/ca;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/b/b/co;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method
