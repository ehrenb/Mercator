.class final Lcom/b/b/aq$16$1;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/aq$16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/aq$16;


# direct methods
.method constructor <init>(Lcom/b/b/aq$16;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/b/b/aq$16$1;->a:Lcom/b/b/aq$16;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/b/b/aq$16$1;->a:Lcom/b/b/aq$16;

    iget-object v0, v0, Lcom/b/b/aq$16;->a:Lcom/b/b/aq;

    const/4 v1, 0x1

    invoke-static {}, Lcom/b/b/as;->a()Lcom/b/b/as;

    invoke-static {}, Lcom/b/b/as;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/b/b/aq;->a(Lcom/b/b/aq;ZJ)V

    .line 181
    return-void
.end method
