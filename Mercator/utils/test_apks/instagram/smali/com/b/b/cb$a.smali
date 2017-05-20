.class final Lcom/b/b/cb$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/cb;


# direct methods
.method private constructor <init>(Lcom/b/b/cb;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/b/b/cb$a;->a:Lcom/b/b/cb;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/b/cb;B)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/b/b/cb$a;-><init>(Lcom/b/b/cb;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 52
    invoke-static {}, Lcom/b/b/cb;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpRequest timed out. Cancelling."

    invoke-static {v6, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/b/b/cb$a;->a:Lcom/b/b/cb;

    invoke-static {v0}, Lcom/b/b/cb;->a(Lcom/b/b/cb;)Lcom/b/b/cc;

    move-result-object v0

    .line 1244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/b/b/cc;->m:J

    sub-long/2addr v2, v4

    .line 1245
    sget-object v1, Lcom/b/b/cc;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Timeout ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MS) for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/b/b/cc;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1247
    const/16 v1, 0x275

    iput v1, v0, Lcom/b/b/cc;->p:I

    .line 1249
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/b/b/cc;->t:Z

    .line 1252
    invoke-virtual {v0}, Lcom/b/b/cc;->h()V

    .line 1255
    invoke-virtual {v0}, Lcom/b/b/cc;->f()V

    .line 55
    return-void
.end method
