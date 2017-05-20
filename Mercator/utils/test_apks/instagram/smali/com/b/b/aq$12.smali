.class final Lcom/b/b/aq$12;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/aq;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/aq;


# direct methods
.method constructor <init>(Lcom/b/b/aq;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/b/b/aq$12;->a:Lcom/b/b/aq;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/b/b/aq$12;->a:Lcom/b/b/aq;

    invoke-static {v0}, Lcom/b/b/aq;->g(Lcom/b/b/aq;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/b/b/a;->a()Lcom/b/b/a;

    move-result-object v0

    .line 1086
    iget-object v0, v0, Lcom/b/b/a;->a:Lcom/b/b/v;

    .line 351
    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lcom/b/b/a;->a()Lcom/b/b/a;

    move-result-object v0

    .line 2086
    iget-object v0, v0, Lcom/b/b/a;->a:Lcom/b/b/v;

    .line 352
    invoke-virtual {v0}, Lcom/b/b/v;->c()V

    .line 356
    :cond_0
    invoke-static {}, Lcom/b/b/a;->a()Lcom/b/b/a;

    move-result-object v0

    .line 2094
    iget-object v0, v0, Lcom/b/b/a;->c:Lcom/b/b/x;

    .line 356
    if-eqz v0, :cond_1

    .line 357
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v1, Lcom/b/b/aq$12$1;

    invoke-direct {v1, p0}, Lcom/b/b/aq$12$1;-><init>(Lcom/b/b/aq$12;)V

    invoke-virtual {v0, v1}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 364
    :cond_1
    return-void
.end method
