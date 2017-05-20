.class final Lcom/b/b/ab$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/ab$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/ab$1;


# direct methods
.method constructor <init>(Lcom/b/b/ab$1;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/b/b/ab$1$1;->a:Lcom/b/b/ab$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/b/b/ad;->a()Lcom/b/b/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/ad;->b()V

    .line 60
    return-void
.end method
