.class final Lcom/b/b/aq$11;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/aq;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Lcom/b/b/aq;


# direct methods
.method constructor <init>(Lcom/b/b/aq;JJJI)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/b/b/aq$11;->e:Lcom/b/b/aq;

    iput-wide p2, p0, Lcom/b/b/aq$11;->a:J

    iput-wide p4, p0, Lcom/b/b/aq$11;->b:J

    iput-wide p6, p0, Lcom/b/b/aq$11;->c:J

    iput p8, p0, Lcom/b/b/aq$11;->d:I

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    .line 325
    iget-object v1, p0, Lcom/b/b/aq$11;->e:Lcom/b/b/aq;

    iget-wide v2, p0, Lcom/b/b/aq$11;->a:J

    iget-wide v4, p0, Lcom/b/b/aq$11;->b:J

    iget-wide v6, p0, Lcom/b/b/aq$11;->c:J

    iget v8, p0, Lcom/b/b/aq$11;->d:I

    invoke-virtual/range {v1 .. v8}, Lcom/b/b/aq;->a(JJJI)Lcom/b/b/ao;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/b/b/aq$11;->e:Lcom/b/b/aq;

    invoke-static {v1}, Lcom/b/b/aq;->f(Lcom/b/b/aq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 333
    iget-object v1, p0, Lcom/b/b/aq$11;->e:Lcom/b/b/aq;

    invoke-static {v1}, Lcom/b/b/aq;->f(Lcom/b/b/aq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/b/b/aq$11;->e:Lcom/b/b/aq;

    invoke-virtual {v0}, Lcom/b/b/aq;->c()V

    .line 336
    return-void
.end method
