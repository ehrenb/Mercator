.class final Lcom/b/b/aq$10;
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
.field final synthetic a:Lcom/b/b/aq;


# direct methods
.method constructor <init>(Lcom/b/b/aq;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/b/b/aq$10;->a:Lcom/b/b/aq;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/b/b/aq$10;->a:Lcom/b/b/aq;

    invoke-static {v0}, Lcom/b/b/aq;->e(Lcom/b/b/aq;)V

    .line 316
    return-void
.end method
