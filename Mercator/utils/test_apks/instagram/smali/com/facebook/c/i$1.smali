.class Lcom/facebook/c/i$1;
.super Ljava/lang/Object;
.source "FacebookWebFallbackDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/c/i;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/c/i;


# direct methods
.method constructor <init>(Lcom/facebook/c/i;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/facebook/c/i$1;->a:Lcom/facebook/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/c/i$1;->a:Lcom/facebook/c/i;

    invoke-static {v0}, Lcom/facebook/c/i;->a(Lcom/facebook/c/i;)V

    .line 145
    return-void
.end method
