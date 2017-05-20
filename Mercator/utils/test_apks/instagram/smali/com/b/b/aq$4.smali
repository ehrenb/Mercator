.class final Lcom/b/b/aq$4;
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
    .line 240
    iput-object p1, p0, Lcom/b/b/aq$4;->a:Lcom/b/b/aq;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/b/b/aq$4;->a:Lcom/b/b/aq;

    invoke-static {v0}, Lcom/b/b/aq;->c(Lcom/b/b/aq;)V

    .line 244
    return-void
.end method
