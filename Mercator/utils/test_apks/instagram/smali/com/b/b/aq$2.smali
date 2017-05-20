.class final Lcom/b/b/aq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/cq;


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
        "Lcom/b/b/cq",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/b/b/ao;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/aq;


# direct methods
.method constructor <init>(Lcom/b/b/aq;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/b/b/aq$2;->a:Lcom/b/b/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/b/b/co;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/b/b/co",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/b/b/ao;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lcom/b/b/cn;

    new-instance v1, Lcom/b/b/ao$a;

    invoke-direct {v1}, Lcom/b/b/ao$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/b/b/cn;-><init>(Lcom/b/b/co;)V

    return-object v0
.end method
