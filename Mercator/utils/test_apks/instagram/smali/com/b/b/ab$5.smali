.class final Lcom/b/b/ab$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/ab;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/ab;


# direct methods
.method constructor <init>(Lcom/b/b/ab;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/b/b/ab$5;->a:Lcom/b/b/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 321
    invoke-static {}, Lcom/b/b/ab;->a()Lcom/b/b/ab;

    invoke-static {}, Lcom/b/b/ab;->b()Ljava/util/List;

    move-result-object v0

    .line 323
    sget-object v1, Lcom/b/b/ab;->d:Lcom/b/b/bn;

    if-nez v1, :cond_0

    .line 324
    invoke-static {}, Lcom/b/b/ab;->e()V

    .line 327
    :cond_0
    sget-object v1, Lcom/b/b/ab;->d:Lcom/b/b/bn;

    invoke-virtual {v1, v0}, Lcom/b/b/bn;->a(Ljava/lang/Object;)V

    .line 328
    return-void
.end method
