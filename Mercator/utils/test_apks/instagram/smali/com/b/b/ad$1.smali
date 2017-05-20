.class final Lcom/b/b/ad$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/ad;
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
        "Lcom/b/b/ae;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/ad;


# direct methods
.method constructor <init>(Lcom/b/b/ad;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/b/b/ad$1;->a:Lcom/b/b/ad;

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
            "Lcom/b/b/ae;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/b/b/cn;

    new-instance v1, Lcom/b/b/ae$a;

    invoke-direct {v1}, Lcom/b/b/ae$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/b/b/cn;-><init>(Lcom/b/b/co;)V

    return-object v0
.end method
