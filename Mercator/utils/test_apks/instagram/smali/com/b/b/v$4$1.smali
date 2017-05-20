.class final Lcom/b/b/v$4$1;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/v$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/b/b/v$4;


# direct methods
.method constructor <init>(Lcom/b/b/v$4;[B)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/b/b/v$4$1;->b:Lcom/b/b/v$4;

    iput-object p2, p0, Lcom/b/b/v$4$1;->a:[B

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 442
    iget-object v0, p0, Lcom/b/b/v$4$1;->b:Lcom/b/b/v$4;

    iget-object v0, v0, Lcom/b/b/v$4;->c:Lcom/b/b/v;

    iget-object v1, p0, Lcom/b/b/v$4$1;->b:Lcom/b/b/v$4;

    iget-wide v2, v1, Lcom/b/b/v$4;->a:J

    iget-object v1, p0, Lcom/b/b/v$4$1;->b:Lcom/b/b/v$4;

    iget-boolean v1, v1, Lcom/b/b/v$4;->b:Z

    iget-object v4, p0, Lcom/b/b/v$4$1;->a:[B

    invoke-static {v0, v2, v3, v1, v4}, Lcom/b/b/v;->a(Lcom/b/b/v;JZ[B)V

    .line 443
    return-void
.end method
