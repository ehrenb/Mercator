.class final Lcom/b/b/cg$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/cg;
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
        "Lcom/b/b/ch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/cg;


# direct methods
.method constructor <init>(Lcom/b/b/cg;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/b/b/cg$5;->a:Lcom/b/b/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/b/b/co;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/b/b/co",
            "<",
            "Lcom/b/b/ch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lcom/b/b/ch$a;

    invoke-direct {v0}, Lcom/b/b/ch$a;-><init>()V

    return-object v0
.end method
