.class final Lcom/b/b/aq$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/bp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/b/bp",
        "<",
        "Lcom/b/b/au;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/aq;


# direct methods
.method constructor <init>(Lcom/b/b/aq;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/b/b/aq$16;->a:Lcom/b/b/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/b/b/bo;)V
    .locals 2

    .prologue
    .line 173
    .line 1177
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v1, Lcom/b/b/aq$16$1;

    invoke-direct {v1, p0}, Lcom/b/b/aq$16$1;-><init>(Lcom/b/b/aq$16;)V

    invoke-virtual {v0, v1}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method
