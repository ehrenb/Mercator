.class final Lcom/b/b/v$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/v;-><init>()V
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
        "Lcom/b/b/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/v;


# direct methods
.method constructor <init>(Lcom/b/b/v;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/b/b/v$9;->a:Lcom/b/b/v;

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
            "Lcom/b/b/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/b/b/t$a;

    invoke-direct {v0}, Lcom/b/b/t$a;-><init>()V

    return-object v0
.end method
