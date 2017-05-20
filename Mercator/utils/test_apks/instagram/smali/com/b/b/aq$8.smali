.class final Lcom/b/b/aq$8;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/aq;->a()V
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
    .line 282
    iput-object p1, p0, Lcom/b/b/aq$8;->a:Lcom/b/b/aq;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lcom/b/b/a;->a()Lcom/b/b/a;

    move-result-object v0

    .line 1086
    iget-object v0, v0, Lcom/b/b/a;->a:Lcom/b/b/v;

    .line 285
    invoke-virtual {v0}, Lcom/b/b/v;->b()V

    .line 286
    return-void
.end method
