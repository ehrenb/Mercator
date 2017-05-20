.class final Lcom/b/b/cg$2;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/b/b/cg;


# direct methods
.method constructor <init>(Lcom/b/b/cg;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/b/b/cg$2;->b:Lcom/b/b/cg;

    iput-object p2, p0, Lcom/b/b/cg$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/b/b/cg$2;->b:Lcom/b/b/cg;

    new-instance v1, Lcom/b/b/ci;

    iget-object v2, p0, Lcom/b/b/cg$2;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/b/b/ci;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/b/b/cg;->c:Lcom/b/b/ci;

    .line 66
    return-void
.end method
