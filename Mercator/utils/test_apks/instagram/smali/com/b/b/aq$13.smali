.class final Lcom/b/b/aq$13;
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
.field final synthetic a:J

.field final synthetic b:Lcom/b/b/aq;


# direct methods
.method constructor <init>(Lcom/b/b/aq;J)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/b/b/aq$13;->b:Lcom/b/b/aq;

    iput-wide p2, p0, Lcom/b/b/aq$13;->a:J

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/b/b/aq$13;->b:Lcom/b/b/aq;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/b/b/aq$13;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/b/b/aq;->a(Lcom/b/b/aq;ZJ)V

    .line 374
    return-void
.end method
