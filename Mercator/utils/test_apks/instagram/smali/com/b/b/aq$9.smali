.class final Lcom/b/b/aq$9;
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

.field final synthetic b:Lcom/b/b/aq;


# direct methods
.method constructor <init>(Lcom/b/b/aq;J)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/b/b/aq$9;->b:Lcom/b/b/aq;

    iput-wide p2, p0, Lcom/b/b/aq$9;->a:J

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 306
    invoke-static {}, Lcom/b/b/a;->a()Lcom/b/b/a;

    move-result-object v0

    .line 1086
    iget-object v0, v0, Lcom/b/b/a;->a:Lcom/b/b/v;

    .line 306
    iget-wide v2, p0, Lcom/b/b/aq$9;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/b/b/v;->a(J)V

    .line 307
    return-void
.end method
