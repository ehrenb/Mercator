.class final Lcom/b/b/ab$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/ab;->l()V
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
        "Lcom/b/b/ac;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 511
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
            "Lcom/b/b/ac;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 515
    new-instance v0, Lcom/b/b/cn;

    new-instance v1, Lcom/b/b/ac$a;

    invoke-direct {v1}, Lcom/b/b/ac$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/b/b/cn;-><init>(Lcom/b/b/co;)V

    return-object v0
.end method
