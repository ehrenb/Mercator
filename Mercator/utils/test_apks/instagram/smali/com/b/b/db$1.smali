.class final Lcom/b/b/db$1;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/db;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/db;


# direct methods
.method constructor <init>(Lcom/b/b/db;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/b/b/db$1;->a:Lcom/b/b/db;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 20
    new-instance v0, Lcom/b/b/cz;

    invoke-direct {v0}, Lcom/b/b/cz;-><init>()V

    .line 1025
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/b/bq;->a(Lcom/b/b/bo;)V

    .line 23
    iget-object v0, p0, Lcom/b/b/db$1;->a:Lcom/b/b/db;

    .line 2011
    iget-boolean v0, v0, Lcom/b/b/db;->b:Z

    .line 23
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/b/db$1;->a:Lcom/b/b/db;

    .line 3011
    iget-boolean v0, v0, Lcom/b/b/db;->c:Z

    .line 23
    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/b/b/db$1;->a:Lcom/b/b/db;

    .line 4011
    iget-object v1, v1, Lcom/b/b/db;->d:Lcom/b/b/dh;

    .line 24
    iget-object v2, p0, Lcom/b/b/db$1;->a:Lcom/b/b/db;

    .line 5011
    iget-wide v2, v2, Lcom/b/b/db;->a:J

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lcom/b/b/bg;->a(Ljava/lang/Runnable;J)V

    .line 26
    :cond_0
    return-void
.end method
