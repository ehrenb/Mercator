.class final Lcom/b/b/ci$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/ci;->e(Ljava/lang/String;)Z
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
.field final synthetic a:Lcom/b/b/ci;


# direct methods
.method constructor <init>(Lcom/b/b/ci;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/b/b/ci$2;->a:Lcom/b/b/ci;

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
    .line 199
    new-instance v0, Lcom/b/b/ch$a;

    invoke-direct {v0}, Lcom/b/b/ch$a;-><init>()V

    return-object v0
.end method
