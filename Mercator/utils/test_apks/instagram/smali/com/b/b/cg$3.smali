.class final Lcom/b/b/cg$3;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/b/b/cg;


# direct methods
.method constructor <init>(Lcom/b/b/cg;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/b/b/cg$3;->d:Lcom/b/b/cg;

    iput-object p2, p0, Lcom/b/b/cg$3;->a:[B

    iput-object p3, p0, Lcom/b/b/cg$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/b/b/cg$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    .line 114
    iget-object v0, p0, Lcom/b/b/cg$3;->d:Lcom/b/b/cg;

    iget-object v1, p0, Lcom/b/b/cg$3;->a:[B

    iget-object v2, p0, Lcom/b/b/cg$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/b/b/cg$3;->c:Ljava/lang/String;

    .line 2180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/b/b/cg;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1187
    new-instance v3, Lcom/b/b/ch;

    invoke-direct {v3, v1}, Lcom/b/b/ch;-><init>([B)V

    .line 3092
    iget-object v1, v3, Lcom/b/b/ch;->a:Ljava/lang/String;

    .line 1190
    new-instance v4, Lcom/b/b/bn;

    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v5

    .line 3097
    iget-object v5, v5, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 1190
    invoke-static {v1}, Lcom/b/b/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v6, ".yflurrydatasenderblock."

    const/4 v7, 0x1

    new-instance v8, Lcom/b/b/cg$5;

    invoke-direct {v8, v0}, Lcom/b/b/cg$5;-><init>(Lcom/b/b/cg;)V

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/b/b/bn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/b/b/cq;)V

    .line 1197
    invoke-virtual {v4, v3}, Lcom/b/b/bn;->a(Ljava/lang/Object;)V

    .line 1198
    const/4 v4, 0x5

    iget-object v5, v0, Lcom/b/b/cg;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Saving Block File "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v7

    .line 4097
    iget-object v7, v7, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 1198
    invoke-static {v1}, Lcom/b/b/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1200
    iget-object v0, v0, Lcom/b/b/cg;->c:Lcom/b/b/ci;

    invoke-virtual {v0, v3, v2}, Lcom/b/b/ci;->a(Lcom/b/b/ch;Ljava/lang/String;)V

    .line 115
    return-void
.end method
