.class final Lcom/b/b/aq$6;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/aq;
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
    .line 256
    iput-object p1, p0, Lcom/b/b/aq$6;->a:Lcom/b/b/aq;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/b/b/aq$6;->a:Lcom/b/b/aq;

    const/4 v1, 0x1

    invoke-static {}, Lcom/b/b/as;->a()Lcom/b/b/as;

    invoke-static {}, Lcom/b/b/as;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/b/b/aq;->a(Lcom/b/b/aq;ZJ)V

    .line 260
    return-void
.end method
