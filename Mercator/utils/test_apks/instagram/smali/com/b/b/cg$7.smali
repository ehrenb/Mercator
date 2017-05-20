.class final Lcom/b/b/cg$7;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/cg;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/b/b/cg;


# direct methods
.method constructor <init>(Lcom/b/b/cg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/b/b/cg$7;->c:Lcom/b/b/cg;

    iput-object p2, p0, Lcom/b/b/cg$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/b/b/cg$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 281
    iget-object v0, p0, Lcom/b/b/cg$7;->c:Lcom/b/b/cg;

    iget-object v0, v0, Lcom/b/b/cg;->c:Lcom/b/b/ci;

    iget-object v1, p0, Lcom/b/b/cg$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/b/cg$7;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/b/b/ci;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 283
    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/b/b/cg$7;->c:Lcom/b/b/cg;

    iget-object v0, v0, Lcom/b/b/cg;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal error. Block wasn\'t deleted with id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/b/cg$7;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/b/b/cg$7;->c:Lcom/b/b/cg;

    iget-object v0, v0, Lcom/b/b/cg;->b:Ljava/util/Set;

    iget-object v1, p0, Lcom/b/b/cg$7;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 290
    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/b/b/cg$7;->c:Lcom/b/b/cg;

    iget-object v0, v0, Lcom/b/b/cg;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal error. Block with id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/b/cg$7;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not in progress state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_1
    return-void
.end method
