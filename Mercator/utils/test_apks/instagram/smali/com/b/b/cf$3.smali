.class final Lcom/b/b/cf$3;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/cf;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/cf;


# direct methods
.method constructor <init>(Lcom/b/b/cf;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/b/b/cf$3;->a:Lcom/b/b/cf;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/b/b/cf$3;->a:Lcom/b/b/cf;

    iget-object v1, p0, Lcom/b/b/cf$3;->a:Lcom/b/b/cf;

    invoke-static {v1}, Lcom/b/b/cf;->b(Lcom/b/b/cf;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/b/cf;->b(Ljava/util/List;)V

    .line 64
    iget-object v0, p0, Lcom/b/b/cf$3;->a:Lcom/b/b/cf;

    invoke-static {v0}, Lcom/b/b/cf;->a(Lcom/b/b/cf;)V

    .line 65
    return-void
.end method
