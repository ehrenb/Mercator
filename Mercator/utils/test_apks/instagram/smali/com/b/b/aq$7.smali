.class final Lcom/b/b/aq$7;
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
    .line 272
    iput-object p1, p0, Lcom/b/b/aq$7;->a:Lcom/b/b/aq;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 275
    invoke-static {}, Lcom/b/b/a;->a()Lcom/b/b/a;

    move-result-object v0

    .line 1094
    iget-object v0, v0, Lcom/b/b/a;->c:Lcom/b/b/x;

    .line 275
    invoke-virtual {v0}, Lcom/b/b/x;->c()V

    .line 276
    return-void
.end method
